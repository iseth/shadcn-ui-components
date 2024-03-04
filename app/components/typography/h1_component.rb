class Typography::H1Component < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "scroll-m-20 text-3xl font-bold leading-normal lg:leading-normal tracking-tight lg:text-4xl"
    else
      "scroll-m-20 text-3xl font-bold leading-normal lg:leading-normal tracking-tight lg:text-4xl #{@attrs[:class]}"
    end
  end
end
