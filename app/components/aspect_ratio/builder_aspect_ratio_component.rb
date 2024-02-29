class AspectRatio::BuilderAspectRatioComponent < ViewComponent::Base
  renders_one :image
  def initialize(aspect_ratio:, **attrs)
    @aspect_ratio = aspect_ratio
    @attrs = attrs
    @attrs[:class] ||= "rounded-md overflow-hidden border shadow-sm"
  end


  def padding_bottom
    @aspect_ratio.split("/").map(&:to_f).reverse.reduce(&:fdiv) * 100
  end
end
