class AlertDialog::HeaderComponent < ViewComponent::Base
  renders_one :title
  renders_one :description
  def initialize(attrs = {}, &block)
  base_classes = "flex flex-col space-y-2 text-center sm:text-left"
  @attrs = attrs
  classes = "#{base_classes} #{@attrs[:class]}"
  @attrs[:class] = classes
  end
end
