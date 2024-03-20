class UI::Typography::ListItemComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "leading-7"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
