class AlertDialog::FooterComponent < ViewComponent::Base
  renders_one :action
  renders_one :cancel
  def initialize(attrs = {}, &block)
  end
end
