class CheckboxComponent < ViewComponent::Base
  def initialize(id:, checked: false, label:, description: nil)
    @id = id
    @checked = checked
    @label = label
    @description = description
  end

  def call
    content_tag :div, class: 'flex items-center space-x-3' do
      render(PhlexUI::Checkbox.new(id: @id, checked: @checked)) +
      content_tag(:div) do
        content_tag(:label, @label, for: @id, class: 'text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70') +
        (@description ? content_tag(:p, @description, class: 'text-sm text-muted-foreground') : '')
      end
    end
  end
end
