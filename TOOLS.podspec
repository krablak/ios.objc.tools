Pod::Spec.new do |s|
  s.name         = "TOOLS"
  s.version      = "1.0.0"
  s.summary      = "Krab development TOOLS."
  s.homepage     = "http://twfrbr.com/TOOLS"
  s.license      = { :type => 'Copyright 2012 Michal Racek', :file => 'LICENSE.txt' }
  s.source       = { :git => 'https://krablak@bitbucket.org/krablak/tools.git', :tag => '1.0.0' }  
  s.author       = { "krablak" => "krablak@gmail.com" }
  s.platform     = :ios
  s.source_files = 'Classes', './TOOLS/**/*.{h,m}'
  s.public_header_files = './TOOLS/**/*.h'
  s.requires_arc = true
end
