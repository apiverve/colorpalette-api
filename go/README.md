# Color Palette Generator API - Go Client

Color Palette is a powerful tool for generating harmonious color palettes. Generate color schemes (mono, contrast, triade, tetrade, analogic) with accessibility data, CSS exports, and palette images.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Go client for the [Color Palette Generator API](https://apiverve.com/marketplace/colorpalette?utm_source=go&utm_medium=readme)

---

## Installation

```bash
go get github.com/apiverve/colorpalette-api/go
```

---

## Configuration

Before using the Color Palette Generator API client, you need to obtain your API key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=go&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=go&utm_medium=readme)

The Color Palette Generator API documentation is found here: [https://docs.apiverve.com/ref/colorpalette](https://docs.apiverve.com/ref/colorpalette?utm_source=go&utm_medium=readme)

---

## Usage

```go
package main

import (
    "fmt"
    "log"

    "github.com/apiverve/colorpalette-api/go"
)

func main() {
    // Create a new client
    client := colorpalette.NewClient("YOUR_API_KEY")

    // Set up parameters
    params := map[string]interface{}{
        "color": "FF5733",
        "scheme": "triade",
        "variation": "default",
        "count": 5,
        "distance": 0.5,
        "addComplement": true,
        "webSafe": 
    }

    // Make the request
    response, err := client.Execute(params)
    if err != nil {
        log.Fatal(err)
    }

    fmt.Printf("Status: %s\n", response.Status)
    fmt.Printf("Data: %+v\n", response.Data)
}
```

---

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "source": "#FF5733",
    "hue": 11,
    "variation": "soft",
    "colorPalette": [
      {
        "hex": "#cc988f",
        "name": "Oriental Pink"
      },
      {
        "hex": "#805f59",
        "name": "Russett"
      },
      {
        "hex": "#e6d2cf",
        "name": "Dust Storm"
      },
      {
        "hex": "#bf6e60",
        "name": "Contessa"
      },
      {
        "hex": "#a2cc8f",
        "name": "Pine Glade"
      },
      {
        "hex": "#658059",
        "name": "Glade Green"
      },
      {
        "hex": "#d6e6cf",
        "name": "Willow Brook"
      },
      {
        "hex": "#7dbf60",
        "name": "Mantis"
      },
      {
        "hex": "#607b89",
        "name": "Lynch"
      },
      {
        "hex": "#597380",
        "name": "Cutty Sark"
      },
      {
        "hex": "#cfdee6",
        "name": "Botticelli"
      },
      {
        "hex": "#60a0bf",
        "name": "Fountain Blue"
      }
    ],
    "colorPaletteRaw": [
      "cc988f",
      "805f59",
      "e6d2cf",
      "bf6e60",
      "a2cc8f",
      "658059",
      "d6e6cf",
      "7dbf60",
      "607b89",
      "597380",
      "cfdee6",
      "60a0bf"
    ]
  }
}
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=go&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=go&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=go&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=go&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
