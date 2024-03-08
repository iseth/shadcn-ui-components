class CardComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "rounded-xl border bg-background shadow"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
