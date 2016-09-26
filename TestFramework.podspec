Pod::Spec.new do |s|
 
 s.name = "TestFramework"
 s.author = { "Madhu Rawat" => "singh.madhubala@gmail.com" }
 s.homepage = "https://github.com/madhurawat/TestFramework.git"
 s.source =  { :git => "https://github.com/madhurawat/TestFramework.git" }
 s.summary =  "XXXX"
 s.version = "1.0"
 s.platform     = :ios, '9.0'
 s.requires_arc = true
 s.license      = "XXXXX"
 s.source_files = 'Output/TestFramework-Debug-iphoneuniversal/TestFramework.framework/Headers/*.h'
 s.public_header_files = 'Output/TestFramework-Debug-iphoneuniversal/TestFramework.framework/Headers/*.h'
 s.vendored_frameworks  = "Output/TestFramework-Debug-iphoneuniversal/TestFramework.framework/TestFramework"
 s.xcconfig            = {
   'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/Output/TestFramework-Debug-iphoneuniversal/"'
 }
 s.dependency 'DocuSignESign', '~> 2.0.0'
 end