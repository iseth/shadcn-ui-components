class FlashesComponent < ViewComponent::Base
  def initialize(notice: nil, alert: nil)
    @notice = notice
    @alert = alert
  end
end
