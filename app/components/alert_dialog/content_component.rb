class AlertDialog::ContentComponent < ViewComponent::Base

  def initialize(attrs = {}, &block)
    @content = block
  end
end
