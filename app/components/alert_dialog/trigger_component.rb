class AlertDialog::TriggerComponent < ViewComponent::Base
  renders_one :action, -> (**attrs, &block) do
    AlertDialog::ActionComponent.new(attrs, &block)
  end
  def initialize(attrs = {})
    @attrs = attrs
    @attrs[:class] ||= "inline-block"
  end
end
