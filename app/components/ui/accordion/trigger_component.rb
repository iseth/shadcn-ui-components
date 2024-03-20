class UI::Accordion::TriggerComponent < ViewComponent::Base
  renders_one :default_trigger, ->(**attrs, &block) do
    UI::Accordion::DefaultTriggerComponent.new(attrs, &block)
  end

  renders_one :icon, ->(**attrs, &block) do
    UI::Accordion::IconComponent.new(attrs, &block)
  end

  def initialize(attrs = {}, &block)
    @attrs = attrs
    default_classes = "w-full flex flex-1 items-center justify-between py-4 text-sm font-medium transition-all hover:underline"
    @attrs[:class] = default_classes if @attrs&.dig(:class).nil?
  end
end
