class UI::Typography::MutedComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "text-sm text-muted-foreground"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
