Pod::Spec.new do |s|
  s.name             = 'mobile-ffmpeg-https'
  s.version          = '4.4'
  s.summary          = 'Forked mobile-ffmpeg-https for Flutter integration'
  s.description      = 'Forked build of mobile-ffmpeg-https for use with flutter_ffmpeg.'
  s.homepage         = 'https://github.com/tongli-dev/mobile-ffmpeg'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tongli' => 'you@example.com' }

  s.platform     = :ios, '9.3'
  s.source       = { :http => 'https://github.com/tanersener/mobile-ffmpeg/archive/refs/tags/v4.4.LTS.zip' }
  s.vendored_frameworks = 'mobile-ffmpeg-4.4.LTS/ios/mobileffmpeg.xcframework'

  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
  }
end
