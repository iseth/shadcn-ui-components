class UI::Typography::SmallComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "text-sm font-medium leading-none"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
