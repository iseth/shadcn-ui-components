class AlertDialogComponent < ViewComponent::Base
  renders_one :trigger, -> (**attrs, &block) do
    render ButtonComponent.new(variant: attrs[:variant] || :primary) do |button|
      button.with_data do
        block.call
      end
    end
  end

  renders_one :data, -> (**attrs, &block)do
    render AlertDialog::ContentComponent.new(&block) do
      block.call
    end
  end

  def initialize(open: false, **attrs)
    @attrs = attrs
    @attrs[:class] ||= "inline-block"
  end
end
