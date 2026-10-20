Color Palette Generator API
============

Color Palette Generator produces harmonious color schemes from any HEX base color. It returns color codes in HEX and RGB formats, naming matches, dark-mode flags, and recommended text colors.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-colorpalettegenerator.svg)](https://pypi.org/project/apiverve-colorpalettegenerator/)

This is a Python wrapper for the [Color Palette Generator API](https://apiverve.com/marketplace/colorpalette?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-colorpalettegenerator
```

Using `pip3`:

```bash
pip3 install apiverve-colorpalettegenerator
```

---

## Configuration

Before using the Color Palette Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_colorpalettegenerator.apiClient import ColorpaletteAPIClient

# Initialize the client with your APIVerve API key
api = ColorpaletteAPIClient("[YOUR_API_KEY]")

query = {
    "color": "FF5733",
    "scheme": "triade",
    "variation": "default",
    "count": 5,
    "distance": 0.5,
    "addComplement": true,
    "webSafe": 
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Color Palette Generator API documentation is found here: [https://docs.apiverve.com/ref/colorpalette](https://docs.apiverve.com/ref/colorpalette?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_colorpalettegenerator.apiClient import ColorpaletteAPIClient

# Initialize the client with your APIVerve API key
api = ColorpaletteAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "color": "FF5733",
    "scheme": "triade",
    "variation": "default",
    "count": 5,
    "distance": 0.5,
    "addComplement": true,
    "webSafe": 
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "source": "#FF5733",
    "sourceName": "Outrageous Orange",
    "hue": 11,
    "scheme": "triade",
    "variation": "soft",
    "distance": 0.5,
    "colorCount": 5,
    "colorPalette": [
      {
        "hex": "#CC988F",
        "name": "Oriental Pink",
        "rgb": {
          "r": 204,
          "g": 152,
          "b": 143
        },
        "hsl": {
          "h": 9,
          "s": 37,
          "l": 68
        },
        "luminance": 0.373,
        "isDark": true,
        "textColor": "#FFFFFF",
        "accessibility": {
          "contrastWithWhite": 2.48,
          "contrastWithBlack": 8.46,
          "wcagAANormal": false,
          "wcagAALarge": false,
          "wcagAAA": false
        }
      },
      {
        "hex": "#805F59",
        "name": "Russett",
        "rgb": {
          "r": 128,
          "g": 95,
          "b": 89
        },
        "hsl": {
          "h": 9,
          "s": 18,
          "l": 43
        },
        "luminance": 0.135,
        "isDark": true,
        "textColor": "#FFFFFF",
        "accessibility": {
          "contrastWithWhite": 5.68,
          "contrastWithBlack": 3.7,
          "wcagAANormal": true,
          "wcagAALarge": true,
          "wcagAAA": false
        }
      },
      {
        "hex": "#E6D2CF",
        "name": "Dust Storm",
        "rgb": {
          "r": 230,
          "g": 210,
          "b": 207
        },
        "hsl": {
          "h": 8,
          "s": 32,
          "l": 86
        },
        "luminance": 0.674,
        "isDark": false,
        "textColor": "#000000",
        "accessibility": {
          "contrastWithWhite": 1.45,
          "contrastWithBlack": 14.48,
          "wcagAANormal": true,
          "wcagAALarge": true,
          "wcagAAA": true
        }
      },
      {
        "hex": "#BF6E60",
        "name": "Contessa",
        "rgb": {
          "r": 191,
          "g": 110,
          "b": 96
        },
        "hsl": {
          "h": 9,
          "s": 43,
          "l": 56
        },
        "luminance": 0.231,
        "isDark": true,
        "textColor": "#FFFFFF",
        "accessibility": {
          "contrastWithWhite": 3.74,
          "contrastWithBlack": 5.61,
          "wcagAANormal": false,
          "wcagAALarge": true,
          "wcagAAA": false
        }
      },
      {
        "hex": "#A2CC8F",
        "name": "Pine Glade",
        "rgb": {
          "r": 162,
          "g": 204,
          "b": 143
        },
        "hsl": {
          "h": 101,
          "s": 37,
          "l": 68
        },
        "luminance": 0.529,
        "isDark": false,
        "textColor": "#000000",
        "accessibility": {
          "contrastWithWhite": 1.82,
          "contrastWithBlack": 11.57,
          "wcagAANormal": true,
          "wcagAALarge": true,
          "wcagAAA": true
        }
      }
    ],
    "colorPaletteRaw": [
      "cc988f",
      "805f59",
      "e6d2cf",
      "bf6e60",
      "a2cc8f"
    ],
    "css": ":root {\n  --primary: #CC988F;\n  --primary-rgb: 204, 152, 143;\n  --secondary: #805F59;\n  --secondary-rgb: 128, 95, 89;\n  --tertiary: #E6D2CF;\n  --tertiary-rgb: 230, 210, 207;\n  --quaternary: #BF6E60;\n  --quaternary-rgb: 191, 110, 96;\n  --quinary: #A2CC8F;\n  --quinary-rgb: 162, 204, 143;\n}",
    "image": {
      "imageName": "6ee29826-a52f-4c87-86f5-bef3b49f0dbb_palette.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/colorpalette/6ee29826-a52f-4c87-86f5-bef3b49f0dbb_palette.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010083&Signature=Boef5OapaNmcyp0F8bGmf%2BVfQk3zQkiWcw1THBfbsevtYGZnOuzr7xKDRlk9FYiHidSoMz6wjody2ymL7GzUoHkDvA8PEdSERhAq2z9St5yWlaX1c87KoNh%2FtCQEJqHixYk039NuYyb%2FhJu18JFY1RNrOfo8OPZEn9a3ICQdTDL0fYQEZEBxnDuc%2B7wvn4q9UFWhCJcf302HcoZoCw76AzrgVRu%2FazuahqHdVWMR1K5QTV3U51lSoqC23ERHjRZ6uZB8W0bCO65qBFrRNzWEPSVCC%2F8oafvvitZwB1YCG674q3MbtRhWXIhX2zdoPCT%2BgxL7E4fgIyXDtDLm5%2Bm%2Fsg%3D%3D",
      "expires": 1766010083748
    }
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `ColorpaletteAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_colorpalettegenerator.apiClient import ColorpaletteAPIClient, ColorpaletteAPIClientError

api = ColorpaletteAPIClient("[YOUR_API_KEY]")

query = {
    "color": "FF5733",
    "scheme": "triade",
    "variation": "default",
    "count": 5,
    "distance": 0.5,
    "addComplement": true,
    "webSafe": 
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except ColorpaletteAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_colorpalettegenerator.apiClient import ColorpaletteAPIClient, ColorpaletteAPIClientError

api = ColorpaletteAPIClient("[YOUR_API_KEY]")

query = {
    "color": "FF5733",
    "scheme": "triade",
    "variation": "default",
    "count": 5,
    "distance": 0.5,
    "addComplement": true,
    "webSafe": 
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except ColorpaletteAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_colorpalettegenerator.apiClient import ColorpaletteAPIClient, ColorpaletteAPIClientError

query = {
    "color": "FF5733",
    "scheme": "triade",
    "variation": "default",
    "count": 5,
    "distance": 0.5,
    "addComplement": true,
    "webSafe": 
}

# Using context manager ensures proper cleanup
with ColorpaletteAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except ColorpaletteAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_colorpalettegenerator.apiClient import ColorpaletteAPIClient

# Enable debug mode
api = ColorpaletteAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "color": "FF5733",
    "scheme": "triade",
    "variation": "default",
    "count": 5,
    "distance": 0.5,
    "addComplement": true,
    "webSafe": 
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_colorpalettegenerator.apiClient import ColorpaletteAPIClient

api = ColorpaletteAPIClient("[YOUR_API_KEY]")

query = {
    "color": "FF5733",
    "scheme": "triade",
    "variation": "default",
    "count": 5,
    "distance": 0.5,
    "addComplement": true,
    "webSafe": 
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
