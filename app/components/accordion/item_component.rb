class Accordion::ItemComponent < ViewComponent::Base
  renders_one :trigger, Accordion::TriggerComponent
  renders_one :body, Accordion::ContentComponent

  def initialize(open: false, rotate_icon: 180, **attrs)
    @open = open
    @rotate_icon = rotate_icon
  end
end
