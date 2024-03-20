class UI::Typography::H1Component < ViewComponent::Base
  def initialize(**attrs)
    base_class = "scroll-m-20 text-3xl font-bold leading-normal lg:leading-normal tracking-tight lg:text-4xl"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
