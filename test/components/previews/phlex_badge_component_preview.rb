class PhlexBadgeComponentPreview < ViewComponent::Preview
  def default
    render PhlexBadgeComponent.new(text: "Success", variant: :success, size: :sm)
  end
end
