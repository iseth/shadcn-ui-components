class BadgeComponentPreview < ViewComponent::Preview
  def default
    render Ui::BadgeComponent.new do
      "Click me"
    end
  end

  def primary
    render Ui::BadgeComponent.new(variant: :primary) do
      "Click me"
    end
  end

  def outline
    render Ui::BadgeComponent.new(variant: :outline) do
      "Click me"
    end
  end

  def destructive
    render Ui::BadgeComponent.new(variant: :destructive) do
      "Click me"
    end
  end

  def warning
    render Ui::BadgeComponent.new(variant: :warning) do
      "Click me"
    end
  end

  def success
    render Ui::BadgeComponent.new(variant: :success) do
      "Click me"
    end
  end

  def red
    render Ui::BadgeComponent.new(variant: :red) do
      "Click me"
    end
  end

  def orange
    render Ui::BadgeComponent.new(variant: :orange) do
      "Click me"
    end
  end

  def amber
    render Ui::BadgeComponent.new(variant: :amber) do
      "Click me"
    end
  end

  def yellow
    render Ui::BadgeComponent.new(variant: :yellow) do
      "Click me"
    end
  end

  def lime
    render Ui::BadgeComponent.new(variant: :lime) do
      "Click me"
    end
  end

  def green
    render Ui::BadgeComponent.new(variant: :green) do
      "Click me"
    end
  end

  def emerald
    render Ui::BadgeComponent.new(variant: :emerald) do
      "Click me"
    end
  end

  def teal
    render Ui::BadgeComponent.new(variant: :teal) do
      "Click me"
    end
  end

  def cyan
    render Ui::BadgeComponent.new(variant: :cyan) do
      "Click me"
    end
  end

  def sky
    render Ui::BadgeComponent.new(variant: :sky) do
      "Click me"
    end
  end

  def blue
    render Ui::BadgeComponent.new(variant: :blue) do
      "Click me"
    end
  end

  def indigo
    render Ui::BadgeComponent.new(variant: :indigo) do
      "Click me"
    end
  end

  def violet
    render Ui::BadgeComponent.new(variant: :violet) do
      "Click me"
    end
  end

  def purple
    render Ui::BadgeComponent.new(variant: :purple) do
      "Click me"
    end
  end

  def fuchsia
    render Ui::BadgeComponent.new(variant: :fuchsia) do
      "Click me"
    end
  end

  def pink
    render Ui::BadgeComponent.new(variant: :pink) do
      "Click me"
    end
  end

  def rose
    render Ui::BadgeComponent.new(variant: :rose) do
      "Click me"
    end
  end

  def sm
    render Ui::BadgeComponent.new(size: :sm) do
      "Click me"
    end
  end

  def md
    render Ui::BadgeComponent.new(size: :md) do
      "Click me"
    end
  end

  def lg
    render Ui::BadgeComponent.new(size: :lg) do
      "Click me"
    end
  end

  def custom
    render Ui::BadgeComponent.new(variant: :primary, size: :sm, class: "inline-flex items-center rounded-md font-medium ring-1 ring-inset text-destructive bg-purple-500/10") do
      "Click me"
    end
  end
end
