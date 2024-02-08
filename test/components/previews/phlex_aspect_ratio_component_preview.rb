class PhlexAspectRatioComponentPreview < ViewComponent::Preview
  def default
    render PhlexAspectRatioComponent.new(
      aspect_ratio: "16/9",
      image_path: 'image-test.jpg'
    )
  end

  def with_four_to_three
    render PhlexAspectRatioComponent.new(
      aspect_ratio: "4/3",
      image_path: 'image-test.jpg'
    )
  end

  def with_one_to_one
    render PhlexAspectRatioComponent.new(
      aspect_ratio: "1/1",
      image_path: 'image-test.jpg'
    )
  end

  def with_twenty_one_to_nine
    render PhlexAspectRatioComponent.new(
      aspect_ratio: "21/9",
      image_path: 'image-test.jpg'
    )
  end

end
