require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name    = "ARNKakaoSDK"
  s.version = package['version']
  s.summary = "KakaoSDK For React Native."
  
  s.authors   = { "Suhan Moon" => "leader@trabricks.io" }
  s.homepage  = "https://github.com/trabricks/react-native-kakaosdk#readme"
  s.license   = "MIT"

  s.platform      = :ios, "9.0"
  s.framework     = 'UIKit'
  s.requires_arc  = true

  s.source        = { :git => "https://github.com/trabricks/react-native-kakaosdk.git" }
  s.source_files  = "ios/*.{h,m}"

  s.dependency "React"
  s.vendored_frameworks = 'KakaoCommon.framework', 'KakaoMessageTemplate.framework'

end

  
