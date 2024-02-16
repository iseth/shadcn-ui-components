class Accordion::BuilderComponent < ViewComponent::Base
  renders_many :items, -> (title, content_text, open: false, &block) do
    @open = open

    AccordionComponent.new do |accordion|
      accordion.with_item(open: false) do |component|
        component.with_trigger do |trigger|
          trigger.with_default_trigger do
            Title000
          end
        end

        component.with_body do |body|
          body.with_default_content do
            Content
          end
        end
      end
    end

    # add_item(title, content_text, open: open, &block)
  end

  def initialize
  end

  def add_item(title, content_text, open: false, &block)
  end
end
