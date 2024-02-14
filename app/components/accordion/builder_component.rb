class Accordion::BuilderComponent < ViewComponent::Base
  # renders_many :items, Accordion::ItemComponent
  renders_many :items, -> (title, content_text, open: false) do
    # binding.pry
    @open = open
    # Accordion::DefaultTriggerComponent.new { "title" }
    add_item(title, content_text)

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

  def add_item(title, content_text, open: false)
    @open = open
    render Accordion::ItemComponent.new(open: false) do |component|
      # "ssssssssssssss"
      # "pppppppppppppp"

      # render Accordion::TriggerComponent.new do
      #   render(Accordion::DefaultTriggerComponent.new) { title }
      # end
      # render Accordion::ContentComponent.new do
      #   render(Accordion::DefaultContentComponent.new) { content_text }
      # end
    end
  end

  def initialize()

  end

  # def add_item(title, content, open: false)
  #   render Accordion::ItemComponent.new(open: open) do
  #     render Accordion::TriggerComponent.new do
  #       render(Accordion::DefaultTriggerComponent.new) { title }
  #     end
  #     render Accordion::ContentComponent.new do
  #       render(Accordion::DefaultContentComponent.new){ content }
  #     end
  #   end
  # end
end
