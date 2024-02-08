# app/components/previews/my_view_component_preview.rb
class AccordionComponentPreview < ViewComponent::Preview
  def default
    render(AccordionComponent.new([
      { title: "Item 1", content: "Content 1" },
      { title: "Item 2", content: "Content 2" },
      { title: "Item 3", content: "Content 3" }
    ]))
  end
end
