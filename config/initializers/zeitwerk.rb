# config/initializers/zeitwerk.rb

Rails.autoloaders.each do |autoloader|
  autoloader.inflector = Zeitwerk::Inflector.new
  autoloader.inflector.inflect(
    'ui' => 'UI',
    # other special cases
  )
end
