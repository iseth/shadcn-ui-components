class AccordionComponent < ViewComponent::Base
  renders_many :items, Accordion::ItemComponent

  def initialize()
    # @items = items
  end
end
