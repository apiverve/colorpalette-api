declare module '@apiverve/colorpalette' {
  export interface colorpaletteOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface colorpaletteResponse {
    status: string;
    error: string | null;
    data: ColorPaletteGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface ColorPaletteGeneratorData {
      source:          null | string;
      sourceName:      null | string;
      hue:             number | null;
      scheme:          null | string;
      variation:       null | string;
      distance:        number | null;
      colorCount:      number | null;
      colorPalette:    ColorPalette[];
      colorPaletteRaw: (null | string)[];
      css:             null | string;
      image:           Image;
  }
  
  interface ColorPalette {
      hex:           null | string;
      name:          null | string;
      rgb:           RGB;
      hsl:           Hsl;
      luminance:     number | null;
      isDark:        boolean | null;
      textColor:     null | string;
      accessibility: Accessibility;
  }
  
  interface Accessibility {
      contrastWithWhite: number | null;
      contrastWithBlack: number | null;
      wcagAANormal:      boolean | null;
      wcagAALarge:       boolean | null;
      wcagAAA:           boolean | null;
  }
  
  interface Hsl {
      h: number | null;
      s: number | null;
      l: number | null;
  }
  
  interface RGB {
      r: number | null;
      g: number | null;
      b: number | null;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }

  export default class colorpaletteWrapper {
    constructor(options: colorpaletteOptions);

    execute(callback: (error: any, data: colorpaletteResponse | null) => void): Promise<colorpaletteResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: colorpaletteResponse | null) => void): Promise<colorpaletteResponse>;
    execute(query?: Record<string, any>): Promise<colorpaletteResponse>;
  }
}
