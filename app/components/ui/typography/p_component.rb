class UI::Typography::PComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "leading-7 [&:not(:first-child)]:mt-6"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
