Dir[File.join(File.dirname(__FILE__), "i18n", "**", "*.rb")].each do |file|
  require file
end

module Translate
  class Engine < Rails::Engine
  end if defined?(Rails) && Rails::VERSION::MAJOR == 3
end


Dir[File.join(File.dirname(__FILE__), "translate", "*.rb")].each do |file|
  require file
end
