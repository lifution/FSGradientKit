
Pod::Spec.new do |s|
  s.name      = 'FSGradientKit'
  s.version   = '1.0.0'
  s.summary   = 'A view-library that draws a color gradient over its background color, filling the shape of the layer.'
  s.homepage  = 'https://github.com/lifution/FSGradientKit'
  s.license   = { :type => 'MIT', :file => 'LICENSE' }
  s.author    = 'Sheng'
  s.source    = {
    :git => 'git@github.com:lifution/FSGradientKit.git',
    :tag => s.version.to_s
  }
  
  s.swift_version = '5'
  s.ios.deployment_target = '11.0'
  
  s.frameworks = 'UIKit', 'Foundation'
  s.source_files = 'FSGradientKit/Classes/**/*'
end
