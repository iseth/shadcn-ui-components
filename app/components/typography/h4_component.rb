class Typography::H4Component < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "scroll-m-20 text-lg font-medium tracking-tight"
    else
      "scroll-m-20 text-lg font-medium tracking-tight #{@attrs[:class]}"
    end
  end
end
