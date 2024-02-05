# test/components/previews/custom_accordion_component_preview.rb
class CustomAccordionComponentPreview < ViewComponent::Preview
  def default
    items = [
      {
        title: "What is PhlexUI?",
        content: "PhlexUI is a UI component library for Ruby devs who want to build better, faster.",
        icon: -> { tag.svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", stroke_width: "1.5", stroke: "currentColor", class: "w-6 h-6" do
          tag.path stroke_linecap: "round", stroke_linejoin: "round", d: "M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
        end }
      },
      {
        title: "Can I use it with Rails?",
        content: "Yes, PhlexUI is pure Ruby and works great with Rails. It's a Ruby gem that you can install into your Rails app.",
        icon: -> { tag.svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", stroke_width: "1.5", stroke: "currentColor", class: "w-6 h-6" do
          tag.path stroke_linecap: "round", stroke_linejoin: "round", d: "M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
        end }
      }
    ]

    render(CustomAccordionComponent.new(items))
  end
end
