class Typography::ListItemComponent < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "leading-7"
    else
      "leading-7 #{@attrs[:class]}"
    end
  end
end
