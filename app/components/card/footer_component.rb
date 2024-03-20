class Card::FooterComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "items-center p-6 pt-0"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
