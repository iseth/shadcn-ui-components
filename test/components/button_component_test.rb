require "test_helper"

class ButtonComponentTest < ViewComponent::TestCase
  test "renders button with custom class" do
    render_inline(UI::Button::Component.new(variant: :primary, class: "custom-class")) do
      "Click me"
    end
    assert_selector(".custom-class")
  end

  test "renders button with icon" do
    render_inline(UI::Button::Component.new(variant: :primary, icon: "icon-class")) do |component|
      component.with_icon { "Icon" }
    end

    assert_text("Icon")
  end

  test "renders disabled button" do
    render_inline(UI::Button::Component.new(variant: :primary, disabled: true)) do
      "Click me"
    end

    assert_selector("[disabled]")
  end
end
