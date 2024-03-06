class Typography::LargeComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "text-lg font-semibold"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
