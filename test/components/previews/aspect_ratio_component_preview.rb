class AspectRatioComponentPreview < ViewComponent::Preview
  def default
    @image_path = "/assets/image-test.jpg"

    render(UI::AspectRatio::Component.new(aspect_ratio: "16/9", class: "bg-muted absolute inset-0 rounded-md overflow-hidden border shadow-sm")) do |component|
      component.with_image do
        "<img src='#{@image_path}' alt='Placeholder' loading='lazy' class='object-cover absolute h-full w-full inset-0'>".html_safe
      end
    end
  end

  def with_four_to_three
    @image_path = "/assets/image-test.jpg"

    render(UI::AspectRatio::Component.new(aspect_ratio: "4/3", class: "bg-muted absolute inset-0 rounded-md overflow-hidden border shadow-sm")) do |component|
      component.with_image do
        "<img src='#{@image_path}' alt='Placeholder' loading='lazy' class='object-cover absolute h-full w-full inset-0'>".html_safe
      end
    end
  end

  def with_one_to_one
    @image_path = "/assets/image-test.jpg"

    render(UI::AspectRatio::Component.new(aspect_ratio: "1/1", class: "bg-muted absolute inset-0 rounded-md overflow-hidden border shadow-sm")) do |component|
      component.with_image do
        "<img src='#{@image_path}' alt='Placeholder' loading='lazy' class='object-cover absolute h-full w-full inset-0'>".html_safe
      end
    end
  end

  def with_twenty_one_to_nine
    @image_path = "/assets/image-test.jpg"

    render(UI::AspectRatio::Component.new(aspect_ratio: "21/9", class: "bg-muted absolute inset-0 rounded-md overflow-hidden border shadow-sm")) do |component|
      component.with_image do
        "<img src='#{@image_path}' alt='Placeholder' loading='lazy' class='object-cover absolute h-full w-full inset-0'>".html_safe
      end
    end
  end
end
