class UI::AlertDialog::Component < ViewComponent::Base
  renders_one :trigger

  renders_one :header, ->(title, content_text, **attrs, &block) do
    render UI::AlertDialog::HeaderComponent.new(**attrs) do |header|
      header.with_title do
        title
      end
      header.with_description do
        content_text
      end
    end
  end

  renders_one :footer, ->(cancel_component, **attrs, &block) do
    render UI::AlertDialog::FooterComponent.new(**attrs, &block) do |footer|
      footer.with_cancel do
        cancel_component
      end
      block.call
    end
  end

  def initialize(open: false, **attrs)
    base_classes = "inline-block"
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
