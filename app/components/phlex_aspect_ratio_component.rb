class PhlexAspectRatioComponent < ViewComponent::Base
  def initialize(aspect_ratio:, image_path:)
    @aspect_ratio = aspect_ratio
    @image_path = image_path
  end

  def call
    render PhlexUI::AspectRatio.new(aspect_ratio: @aspect_ratio, class: "rounded-md overflow-hidden border shadow-sm") do
      tag.img(
        alt: "Placeholder",
        loading: "lazy",
        src: helpers.image_path(@image_path)
      )
    end
  end
end
