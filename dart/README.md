# Color Palette Generator API - Dart/Flutter Client

Color Palette Generator produces harmonious color schemes from any HEX base color. It returns color codes in HEX and RGB formats, naming matches, dark-mode flags, and recommended text colors.

[![pub package](https://img.shields.io/pub/v/apiverve_colorpalette.svg)](https://pub.dev/packages/apiverve_colorpalette)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Color Palette Generator API](https://apiverve.com/marketplace/colorpalette?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_colorpalette: ^1.2.3
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_colorpalette/apiverve_colorpalette.dart';

void main() async {
  final client = ColorpaletteClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'color': 'FF5733',
      'scheme': 'triade',
      'variation': 'default',
      'count': 5,
      'distance': 0.5,
      'addComplement': true,
      'webSafe': 
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Color Palette Generator API](https://apiverve.com/marketplace/colorpalette?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/colorpalette](https://docs.apiverve.com/ref/colorpalette?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
