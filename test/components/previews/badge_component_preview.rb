class BadgeComponentPreview < ViewComponent::Preview

  def default
    render BadgeComponent.new()do
    "Click me"
    end
  end

  def primary
    render BadgeComponent.new(variant: :primary)do
    "Click me"
    end
  end

  def outline
    render BadgeComponent.new(variant: :outline)do
    "Click me"
    end
  end

  def destructive
    render BadgeComponent.new(variant: :destructive)do
    "Click me"
    end
  end

  def warning
    render BadgeComponent.new(variant: :warning)do
    "Click me"
    end
  end

  def success
    render BadgeComponent.new(variant: :success)do
    "Click me"
    end
  end


  def red
  render BadgeComponent.new(variant: :red)do
  "Click me"
    end
  end

  def orange
  render BadgeComponent.new(variant: :orange) do
    "Click me"
    end
  end

  def amber
  render BadgeComponent.new(variant: :amber) do
    "Click me"
    end
  end
  def yellow
  render BadgeComponent.new(variant: :yellow) do
    "Click me"
    end
  end

  def lime
  render BadgeComponent.new(variant: :lime) do
    "Click me"
    end
  end

  def green
  render BadgeComponent.new(variant: :green) do
    "Click me"
    end
  end

  def emerald
  render BadgeComponent.new(variant: :emerald) do
    "Click me"
    end
  end

  def teal
  render BadgeComponent.new(variant: :teal) do
    "Click me"
    end
  end

  def cyan
  render BadgeComponent.new(variant: :cyan) do
    "Click me"
    end
  end

  def sky
  render BadgeComponent.new(variant: :sky) do
    "Click me"
    end
  end

  def blue
  render BadgeComponent.new(variant: :blue) do
  "Click me"
    end
  end

  def indigo
  render BadgeComponent.new(variant: :indigo) do
    "Click me"
    end
  end

  def violet
  render BadgeComponent.new(variant: :violet) do
    "Click me"
    end
  end

  def purple
  render BadgeComponent.new(variant: :purple) do
    "Click me"
    end
  end

  def fuchsia
  render BadgeComponent.new(variant: :fuchsia)do
  "Click me"
    end
  end

  def pink
  render BadgeComponent.new(variant: :pink) do
    "Click me"
    end
  end

  def rose
  render BadgeComponent.new(variant: :rose) do
    "Click me"
    end
  end

  def sm
  render BadgeComponent.new(size: :sm) do
    "Click me"
    end
  end
  def md
  render BadgeComponent.new(size: :md) do
    "Click me"
    end
  end
  def lg
  render BadgeComponent.new(size: :lg) do
    "Click me"
    end
  end

  def custom
    render BadgeComponent.new(variant: :primary, size: :sm, class: "inline-flex items-center rounded-md font-medium ring-1 ring-inset text-destructive bg-purple-500/10")do
    "Click me"
    end
  end
end
