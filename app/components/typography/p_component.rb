class Typography::PComponent < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "leading-7 [&:not(:first-child)]:mt-6"
    else
      "leading-7 [&:not(:first-child)]:mt-6 #{@attrs[:class]}"
    end
  end
end
