require "test_helper"

class LinkComponentTest < ViewComponent::TestCase
  test "renders button with custom class" do
    render_inline(LinkComponent.new(href: '#', variant: :primary, class: "custom-class")) do
      "Click me"
    end
    assert_selector(".custom-class")
    assert_selector("a[href='#']")
  end

  test "renders button with icon" do
    render_inline(LinkComponent.new(href: '#', variant: :primary, icon: true)) do |component|
      component.with_icon { "Icon" }
    end

    assert_text("Icon")
    assert_selector("a[href='#']")
  end
end
