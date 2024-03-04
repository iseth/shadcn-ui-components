class Typography::H3Component < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "scroll-m-20 text-xl font-semibold tracking-tight"
    else
      "scroll-m-20 text-xl font-semibold tracking-tight #{@attrs[:class]}"
    end
  end
end
