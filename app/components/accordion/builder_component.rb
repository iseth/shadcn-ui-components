class Accordion::BuilderComponent < ViewComponent::Base
  # renders_many :items, Accordion::ItemComponent
  renders_many :items, -> (title, content_, open: false) do
    # binding.pry
    @open = open
    Accordion::DefaultTriggerComponent.new { "title" }
    # Accordion::DefaultTriggerComponent.new do
    #   "aa"
    # end
    # Accordion::ItemComponent.new(open: @open) do
    #   Accordion::TriggerComponent.new do
    #     Accordion::DefaultTriggerComponent.new { title }
    #   end
    #   Accordion::ContentComponent.new do
    #     Accordion::DefaultContentComponent.new { content }
    #   end
    # end
  end

  def initialize()

  end

  def add_item(title, content, open: false)
    render Accordion::ItemComponent.new(open: open) do
      render Accordion::TriggerComponent.new do
        render(Accordion::DefaultTriggerComponent.new) { title }
      end
      render Accordion::ContentComponent.new do
        render(Accordion::DefaultContentComponent.new){ content }
      end
    end
  end
end
