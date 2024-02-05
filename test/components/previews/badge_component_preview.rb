class BadgeComponentPreview < ViewComponent::Preview
  def default
    render BadgeComponent.new(text: "Success", variant: :success, size: :sm)
  end
end
