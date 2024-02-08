class PhlexButtonComponent < ViewComponent::Base
  def initialize(text:, variant: :primary, icon: nil, disabled: false, type: :button)
    @text = text
    @variant = variant
    @icon = icon
    @disabled = disabled
    @type = type
  end

  def call
    render PhlexUI::Button.new(variant: @variant&.to_sym, disabled: @disabled, type: @type) do
      safe_join([render_icon, @text].compact)
    end
  end

  private

  def render_icon
    @icon.call if @icon
  end
end
