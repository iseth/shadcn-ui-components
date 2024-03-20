class UI::Card::HeaderComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "flex flex-col space-y-1.5 p-6"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
