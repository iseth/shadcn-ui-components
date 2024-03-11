class AvatarComponentPreview < ViewComponent::Preview

  def builder_with_image
    render Avatar::BuilderComponent.new(src: "https://avatars.githubusercontent.com/u/246692?v=4", alt: "joeldrapper", initials: "JD")
  end

  def builder_without_image
    render Avatar::BuilderComponent.new(initials: "JD")
  end

  def image_and_fallback
  end

  def only_fallback
  end

  def sizes
  end

  def sizes_only_fallback
  end

end
