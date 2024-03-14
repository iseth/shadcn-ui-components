class TypographyComponentPreview < ViewComponent::Preview
  def h1
  end

  def h2
  end

  def h3
  end

  def h4
  end

  def p
    render(Ui::Typography::PComponent.new) do
      "This is an P tag"
    end
  end

  def inline_link
  end

  def list
    render(Ui::Typography::ListComponent.new(items: [
      "Phlex is fast",
      "Phlex is easy to use",
      "Phlex is awesome"
    ]))
  end

  def numbered_list
    render(Ui::Typography::ListComponent.new(items: [
      "Phlex is fast",
      "Phlex is easy to use",
      "Phlex is awesome"
    ], numbered: true))
  end

  def inline_code
    render(Ui::Typography::InlineCodeComponent.new) do
      "This is an inline code block"
    end
  end

  def lead
    render(Ui::Typography::LeadComponent.new) do
      "A modal dialog that interrupts the user with important content and expects a response."
    end
  end

  def large
    render(Ui::Typography::LargeComponent.new) do
      "Are you sure absolutely sure?"
    end
  end

  def small
    render(Ui::Typography::SmallComponent.new) do
      "Email address"
    end
  end

  def muted
    render(Ui::Typography::MutedComponent.new) do
      "Enter your email address."
    end
  end
end
