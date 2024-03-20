class UI::Avatar::BuilderComponent < ViewComponent::Base
  def initialize(size: :md, src: nil, alt: nil, initials: nil, **attrs)
    base_classes = "relative flex shrink-0 overflow-hidden rounded-full"
    @attrs = attrs
    @size = size
    @src = src
    @alt = alt
    @initials = initials
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
