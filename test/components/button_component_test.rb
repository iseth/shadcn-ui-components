require "test_helper"

class ButtonComponentTest < ViewComponent::TestCase
  test "renders button with custom class" do
    render_inline(ButtonComponent.new(variant: :primary, class: "custom-class")) do |component|
      component.with_data { "Click me" }
    end

    assert_selector(".custom-class")
  end

  test "renders button with icon" do
    render_inline(ButtonComponent.new(variant: :primary, icon: "icon-class")) do |component|
      component.with_data { "Click me" }
      component.with_dataIcon { "Icon" }
    end

    assert_text("Icon")
  end

  test "renders disabled button" do
    render_inline(ButtonComponent.new(variant: :primary, disabled: true)) do |component|
      component.with_data { "Click me" }
    end

    assert_selector("[disabled]")
  end
end
