class UI::Accordion::IconComponent < ViewComponent::Base
  def initialize(attrs = {})
    @attrs = attrs
    default_classes = "opacity-50"
    @attrs[:class] = default_classes if @attrs&.dig(:class).nil?
  end

  def default_classes
    "opacity-50"
  end
end
