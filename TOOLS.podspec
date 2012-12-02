Pod::Spec.new do |s|
  s.name         = "TOOLS"
  s.version      = "0.0.1"
  s.summary      = "Krab development TOOLS."
  s.homepage     = "http://twfrbr.com/TOOLS"
  s.license      = { :type => 'Copyright 2012 Michal Racek', :file => '/Users/krablak/work/ios/NR/NightReaderLab/TOOLS/LICENSE.txt' }
  s.author       = { "krablak" => "krablak@gmail.com" }
  s.platform     = :ios
  s.source_files = 'Classes', './TOOLS/**/*.{h,m}'
  s.public_header_files = './TOOLS/**/*.h'
  s.requires_arc = true
end
