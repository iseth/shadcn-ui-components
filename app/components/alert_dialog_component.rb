class AlertDialogComponent < ViewComponent::Base
  renders_one :trigger, -> (**attrs, &block) do
    AlertDialog::TriggerComponent.new(attrs, &block)
  end
  def initialize(open: false, **attrs)
    @attrs = attrs
    @attrs[:class] ||= "inline-block"
  end
end
