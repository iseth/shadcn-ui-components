class AlertDialogComponent < ViewComponent::Base
  renders_one :trigger, -> (**attrs, &block) do
    render ButtonComponent.new(variant: attrs[:variant] || :primary) do |button|
      button.with_data do
        block.call
      end
    end
  end

  # renders_one :data, -> (**attrs, &block)do
  #   render AlertDialog::ContentComponent.new do |content|
  #     content.with_header do
  #       block.call
  #     end
  #   end
  # end

  renders_one :header, -> (title, content_text, **attrs, &block) do
    render AlertDialog::HeaderComponent.new() do |header|
      header.with_title do
        title
      end
      header.with_description do
        content_text
      end
    end
  end

  renders_one :footer, -> (cancel, action, **attrs, &block) do
    render AlertDialog::FooterComponent.new() do |footer|
      footer.with_cancel do
        cancel
      end
      footer.with_action do
        action
      end
    end
  end

  def initialize(open: false, **attrs)
    @attrs = attrs
    @attrs[:class] ||= "inline-block"
  end
end
