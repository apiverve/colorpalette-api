ColorPaletteGenerator API
============

Color Palette is a powerful tool for generating harmonious color palettes. Generate color schemes (mono, contrast, triade, tetrade, analogic) with accessibility data, CSS exports, and palette images.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [ColorPaletteGenerator API](https://apiverve.com/marketplace/colorpalette?utm_source=nuget&utm_medium=readme)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.ColorPaletteGenerator
```

Using the Package Manager:
```
nuget install APIVerve.API.ColorPaletteGenerator
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.ColorPaletteGenerator
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.ColorPaletteGenerator"
5. Click on the APIVerve.API.ColorPaletteGenerator package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the colorpalette API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.ColorPaletteGenerator;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The ColorPaletteGenerator API documentation is found here: [https://docs.apiverve.com/ref/colorpalette](https://docs.apiverve.com/ref/colorpalette?utm_source=nuget&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
ColorPaletteGenerator API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.ColorPaletteGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve.API.ColorPaletteGenerator;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.ColorPaletteGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve.API.ColorPaletteGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new ColorPaletteGeneratorQueryOptions {
    Color = "FF5733",
    Scheme = "triade",
    Variation = "default",
    Count = 5,
    Distance = 0.5,
    AddComplement = true,
    WebSafe = 
};

using (var apiClient = new ColorPaletteGeneratorAPIClient("[YOUR_API_KEY]"))
{
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
