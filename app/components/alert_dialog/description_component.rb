class AlertDialog::DescriptionComponent < ViewComponent::Base
  def initialize(**attrs)
    base_classes = "text-sm text-muted-foreground"
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
