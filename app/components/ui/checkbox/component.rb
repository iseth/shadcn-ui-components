class UI::Checkbox::Component < ViewComponent::Base
  def initialize(**attrs)
    base_classes = "peer h-4 w-4 shrink-0 rounded-sm border border-primary ring-offset-background focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50 accent-primary"
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
    @other_attrs = @attrs.except(:class, :checked).map { |k, v| "#{k}=\"#{v}\"" }.join(" ")
    @checked = @attrs[:checked] ? "checked" : ""
  end
end
