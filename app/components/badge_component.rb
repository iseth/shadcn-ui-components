class BadgeComponent < ViewComponent::Base
  def initialize(text: "Badge", variant: nil, size: nil)
    @text = text
    @variant = variant
    @size = size
  end

  def call
    render PhlexUI::Badge.new(variant: @variant, size: @size) { @text }
  end
end
