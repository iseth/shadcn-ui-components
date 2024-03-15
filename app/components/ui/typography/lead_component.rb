class Ui::Typography::LeadComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "text-xl text-muted-foreground"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
