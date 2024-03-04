class Typography::InlineLinkComponent < ViewComponent::Base
  def initialize(href: "#", **attrs) # rubocop:disable Lint/MissingSuper
    @href = href
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      "text-primary font-medium hover:underline underline-offset-4 cursor-pointer"
    else
      "text-primary font-medium hover:underline underline-offset-4 cursor-pointer #{@attrs[:class]}"
    end
  end
end
