using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.ColorPaletteGenerator
{
    /// <summary>
    /// Query options for the Color Palette Generator API
    /// </summary>
    public class ColorPaletteGeneratorQueryOptions
    {
        /// <summary>
        /// The base color to generate the palette from (HEX format without #)
        /// </summary>
        [JsonProperty("color")]
        public string Color { get; set; }

        /// <summary>
        /// The color scheme type
        /// </summary>
        [JsonProperty("scheme")]
        public string Scheme { get; set; }

        /// <summary>
        /// The color variation
        /// </summary>
        [JsonProperty("variation")]
        public string Variation { get; set; }

        /// <summary>
        /// Caps how many colors are returned (1-16). Each scheme has its own ceiling and count cannot raise it - mono yields 4, contrast 8, triade and analogic 12, tetrade 16. The colorCount field reports how many were actually returned. Free tier limited to 5 colors
        /// </summary>
        [JsonProperty("count")]
        public int? Count { get; set; }

        /// <summary>
        /// Color spacing distance (0-1). Affects triade, tetrade, and analogic schemes
        /// </summary>
        [JsonProperty("distance")]
        public double? Distance { get; set; }

        /// <summary>
        /// Add complement color to analogic scheme
        /// </summary>
        [JsonProperty("addComplement")]
        public bool? AddComplement { get; set; }

        /// <summary>
        /// Return web-safe colors only
        /// </summary>
        [JsonProperty("webSafe")]
        public bool? WebSafe { get; set; }
    }
}
