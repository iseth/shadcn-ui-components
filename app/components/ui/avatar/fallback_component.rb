class UI::Avatar::FallbackComponent < ViewComponent::Base
  def initialize(**attrs)
    base_classes = "flex h-full w-full items-center justify-center rounded-full bg-muted"
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
