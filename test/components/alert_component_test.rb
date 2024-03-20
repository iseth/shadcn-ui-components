require "test_helper"

class BuilderAlertComponentTest < ViewComponent::TestCase
  test "renders warning alert with custom classes" do
    render_inline(UI::Alert::Component.new(variant: :warning, class: "custom-class", classTitle: "custom-title-class", classDescription: "custom-description-class")) do |component|
      component.with_title { "Title alert" }
      component.with_description { "Description of Alert" }
      component.with_icon { "Icon" }
    end

    assert_selector(".custom-class")
    assert_selector(".custom-title-class")
    assert_selector(".custom-description-class")
    assert_text("Title alert")
    assert_text("Description of Alert")
    assert_text("Icon")
  end
end
