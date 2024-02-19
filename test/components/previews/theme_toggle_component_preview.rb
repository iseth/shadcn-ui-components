# app/components/previews/dark_mode/theme_toggle_component_preview.rb
class ThemeToggleComponentPreview < ViewComponent::Preview
  def default
    render(ThemeToggleComponent.new())
  end
end
