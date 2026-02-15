// Package colorpalette provides a Go client for the Color Palette Generator API.
//
// For more information, visit: https://apiverve.com/marketplace/colorpalette?utm_source=go&utm_medium=readme
package colorpalette

import (
	"errors"
	"fmt"
	"time"

	"github.com/go-resty/resty/v2"
)

const (
	baseURL        = "https://api.apiverve.com/v1/colorpalette"
	defaultTimeout = 30 * time.Second
)

// Client is the Color Palette Generator API client.
type Client struct {
	apiKey     string
	httpClient *resty.Client
}

// NewClient creates a new Color Palette Generator API client.
func NewClient(apiKey string) *Client {
	client := resty.New()
	client.SetTimeout(defaultTimeout)
	client.SetHeader("Content-Type", "application/json")

	return &Client{
		apiKey:     apiKey,
		httpClient: client,
	}
}

// SetTimeout sets the HTTP client timeout.
func (c *Client) SetTimeout(timeout time.Duration) {
	c.httpClient.SetTimeout(timeout)
}


// Execute makes a request to the Color Palette Generator API with typed parameters.
//
// Parameters are validated before sending the request. If validation fails,
// an error is returned immediately without making a network request.
//
// Available parameters:
//   - color (required): string - The base color to generate the palette from (HEX format without #) [format: hexColor]
//   - scheme: string - The color scheme type
//   - variation: string - The color variation
//   - count: integer - Number of colors to return (1-16). Free tier limited to 5 colors [min: 1, max: 16]
//   - distance: number - Color spacing distance (0-1). Affects triade, tetrade, and analogic schemes [min: 0, max: 1]
//   - addComplement: boolean - Add complement color to analogic scheme
//   - webSafe: boolean - Return web-safe colors only
func (c *Client) Execute(req *Request) (*Response, error) {
	if c.apiKey == "" {
		return nil, errors.New("API key is required. Get your API key at: https://apiverve.com")
	}

	// Validate parameters before making request
	if req != nil {
		if err := req.Validate(); err != nil {
			return nil, err
		}
	}

	request := c.httpClient.R().
		SetHeader("x-api-key", c.apiKey).
		SetResult(&Response{}).
		SetError(&ErrorResponse{})

	// GET request with query parameters
	if req != nil {
		request.SetQueryParams(req.ToQueryParams())
	}
	resp, err := request.Get(baseURL)

	if err != nil {
		return nil, fmt.Errorf("request failed: %w", err)
	}

	if resp.IsError() {
		if errResp, ok := resp.Error().(*ErrorResponse); ok {
			return nil, fmt.Errorf("API error: %s", errResp.Error)
		}
		return nil, fmt.Errorf("API error: status %d", resp.StatusCode())
	}

	result, ok := resp.Result().(*Response)
	if !ok {
		return nil, errors.New("failed to parse response")
	}

	return result, nil
}

// ExecuteRaw makes a request with a raw map of parameters (for dynamic usage).
func (c *Client) ExecuteRaw(params map[string]interface{}) (*Response, error) {
	if c.apiKey == "" {
		return nil, errors.New("API key is required. Get your API key at: https://apiverve.com")
	}

	request := c.httpClient.R().
		SetHeader("x-api-key", c.apiKey).
		SetResult(&Response{}).
		SetError(&ErrorResponse{})

	if params != nil {
		queryParams := make(map[string]string)
		for k, v := range params {
			queryParams[k] = fmt.Sprintf("%v", v)
		}
		request.SetQueryParams(queryParams)
	}
	resp, err := request.Get(baseURL)

	if err != nil {
		return nil, fmt.Errorf("request failed: %w", err)
	}

	if resp.IsError() {
		if errResp, ok := resp.Error().(*ErrorResponse); ok {
			return nil, fmt.Errorf("API error: %s", errResp.Error)
		}
		return nil, fmt.Errorf("API error: status %d", resp.StatusCode())
	}

	result, ok := resp.Result().(*Response)
	if !ok {
		return nil, errors.New("failed to parse response")
	}

	return result, nil
}

// Response represents the API response.
type Response struct {
	Status string       `json:"status"`
	Error  interface{}  `json:"error"`
	Data   ResponseData `json:"data"`
}

// ErrorResponse represents an error response from the API.
type ErrorResponse struct {
	Status string `json:"status"`
	Error  string `json:"error"`
}
