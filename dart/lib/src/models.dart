/// Response models for the Color Palette Generator API.

/// API Response wrapper.
class ColorpaletteResponse {
  final String status;
  final dynamic error;
  final ColorpaletteData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ColorpaletteResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ColorpaletteResponse.fromJson(Map<String, dynamic> json) => ColorpaletteResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ColorpaletteData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Color Palette Generator API.

class ColorpaletteData {
  String? source;
  String? sourceName;
  num? hue;
  String? scheme;
  String? variation;
  num? distance;
  num? colorCount;
  List<ColorpaletteDataColorpaletteItem>? colorPalette;
  List<String>? colorPaletteRaw;
  String? css;
  ColorpaletteDataImage? image;

  ColorpaletteData({
    this.source,
    this.sourceName,
    this.hue,
    this.scheme,
    this.variation,
    this.distance,
    this.colorCount,
    this.colorPalette,
    this.colorPaletteRaw,
    this.css,
    this.image,
  });

  factory ColorpaletteData.fromJson(Map<String, dynamic> json) => ColorpaletteData(
      source: json['source'],
      sourceName: json['sourceName'],
      hue: json['hue'],
      scheme: json['scheme'],
      variation: json['variation'],
      distance: json['distance'],
      colorCount: json['colorCount'],
      colorPalette: (json['colorPalette'] as List?)?.map((e) => ColorpaletteDataColorpaletteItem.fromJson(e)).toList(),
      colorPaletteRaw: (json['colorPaletteRaw'] as List?)?.cast<String>(),
      css: json['css'],
      image: json['image'] != null ? ColorpaletteDataImage.fromJson(json['image']) : null,
    );
}

class ColorpaletteDataColorpaletteItem {
  String? hex;
  String? name;
  ColorpaletteDataColorpaletteItemRgb? rgb;
  ColorpaletteDataColorpaletteItemHsl? hsl;
  num? luminance;
  bool? isDark;
  String? textColor;
  ColorpaletteDataColorpaletteItemAccessibility? accessibility;

  ColorpaletteDataColorpaletteItem({
    this.hex,
    this.name,
    this.rgb,
    this.hsl,
    this.luminance,
    this.isDark,
    this.textColor,
    this.accessibility,
  });

  factory ColorpaletteDataColorpaletteItem.fromJson(Map<String, dynamic> json) => ColorpaletteDataColorpaletteItem(
      hex: json['hex'],
      name: json['name'],
      rgb: json['rgb'] != null ? ColorpaletteDataColorpaletteItemRgb.fromJson(json['rgb']) : null,
      hsl: json['hsl'] != null ? ColorpaletteDataColorpaletteItemHsl.fromJson(json['hsl']) : null,
      luminance: json['luminance'],
      isDark: json['isDark'],
      textColor: json['textColor'],
      accessibility: json['accessibility'] != null ? ColorpaletteDataColorpaletteItemAccessibility.fromJson(json['accessibility']) : null,
    );
}

class ColorpaletteDataColorpaletteItemRgb {
  num? r;
  num? g;
  num? b;

  ColorpaletteDataColorpaletteItemRgb({
    this.r,
    this.g,
    this.b,
  });

  factory ColorpaletteDataColorpaletteItemRgb.fromJson(Map<String, dynamic> json) => ColorpaletteDataColorpaletteItemRgb(
      r: json['r'],
      g: json['g'],
      b: json['b'],
    );
}

class ColorpaletteDataColorpaletteItemHsl {
  num? h;
  num? s;
  num? l;

  ColorpaletteDataColorpaletteItemHsl({
    this.h,
    this.s,
    this.l,
  });

  factory ColorpaletteDataColorpaletteItemHsl.fromJson(Map<String, dynamic> json) => ColorpaletteDataColorpaletteItemHsl(
      h: json['h'],
      s: json['s'],
      l: json['l'],
    );
}

class ColorpaletteDataColorpaletteItemAccessibility {
  num? contrastWithWhite;
  num? contrastWithBlack;
  bool? wcagAANormal;
  bool? wcagAALarge;
  bool? wcagAAA;

  ColorpaletteDataColorpaletteItemAccessibility({
    this.contrastWithWhite,
    this.contrastWithBlack,
    this.wcagAANormal,
    this.wcagAALarge,
    this.wcagAAA,
  });

  factory ColorpaletteDataColorpaletteItemAccessibility.fromJson(Map<String, dynamic> json) => ColorpaletteDataColorpaletteItemAccessibility(
      contrastWithWhite: json['contrastWithWhite'],
      contrastWithBlack: json['contrastWithBlack'],
      wcagAANormal: json['wcagAANormal'],
      wcagAALarge: json['wcagAALarge'],
      wcagAAA: json['wcagAAA'],
    );
}

class ColorpaletteDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  ColorpaletteDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory ColorpaletteDataImage.fromJson(Map<String, dynamic> json) => ColorpaletteDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
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
