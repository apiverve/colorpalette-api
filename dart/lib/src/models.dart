/// Response models for the Color Palette Generator API.

/// API Response wrapper.
class ColorpaletteResponse {
  final String status;
  final dynamic error;
  final ColorpaletteData? data;

  ColorpaletteResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory ColorpaletteResponse.fromJson(Map<String, dynamic> json) => ColorpaletteResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ColorpaletteData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Color Palette Generator API.

class ColorpaletteData {
  String? source;
  int? hue;
  String? variation;
  List<ColorpaletteDataColorpaletteItem>? colorPalette;
  List<String>? colorPaletteRaw;

  ColorpaletteData({
    this.source,
    this.hue,
    this.variation,
    this.colorPalette,
    this.colorPaletteRaw,
  });

  factory ColorpaletteData.fromJson(Map<String, dynamic> json) => ColorpaletteData(
      source: json['source'],
      hue: json['hue'],
      variation: json['variation'],
      colorPalette: (json['colorPalette'] as List?)?.map((e) => ColorpaletteDataColorpaletteItem.fromJson(e)).toList(),
      colorPaletteRaw: (json['colorPaletteRaw'] as List?)?.cast<String>(),
    );
}

class ColorpaletteDataColorpaletteItem {
  String? hex;
  String? name;

  ColorpaletteDataColorpaletteItem({
    this.hex,
    this.name,
  });

  factory ColorpaletteDataColorpaletteItem.fromJson(Map<String, dynamic> json) => ColorpaletteDataColorpaletteItem(
      hex: json['hex'],
      name: json['name'],
    );
}

class ColorpaletteRequest {
  String color;
  String? scheme;
  String? variation;
  int? count;
  double? distance;
  bool? addComplement;
  bool? webSafe;

  ColorpaletteRequest({
    required this.color,
    this.scheme,
    this.variation,
    this.count,
    this.distance,
    this.addComplement,
    this.webSafe,
  });

  Map<String, dynamic> toJson() => {
      'color': color,
      if (scheme != null) 'scheme': scheme,
      if (variation != null) 'variation': variation,
      if (count != null) 'count': count,
      if (distance != null) 'distance': distance,
      if (addComplement != null) 'addComplement': addComplement,
      if (webSafe != null) 'webSafe': webSafe,
    };
}
