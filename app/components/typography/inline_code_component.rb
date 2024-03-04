class Typography::InlineCodeComponent < ViewComponent::Base
  def initialize(**attrs)
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "relative rounded bg-muted px-[0.3rem] py-[0.2rem] font-mono text-sm font-semibold"
    else
      "relative rounded bg-muted px-[0.3rem] py-[0.2rem] font-mono text-sm font-semibold #{@attrs[:class]}"
    end
  end
end
