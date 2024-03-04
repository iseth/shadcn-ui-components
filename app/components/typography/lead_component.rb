class Typography::LeadComponent < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "text-xl text-muted-foreground"
    else
      "text-xl text-muted-foreground #{@attrs[:class]}"
    end
  end
end
