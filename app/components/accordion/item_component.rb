class Accordion::ItemComponent < ViewComponent::Base
  renders_one :trigger, ->(**attrs, &block) do
    Accordion::TriggerComponent.new(attrs, &block)
  end
  # renders_one :trigger, Accordion::TriggerComponent
  renders_one :body, Accordion::ContentComponent

  def initialize(open = false, rotate_icon = 180, attrs = {}, &block)
    @open = open
    @attrs = attrs
    @attrs[:class] = "border-b" if @attrs&.dig(:class).nil?
    @rotate_icon = rotate_icon
  end
end
