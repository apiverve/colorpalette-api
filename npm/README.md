# Color Palette Generator API

Color Palette is a powerful tool for generating harmonious color palettes. Generate color schemes (mono, contrast, triade, tetrade, analogic) with accessibility data, CSS exports, and palette images.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/colorpalette.svg)](https://www.npmjs.com/package/@apiverve/colorpalette)

This is a Javascript Wrapper for the [Color Palette Generator API](https://apiverve.com/marketplace/colorpalette?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/colorpalette
```

Using yarn:
```shell
yarn add @apiverve/colorpalette
```

---

## Configuration

Before using the Color Palette Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The Color Palette Generator API documentation is found here: [https://docs.apiverve.com/ref/colorpalette](https://docs.apiverve.com/ref/colorpalette?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const colorpaletteAPI = require('@apiverve/colorpalette');
const api = new colorpaletteAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  color: "FF5733",
  scheme: "triade",
  variation: "default",
  count: 5,
  distance: 0.5,
  addComplement: false,
  webSafe: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  color: "FF5733",
  scheme: "triade",
  variation: "default",
  count: 5,
  distance: 0.5,
  addComplement: false,
  webSafe: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  color: "FF5733",
  scheme: "triade",
  variation: "default",
  count: 5,
  distance: 0.5,
  addComplement: false,
  webSafe: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
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

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
