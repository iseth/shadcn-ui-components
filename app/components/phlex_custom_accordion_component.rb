class PhlexCustomAccordionComponent < ViewComponent::Base
  def initialize(items)
    @items = items
  end

  def call
    render PhlexUI::Accordion.new(class: 'space-y-1') do
      safe_join(@items.map do |item|
        render PhlexUI::Accordion::Item.new(
          class!: "data-[accordion-open-value=true]:bg-muted hover:bg-muted rounded-lg pb-3",
          rotate_icon: 135
        ) do
          safe_join([
            render(PhlexUI::Accordion::Trigger.new(class!: "w-full") do
              content_tag :div, class: "p-6 pb-3 pl-16 relative text-left" do
                safe_join([
                  render(PhlexUI::Accordion::Icon.new(class: "absolute left-6 top-6") do
                    item[:icon].call
                  end),
                  content_tag(:p, item[:title], class: "font-medium")
                ])
              end
            end),
            render(PhlexUI::Accordion::Content.new do
              content_tag :p, item[:content], class: "pl-16 pr-4 pb-4 text-muted-foreground"
            end)
          ])
        end
      end)
    end
  end
end
