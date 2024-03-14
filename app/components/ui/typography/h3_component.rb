class Ui::Typography::H3Component < ViewComponent::Base
  def initialize(**attrs)
    base_class = "scroll-m-20 text-xl font-semibold tracking-tight"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
