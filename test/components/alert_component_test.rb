require "test_helper"

class BuilderAlertComponentTest < ViewComponent::TestCase
  test "renders warning alert with custom classes" do
    component = render_inline(Alert::BuilderAlertComponent.new(variant: :warning, class: "custom-class", classTitle: "custom-title-class", classDescription: "custom-description-class", color: "custom-color")) do |component|
      component.with_title { "Título de alerta" }
      component.with_description { "Descripción de alerta" }
      component.with_icon { "Icono de alerta" }
    end

    assert_selector(".custom-class")
    assert_selector(".custom-title-class")
    assert_selector(".custom-description-class")
    assert_selector(".custom-color")
    assert_text("Título de alerta")
    assert_text("Descripción de alerta")
    assert_text("Icono de alerta")
  end
end
