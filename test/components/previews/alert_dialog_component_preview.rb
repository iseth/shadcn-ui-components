class AlertDialogComponentPreview < ViewComponent::Preview
  def default
    render(AlertDialogComponent.new) do |component|
      component.with_trigger(variant: :primary) do
        'click me'
      end
      # component.with_data do |dataComponent|
      #   'a'
      # end
      component.with_header('title','description')
      component.with_footer('cancel','action')

    end
  end
end
