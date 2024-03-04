class Typography::MutedComponent < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "text-sm text-muted-foregroundd"
    else
      "text-sm text-muted-foregroundd #{@attrs[:class]}"
    end
  end
end
