Pod::Spec.new do |s|
  s.name         = "SwiftPublicIP"
  s.version      = "0.0.2"
  s.summary      = "Swift library for checking your public IP address."
  s.description  = <<-DESC
    Swift library for checking your public IP address.
    Supports macOS, iOS, tvOS, watchOS and Linux.
  DESC
  s.homepage     = "https://github.com/HackingGate/Swift-Public-IP"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "HackingGate" => "i@hackinggate.com" }
  s.social_media_url   = ""
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/HackingGate/Swift-Public-IP.git", :tag => s.version.to_s }
  s.source_files  = "Sources/**/*"
  s.frameworks  = "Foundation"
  s.swift_versions = "5.0"
end
