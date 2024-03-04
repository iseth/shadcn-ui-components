class AspectRatio::BuilderAspectRatioComponent < ViewComponent::Base
  renders_one :image
  def initialize(aspect_ratio:, **attrs)
    base_classes = "rounded-md overflow-hidden border shadow-sm"
    @aspect_ratio = aspect_ratio
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end

  def padding_bottom
    @aspect_ratio.split("/").map(&:to_f).reverse.reduce(&:fdiv) * 100
  end
end
