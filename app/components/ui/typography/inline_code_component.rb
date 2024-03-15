class Ui::Typography::InlineCodeComponent < ViewComponent::Base
  def initialize(**attrs)
    base_class = "relative rounded bg-muted px-[0.3rem] py-[0.2rem] font-mono text-sm font-semibold"
    @attrs = attrs
    classes = "#{base_class} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
