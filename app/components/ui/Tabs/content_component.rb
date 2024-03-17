class Ui::Tabs::ContentComponent < ViewComponent::Base
  def initialize(value:, **attrs)
    base_classes = "mt-2 ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 hidden"
    @value = value
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
