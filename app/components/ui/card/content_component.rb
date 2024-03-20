class UI::Card::ContentComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "p-6 pt-0"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
