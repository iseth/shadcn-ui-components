class UI::Alert::Component < ViewComponent::Base
  renders_one :title
  renders_one :description
  renders_one :icon

  def initialize(variant: nil, **attrs)
    base_class = "backdrop-blur relative w-full ring-1 ring-inset rounded-lg px-4 py-4 text-sm [&>svg+div]:translate-y-[-3px] [&>svg]:absolute [&>svg]:left-4 [&>svg]:top-4 [&>svg~*]:pl-8"
    base_title = "mb-1 font-medium leading-none tracking-tight"
    base_description = "mb-1 font-medium leading-none tracking-tight"
    @variant = variant
    @variant_class = colors
    @attrs = attrs
    classes = "#{base_class} #{@variant_class} #{@attrs[:class]}"
    classes_title = "#{base_title} #{@attrs[:classTitle]}"
    classes_description = "#{base_description} #{@attrs[:classDescription]}"
    @attrs[:class] = classes
    @attrs[:classTitle] = classes_title
    @attrs[:classDescription] = classes_description
  end

  def colors
    case @variant
    when nil
      "ring-border bg-muted/20 text-foreground [&>svg]:opacity-80"
    when :warning
      "ring-warning/20 bg-warning/5 text-warning [&>svg]:text-warning/80"
    when :success
      "ring-success/20 bg-success/5 text-success [&>svg]:text-success/80"
    when :destructive
      "ring-destructive/20 bg-destructive/5 text-destructive [&>svg]:text-destructive/80"
    end
  end
end
