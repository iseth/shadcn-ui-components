class Typography::ListComponent < ViewComponent::Base
  def initialize(items: [], numbered: false, **attrs)
    @items = items
    @numbered = numbered
    @attrs = attrs
    @attrs[:class] = if @attrs[:class].nil?
      class_string(numbered)
    else
      "#{class_string(numbered)} #{@attrs[:class]}"
    end
  end

  private

  def class_string(numbered)
    base_classes = "my-6 ml-6 [&>li]:mt-2 [&>li]:pl-2"
    list_style = numbered ? "list-decimal marker:font-medium" : "list-disc"
    "#{base_classes} #{list_style}"
  end
end
