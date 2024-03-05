class AlertDialog::FooterComponent < ViewComponent::Base
  renders_one :action
  renders_one :cancel
  def initialize(attrs = {}, &block)
    base_classes = "flex flex-col-reverse sm:flex-row sm:justify-end sm:space-x-2"
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
