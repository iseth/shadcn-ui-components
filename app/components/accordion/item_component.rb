class Accordion::ItemComponent < ViewComponent::Base

  def initialize(open: false, rotate_icon: 180, **attrs)
    @open = open
    @rotate_icon = rotate_icon
    super(**attrs)
  end
end
