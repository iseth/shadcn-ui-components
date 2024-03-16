class Ui::Tabs::ListComponent < ViewComponent::Base
  def initialize(**attrs)
    base_classes = "inline-flex h-9 items-center justify-center rounded-lg bg-muted p-1 text-muted-foreground"
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
