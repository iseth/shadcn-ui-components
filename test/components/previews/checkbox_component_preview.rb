class CheckboxComponentPreview < ViewComponent::Preview
  def default
    render CheckboxComponent.new(id: "terms", checked: false, label: "Accept terms and conditions")
  end

  def checkbox_checked
    render CheckboxComponent.new(id: "terms1", checked: true, label: "Accept terms and conditions", description: "You agree to our Terms of Service and Privacy Policy.")
  end
end
