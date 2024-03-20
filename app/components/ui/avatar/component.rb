class UI::Avatar::Component < ViewComponent::Base
  SIZES = {
    xs: "h-4 w-4 text-[0.5rem]",
    sm: "h-6 w-6 text-xs",
    md: "h-10 w-10 text-base",
    lg: "h-14 w-14 text-xl",
    xl: "h-20 w-20 text-3xl"
  }

  def initialize(size: :md, **attrs)
    base_classes = "relative flex shrink-0 overflow-hidden rounded-full"
    @attrs = attrs
    @size = SIZES[size]
    classes = "#{base_classes} #{@size} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
