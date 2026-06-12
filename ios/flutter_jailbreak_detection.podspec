Pod::Spec.new do |s|
  s.name             = 'flutter_jailbreak_detection'
  s.version          = '0.0.1'
  s.summary          = 'Flutter jailbreak and root detection plugin.'
  s.description      = <<-DESC
Flutter jailbreak and root detection plugin.
                       DESC
  s.homepage         = 'https://github.com/jeroentrappers/flutter_jailbreak_detection'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Jeroen Trappers' => '' }
  s.source           = { :path => '.' }
  s.source_files     = 'flutter_jailbreak_detection/Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'IOSSecuritySuite'
  s.platform = :ios, '12.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
