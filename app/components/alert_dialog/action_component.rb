class AlertDialog::TriggerComponent < ViewComponent::Base
  renders_one :button_open, -> (**attrs, &block) do
    AlertDialog::ActionComponent.new(attrs, &block)
  end
  def initialize(attrs = {})
    @attrs = attrs
    @attrs[:variant] ||= "primary"
  end
end
