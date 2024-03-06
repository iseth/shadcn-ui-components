class AlertComponentPreview < ViewComponent::Preview

  def default
    render(Alert::BuilderAlertComponent.new()) do |component|
      component.with_icon do
        "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='currentColor' class='w-5 h-5'><path fill_rule='evenodd' d='M9.315 7.584C12.195 3.883 16.695 1.5 21.75 1.5a.75.75 0 01.75.75c0 5.056-2.383 9.555-6.084 12.436A6.75 6.75 0 019.75 22.5a.75.75 0 01-.75-.75v-4.131A15.838 15.838 0 016.382 15H2.25a.75.75 0 01-.75-.75 6.75 6.75 0 017.815-6.666zM15 6.75a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5z' clip_rule='evenodd' /></svg>".html_safe
      end
      component.with_title do
        "Title"
      end
      component.with_description do
        "With PhlexUI you'll ship faster."
      end
    end
  end

  def with_without_icon
    render(Alert::BuilderAlertComponent.new()) do |component|
      component.with_title do
        "Pro tip"
      end
      component.with_description do
        "Simply, don't include an icon and your alert will look like this."
      end
    end
  end

  def with_warning_variant
    render(Alert::BuilderAlertComponent.new(variant: :warning)) do |component|
      component.with_icon do
        "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='currentColor' class='w-5 h-5'><path fill-rule='evenodd' d='M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zm8.706-1.442c1.146-.573 2.437.463 2.126 1.706l-.709 2.836.042-.02a.75.75 0 01.67 1.34l-.04.022c-1.147.573-2.438-.463-2.127-1.706l.71-2.836-.042.02a.75.75 0 11-.671-1.34l.041-.022zM12 9a.75.75 0 100-1.5.75.75 0 000 1.5z' clip-rule='evenodd'></path></svg>".html_safe
      end
      component.with_title do
        "Ship often"
      end
      component.with_description do
        "Shipping is good, your users will thank you for it."
      end
    end
  end

  def with_destructive_variant
    render(Alert::BuilderAlertComponent.new(variant: :destructive)) do |component|
      component.with_icon do
        "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='currentColor' class='w-5 h-5'><path fill-rule='evenodd' d='M9.401 3.003c1.155-2 4.043-2 5.197 0l7.355 12.748c1.154 2-.29 4.5-2.599 4.5H4.645c-2.309 0-3.752-2.5-2.598-4.5L9.4 3.003zM12 8.25a.75.75 0 01.75.75v3.75a.75.75 0 01-1.5 0V9a.75.75 0 01.75-.75zm0 8.25a.75.75 0 100-1.5.75.75 0 000 1.5z' clip-rule='evenodd'></path></svg>".html_safe
      end
      component.with_title do
        "Oopsie daisy!"
      end
      component.with_description do
        "Your design system is non-existent."
      end
    end
  end

  def with_success_variant
    render(Alert::BuilderAlertComponent.new(variant: :success)) do |component|
      component.with_icon do
        "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='currentColor' class='w-5 h-5'><path fill-rule='evenodd' d='M2.25 12c0-5.385 4.365-9.75 9.75-9.75s9.75 4.365 9.75 9.75-4.365 9.75-9.75 9.75S2.25 17.385 2.25 12zm13.36-1.814a.75.75 0 10-1.22-.872l-3.236 4.53L9.53 12.22a.75.75 0 00-1.06 1.06l2.25 2.25a.75.75 0 001.14-.094l3.75-5.25z' clip-rule='evenodd'></path></svg>".html_safe
      end
      component.with_title do
        "Installation"
      end
      component.with_description do
        "You're all set to start using PhlexUI in your application."
      end
    end
  end

  def custom
    render(Alert::BuilderAlertComponent.new(classDescription: "text-lg",classTitle: 'text-lg',class: 'bg-red-500')) do |component|
      component.with_icon do
        "<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='currentColor' class='w-5 h-5'><path fill_rule='evenodd' d='M9.315 7.584C12.195 3.883 16.695 1.5 21.75 1.5a.75.75 0 01.75.75c0 5.056-2.383 9.555-6.084 12.436A6.75 6.75 0 019.75 22.5a.75.75 0 01-.75-.75v-4.131A15.838 15.838 0 016.382 15H2.25a.75.75 0 01-.75-.75 6.75 6.75 0 017.815-6.666zM15 6.75a2.25 2.25 0 100 4.5 2.25 2.25 0 000-4.5z' clip_rule='evenodd' /></svg>".html_safe
      end
      component.with_title do
        "Title"
      end
      component.with_description do
        "With PhlexUI you'll ship faster."
      end
    end
  end

end
