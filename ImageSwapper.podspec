Pod::Spec.new do |s|
  s.name             = 'ImageSwapper'
  s.version          = '0.1.4'
  s.summary          = 'Nice animation for swapping images.'
  s.description      = <<-DESC
    Nice animation for swapping images. In progress.
  DESC
  s.homepage         = 'https://github.com/tsarikovskiy/ImageSwapper'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Serg Tsarikovskiy' => 'sergtsarikovskiy@gmail.com' }
  s.source           = { :git => 'https://github.com/tsarikovskiy/ImageSwapper.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/s_tsarikovskiy'
  s.ios.deployment_target = '9.0'
  s.source_files = 'ImageSwapper/Classes/**/*'
  s.frameworks = 'UIKit'
end
