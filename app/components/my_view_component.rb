class MyViewComponent < ViewComponent::Base
    def initialize(items)
      @items = items
    end
  
    def call
      render PhlexUI::Accordion::Builder.new do |accordion|
        @items.each do |item|
          accordion.add_item(item[:title], item[:content])
        end
      end
    end
  end
  