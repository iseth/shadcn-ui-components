# app/components/previews/dark_mode/theme_toggle_component_preview.rb
class ThemeToggleComponentPreview < ViewComponent::Preview
  def default
    render(ThemeToggleComponent.new) do |component|
      component.with_light do
        "<button data-action='click->theme-toggle#toggle' data-theme-toggle-target='lightButton' class='theme-toggle-button'>
          Dark light
        </button>".html_safe
      end
      component.with_dark do
        "<button data-action='click->theme-toggle#toggle' data-theme-toggle-target='darkButton' class='theme-toggle-button'>
          Dark Mode
        </button>".html_safe
      end
    end
  end
end
