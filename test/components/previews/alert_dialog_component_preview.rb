class AlertDialogComponentPreview < ViewComponent::Preview
  def default
    render(AlertDialogComponent.new) do |component|
      component.with_trigger(variant: :primary) do
        'click me'
      end
      component.with_data do
        'hola'
      end
    end
  end
end
