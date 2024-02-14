class Accordion::TriggerComponent < ViewComponent::Base
  renders_one :default_trigger, Accordion::DefaultTriggerComponent
end
