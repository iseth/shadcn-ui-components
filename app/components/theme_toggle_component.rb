# app/components/theme_toggle_component.rb
class ThemeToggleComponent < ViewComponent::Base
  renders_one :light
  renders_one :dark

  def initialize(theme:)
    @theme = theme
  end
end
