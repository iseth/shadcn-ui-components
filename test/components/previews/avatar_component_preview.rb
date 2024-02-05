class AvatarComponentPreview < ViewComponent::Preview
  def default
    render AvatarComponent.new(
      src: "https://avatars.githubusercontent.com/u/246692?v=4",
      alt: "Descripción del avatar",
      initials: "JD",
      size: :lg
    )
  end

  def only_fallback
    render AvatarComponent.new(
      alt: "Descripción del avatar",
      initials: "JD",
      size: :lg
    )
  end

  def size_xs
    render AvatarComponent.new(
      src: "https://avatars.githubusercontent.com/u/246692?v=4",
      alt: "Descripción del avatar",
      initials: "JD",
      size: :xs
    )
  end

  def size_sm
    render AvatarComponent.new(
      src: "https://avatars.githubusercontent.com/u/246692?v=4",
      alt: "Descripción del avatar",
      initials: "JD",
      size: :sm
    )
  end

  def size_md
    render AvatarComponent.new(
      src: "https://avatars.githubusercontent.com/u/246692?v=4",
      alt: "Descripción del avatar",
      initials: "JD",
      size: :md
    )
  end

  def size_lg
    render AvatarComponent.new(
      src: "https://avatars.githubusercontent.com/u/246692?v=4",
      alt: "Descripción del avatar",
      initials: "JD",
      size: :lg
    )
  end

  def size_xl
    render AvatarComponent.new(
      src: "https://avatars.githubusercontent.com/u/246692?v=4",
      alt: "Descripción del avatar",
      initials: "JD",
      size: :xl
    )
  end

end
