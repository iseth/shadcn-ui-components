class Typography::H2Component < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "scroll-m-20 text-2xl font-semibold tracking-tight transition-colors first:mt-0 pb-4 border-b"
    else
      "scroll-m-20 text-2xl font-semibold tracking-tight transition-colors first:mt-0 pb-4 border-b #{@attrs[:class]}"
    end
  end
end
