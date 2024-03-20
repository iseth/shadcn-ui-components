class UI::Accordion::Component < ViewComponent::Base
  renders_one :trigger, ->(**attrs, &block) do
    UI::Accordion::TriggerComponent.new(attrs, &block)
  end
  renders_many :items, ->(open: false, rotate_icon: 180, **attrs, &block) do
    UI::Accordion::ItemComponent.new(open, rotate_icon, attrs, &block)
  end

  def initialize(attrs = {}, &block)
    @attrs = attrs
    @attrs[:class] = "w-full" if @attrs&.dig(:class).nil?
    @content = block
  end
end
