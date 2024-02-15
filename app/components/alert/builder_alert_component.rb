class Alert::BuilderAlertComponent < ViewComponent::Base
  renders_one :title
  renders_one :description

  def initialize(variant: nil, title: nil, description: nil)
    @variant_class = colors
    @title = title
    @description = description
    puts "Title: #{@title}"
    puts "Description: #{@description}"
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
