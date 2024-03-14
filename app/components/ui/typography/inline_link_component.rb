class Ui::Typography::InlineLinkComponent < ViewComponent::Base
  def initialize(href: "#", **attrs) # rubocop:disable Lint/MissingSuper
    @href = href
    base_class = "text-primary font-medium hover:underline underline-offset-4 cursor-pointer"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
