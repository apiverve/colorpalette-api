Pod::Spec.new do |s|
  s.name             = 'APIVerveColorPaletteGenerator'
  s.version          = '1.2.3'
  s.summary          = 'Color Palette Generator produces harmonious color schemes from any HEX base color.'
  s.description      = <<-'DESC'
Color Palette Generator produces harmonious color schemes from any HEX base color. It returns color codes in HEX and RGB formats, naming matches, dark-mode flags, and recommended text colors.

This iOS/macOS SDK provides a convenient way to access the Color Palette Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/colorpalette?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/colorpalette-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveColorPaletteGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
