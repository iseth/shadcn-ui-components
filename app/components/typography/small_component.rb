class Typography::SmallComponent < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "text-sm font-medium leading-none"
    else
      "text-sm font-medium leading-none #{@attrs[:class]}"
    end
  end
end
