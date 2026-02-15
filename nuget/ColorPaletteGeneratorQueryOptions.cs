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
        /// Number of colors to return (1-16). Free tier limited to 5 colors
        /// </summary>
        [JsonProperty("count")]
        public string Count { get; set; }

        /// <summary>
        /// Color spacing distance (0-1). Affects triade, tetrade, and analogic schemes
        /// </summary>
        [JsonProperty("distance")]
        public string Distance { get; set; }

        /// <summary>
        /// Add complement color to analogic scheme
        /// </summary>
        [JsonProperty("addComplement")]
        public string AddComplement { get; set; }

        /// <summary>
        /// Return web-safe colors only
        /// </summary>
        [JsonProperty("webSafe")]
        public string WebSafe { get; set; }
    }
}
