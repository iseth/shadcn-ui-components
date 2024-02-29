class CheckboxComponent < ViewComponent::Base
  def initialize(id:, label:, checked: false, description: nil)
    @id = id
    @checked = checked
    @label = label
    @description = description
  end
end
