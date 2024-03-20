class UI::AlertDialog::CancelComponent < ViewComponent::Base
  def initialize(variant: :outline, size: :md, icon: nil, position: nil, disabled: false, **attrs)
    @variant = variant
    @size = size
    @icon = icon
    @position = position
    @disabled = disabled
    @attrs = attrs
  end
end
