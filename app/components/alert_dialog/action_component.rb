class AlertDialog::ActionComponent < ViewComponent::Base
  def initialize(variant: :primary, size: :md, icon: nil, position: nil, disabled: false, **attrs)
    @variant = variant
    @size = size
    @icon = icon
    @position = position
    @disabled = disabled
    @attrs = attrs
  end
end
