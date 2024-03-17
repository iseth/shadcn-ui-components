class Ui::TabsComponent < ViewComponent::Base
  def initialize(default: nil, **attrs)
    @default = default
    @attrs = attrs
  end
end
