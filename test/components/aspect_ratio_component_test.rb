require "test_helper"

class BuilderAspectRatioComponentTest < ViewComponent::TestCase

  test "renders aspect ratio component with custom class" do
    render_inline(AspectRatio::BuilderAspectRatioComponent.new(aspect_ratio: "16/9", class: "custom-class")) do |component|
      component.with_image { "Image" }
    end

    assert_selector(".custom-class")
  end

  test "calculates padding bottom correctly" do
    component = AspectRatio::BuilderAspectRatioComponent.new(aspect_ratio: "16/9")

    assert_equal 56.25, component.padding_bottom
  end

end
