class UI::AlertDialog::TitleComponent < ViewComponent::Base
  def initialize(**attrs)
    base_classes = "text-lg font-semibold"
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
