class AccordionComponent < ViewComponent::Base
  renders_many :items, ->(title:, body:) do
    Accordion::ItemComponent.new
    # PostComponent.new(title: title, classes: "my-default-class " + classes)
  end

  def initialize()
    # @items = items
  end
end
