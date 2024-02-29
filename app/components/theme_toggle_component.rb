class ThemeToggleComponent < ViewComponent::Base
  renders_one :light
  renders_one :dark

  def initialize(theme: true)
    @theme = theme
  end
end
