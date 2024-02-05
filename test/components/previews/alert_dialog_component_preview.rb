class AlertDialogComponentPreview < ViewComponent::Preview
  def default
    render AlertDialogComponent.new(
      trigger_text: "Click me",
      title: "Are you sure?",
      description: "This action cannot be undone.",
      cancel_text: "No, go back",
      action_text: "Yes, continue"
    )
  end
end
