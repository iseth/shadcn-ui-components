require "test_helper"

class BadgeComponentTest < ViewComponent::TestCase
  def test_primary_variant
    render_inline(BadgeComponent.new(variant: :primary, size: :md)) { "Hello, World!" }

    assert_text("Hello, World!")
  end

  def test_custom_class_overrides_default
    render_inline(BadgeComponent.new(variant: :primary, size: :md, class: "custom-class")) { "Hello, World!" }

    assert_text("Hello, World!")

    assert_selector(".custom-class")
  end
end
