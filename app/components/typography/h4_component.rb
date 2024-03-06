class Typography::H4Component < ViewComponent::Base
  def initialize(**attrs)
    base_class = "scroll-m-20 text-lg font-medium tracking-tight"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
