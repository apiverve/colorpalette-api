# Color Palette Generator API - Dart/Flutter Client

Color Palette is a powerful tool for generating harmonious color palettes. Generate color schemes (mono, contrast, triade, tetrade, analogic) with accessibility data, CSS exports, and palette images.

[![pub package](https://img.shields.io/pub/v/apiverve_colorpalette.svg)](https://pub.dev/packages/apiverve_colorpalette)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Color Palette Generator API](https://apiverve.com/marketplace/colorpalette?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_colorpalette: ^1.1.14
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

## API Reference

- **API Home:** [Color Palette Generator API](https://apiverve.com/marketplace/colorpalette?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/colorpalette](https://docs.apiverve.com/ref/colorpalette?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
