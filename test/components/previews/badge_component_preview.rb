class BadgeComponentPreview < ViewComponent::Preview
  def default
    render BadgeComponent.new(variant: :success, size: :sm, class: "inline-flex items-center rounded-md font-medium ring-1 ring-inset")do
    "Click me"
    end
  end
end
