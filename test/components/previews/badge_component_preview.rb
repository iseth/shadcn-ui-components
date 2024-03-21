class BadgeComponentPreview < ViewComponent::Preview
  def default
    render UI::Badge::Component.new do
      "Click me"
    end
  end

  def primary
    render UI::Badge::Component.new(variant: :primary) do
      "Click me"
    end
  end

  def outline
    render UI::Badge::Component.new(variant: :outline) do
      "Click me"
    end
  end

  def destructive
    render UI::Badge::Component.new(variant: :destructive) do
      "Click me"
    end
  end

  def warning
    render UI::Badge::Component.new(variant: :warning) do
      "Click me"
    end
  end

  def success
    render UI::Badge::Component.new(variant: :success) do
      "Click me"
    end
  end

  def red
    render UI::Badge::Component.new(variant: :red) do
      "Click me"
    end
  end

  def orange
    render UI::Badge::Component.new(variant: :orange) do
      "Click me"
    end
  end

  def amber
    render UI::Badge::Component.new(variant: :amber) do
      "Click me"
    end
  end

  def yellow
    render UI::Badge::Component.new(variant: :yellow) do
      "Click me"
    end
  end

  def lime
    render UI::Badge::Component.new(variant: :lime) do
      "Click me"
    end
  end

  def green
    render UI::Badge::Component.new(variant: :green) do
      "Click me"
    end
  end

  def emerald
    render UI::Badge::Component.new(variant: :emerald) do
      "Click me"
    end
  end

  def teal
    render UI::Badge::Component.new(variant: :teal) do
      "Click me"
    end
  end

  def cyan
    render UI::Badge::Component.new(variant: :cyan) do
      "Click me"
    end
  end

  def sky
    render UI::Badge::Component.new(variant: :sky) do
      "Click me"
    end
  end

  def blue
    render UI::Badge::Component.new(variant: :blue) do
      "Click me"
    end
  end

  def indigo
    render UI::Badge::Component.new(variant: :indigo) do
      "Click me"
    end
  end

  def violet
    render UI::Badge::Component.new(variant: :violet) do
      "Click me"
    end
  end

  def purple
    render UI::Badge::Component.new(variant: :purple) do
      "Click me"
    end
  end

  def fuchsia
    render UI::Badge::Component.new(variant: :fuchsia) do
      "Click me"
    end
  end

  def pink
    render UI::Badge::Component.new(variant: :pink) do
      "Click me"
    end
  end

  def rose
    render UI::Badge::Component.new(variant: :rose) do
      "Click me"
    end
  end

  def sm
    render UI::Badge::Component.new(size: :sm) do
      "Click me"
    end
  end

  def md
    render UI::Badge::Component.new(size: :md) do
      "Click me"
    end
  end

  def lg
    render UI::Badge::Component.new(size: :lg) do
      "Click me"
    end
  end

  def custom
    render UI::Badge::Component.new(variant: :primary, size: :sm, class: "inline-flex items-center rounded-md font-medium ring-1 ring-inset text-destructive bg-purple-500/10") do
      "Click me"
    end
  end
end
