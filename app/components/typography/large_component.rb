class Typography::LargeComponent < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "text-lg font-semibold"
    else
      "text-lg font-semibold #{@attrs[:class]}"
    end
  end
end
