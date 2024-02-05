class AvatarComponent < ViewComponent::Base
  def initialize(src: nil, alt: nil, initials: nil, size: :md)
    @src = src
    @alt = alt
    @initials = initials || "JD"
    @size = size
  end

  def call
    puts "SRC: #{@src}" # Imprime el valor de src
    render PhlexUI::Avatar.new(size: @size) do
      if @src
        puts "entro"
        render PhlexUI::Avatar::Image.new(src: @src, alt: @alt || "Avatar")
      else
        render PhlexUI::Avatar::Fallback.new { @initials }
      end
    end
  end
end
