class PhlexAvatarComponent < ViewComponent::Base
  def initialize(src: nil, alt: nil, initials: nil, size: :md)
    @src = src
    @alt = alt
    @initials = initials || "JD"
    @size = size
  end

  def call
    render PhlexUI::Avatar.new(size: @size) do
      if @src
        render PhlexUI::Avatar::Image.new(src: @src, alt: @alt || "Avatar")
      else
        render PhlexUI::Avatar::Fallback.new { @initials }
      end
    end
  end
end
