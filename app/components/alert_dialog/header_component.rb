class AlertDialog::HeaderComponent < ViewComponent::Base
  renders_one :title
  renders_one :description
  def initialize(attrs = {}, &block)
  end
end
