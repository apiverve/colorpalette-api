# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_colorpalette"
  spec.version       = "1.2.6"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "Color Palette Generator API - Ruby Client"
  spec.description   = "Color Palette Generator is a color palette API that builds a harmonious color scheme from one HEX base color. Every plan returns each color's HEX code, closest color name, a dark flag and a legible black or white text color; paid plans add RGB, HSL, WCAG contrast checks, CSS variables and a PNG of the palette."
  spec.homepage      = "https://apiverve.com/marketplace/colorpalette?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/colorpalette-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/colorpalette"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
