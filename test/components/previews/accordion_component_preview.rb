# app/components/previews/my_view_component_preview.rb
class AccordionComponentPreview < ViewComponent::Preview
  def default
    render Accordion::BuilderComponent.new do |accordion|
      accordion.with_item("Item 1", "Content 1")
      accordion.with_item("Item 2", "Content 2")
      accordion.with_item("Item 3", "Content 3")
    end
  end

  def custom
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
