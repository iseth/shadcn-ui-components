class Ui::Accordion::BuilderComponent < ViewComponent::Base
  renders_many :items, ->(title, content_text, open: false, &block) do
    render Ui::Accordion::ItemComponent.new(open) do |item_component|
      item_component.with_trigger do |trigger|
        trigger.with_default_trigger do
          title
        end
      end

      item_component.with_body do
        content_text
      end
    end
  end
end
