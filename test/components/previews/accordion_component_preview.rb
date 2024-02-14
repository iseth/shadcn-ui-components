# app/components/previews/my_view_component_preview.rb
class AccordionComponentPreview < ViewComponent::Preview
  def default
    render(AccordionComponent.new([
      { title: "Item 1", content: "Content 1" },
      { title: "Item 2", content: "Content 2" },
      { title: "Item 3", content: "Content 3" }
    ]))
  end

  def default1
    render Accordion::BuilderComponent.new do |accordion|
      accordion.add_item("Item 1", "Content 1")
      accordion.add_item("Item 2", "Content 2")
      accordion.add_item("Item 3", "Content 3")
    end
  end

  def builder_component
  end

  def item_component
    # render Accordion::ItemComponent.new(open: "false") do |component|
    #   component.with_trigger do
        
    #     render(Accordion::DefaultTriggerComponent.new) { "Title" }
    #   end
    #   # render Accordion::TriggerComponent.new do
    #   # end
    # end
  end

  def trigger
  end

  def default_trigger
  end

  def content_preview
  end

  def default_content
  end
end
