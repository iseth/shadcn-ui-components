class Card::TitleComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "font-semibold leading-none tracking-tight"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
