class UI::AspectRatio::Component < ViewComponent::Base
  renders_one :image
  def initialize(aspect_ratio:, **attrs)
    base_classes = "bg-muted absolute inset-0 [&>img]:object-cover [&>img]:absolute [&>img]:h-full [&>img]:w-full [&>img]:inset-0 [&>img]:text-transparent"
    @aspect_ratio = aspect_ratio
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end

  def padding_bottom
    @aspect_ratio.split("/").map(&:to_f).reverse.reduce(&:fdiv) * 100
  end
end
