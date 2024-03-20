class UI::Typography::H2Component < ViewComponent::Base
  def initialize(**attrs)
    base_class = "scroll-m-20 text-2xl font-semibold tracking-tight transition-colors first:mt-0 pb-4 border-b"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
