class UI::Codeblock::ClipboardComponent < ViewComponent::Base
  def initialize(success: "Copied!", error: "Copy Failed!", **attrs)
    base_classes = "relative"
    @success = success
    @error = error
    @attrs = attrs
    classes = "#{base_classes} #{@attrs[:class]}"
    @attrs[:class] = classes
  end
end
