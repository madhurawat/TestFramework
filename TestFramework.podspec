Pod::Spec.new do |s|
 
 s.name = "TestFramework"
 s.author = { "Madhu Rawat" => "singh.madhubala@gmail.com" }
 s.homepage = "https://github.com/CocoaPods/CocoaPods/issues/5960"
 s.source =  { :git => "https://github.docusignhq.com/iOS/DocuSign-IOS-SDK-V2.git", :branch => "feature/IOS-12911" }
 s.summary =  "XXXX"
 s.version = "1.0"
 s.platform     = :ios, '9.0'
 s.requires_arc = true
 s.license      = "DOCUSIGN"
 s.source_files = '/Output/TestFramework-Debug-iphoneuniversal/TestFramework.framework/Headers/*.h'
 s.public_header_files = '/Output/TestFramework-Debug-iphoneuniversal/TestFramework.framework/Headers/*.h'
 s.vendored_frameworks  = "/Output/TestFramework-Debug-iphoneuniversal/TestFramework.framework/TestFramework"
 s.xcconfig            = {
   'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}"'
 }
 s.dependency 'DocuSignESign', '~> 2.0.0'
 end