class UI::Avatar::ImageComponent < ViewComponent::Base
  def initialize(src:, alt: "", **attrs)
    base_classes = "aspect-square h-full w-full"
    @attrs = attrs
    @src = src
    @alt = alt
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
