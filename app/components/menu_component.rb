class MenuComponent < ViewComponent::Base
  def initialize
  end

  def getting_started_links
    [
      {name: "Introduction", path: "#"},
      {name: "Installation", path: "#"},
      {name: "Core concepts", path: "#"},
      {name: "Dark mode", path: "#"},
      {name: "Theming", path: "#"},
      {name: "Customizing components", path: "#"}
    ]
  end

  def installation_links
    [
      {name: "Rails - JS Bundler", path: "#"},
      {name: "Rails - Importmaps", path: "#"}
    ]
  end

  def components
    [
      {name: "Accordion", path: "#"},
      {name: "Alert", path: "#"},
      {name: "Alert Dialog", path: "#"}
    ]
  end

  def components_coming_soon
    [
      {name: "Autosave", path: "#"},
      {name: "Carousel", path: "#"},
      {name: "Chart", path: "#"},
      {name: "Clipboard", path: "#"},
      {name: "Color Picker", path: "#"},
      {name: "Combobox", path: "#"},
      {name: "Data Table", path: "#"},
      {name: "Form", path: "#"},
      {name: "Menu Bar", path: "#"},
      {name: "Multi Select", path: "#"},
      {name: "Navigation Menu", path: "#"},
      {name: "Progress", path: "#"},
      {name: "Radio Group", path: "#"},
      {name: "Read more", path: "#"},
      {name: "Rich text editor", path: "#"},
      {name: "Scroll Area", path: "#"},
      {name: "Select", path: "#"},
      {name: "Separator", path: "#"},
      {name: "Skeleton Loader", path: "#"},
      {name: "Slider", path: "#"},
      {name: "Switch", path: "#"},
      {name: "Textarea (Autogrow)", path: "#"},
      {name: "Toast (Swipe to dismiss)", path: "#"},
      {name: "Toggle", path: "#"},
      {name: "Turbo Dialog / Modal", path: "#"},
      {name: "Video Player", path: "#"}
    ]
  end

  def menu_link(component)
    return unless component # Verificar si component es nil

    component[:premium] ||= false
    current_path = component[:path] == helpers.request.path
    link_to component[:path], class: css_classes(current_path) do
      content_tag :span, class: "flex items-center gap-x-1" do
        concat content_tag(:span, component[:name])
        if component[:badge]
          concat render(Ui::BadgeComponent.new(variant: :success, size: :sm, class: "ml-1")) { component[:badge] }
        end
      end
    end
  end

  def main_link(name, path)
    current_path = path == helpers.request.path
    link_to(href: path, class: css_classes(current_path ? "group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:underline text-foreground font-medium" : "group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:underline text-muted-foreground")) do
      name
    end
  end



  def premium_status(component)
    if component[:premium]
      svg(
        xmlns: "http://www.w3.org/2000/svg",
        viewbox: "0 0 24 24",
        fill: "currentColor",
        class: "w-3 h-3 text-violet-500 ml-2"
      ) do |s|
        s.path(
          fill_rule: "evenodd",
          d:
            "M12 1.5a5.25 5.25 0 00-5.25 5.25v3a3 3 0 00-3 3v6.75a3 3 0 003 3h10.5a3 3 0 003-3v-6.75a3 3 0 00-3-3v-3c0-2.9-2.35-5.25-5.25-5.25zm3.75 8.25v-3a3.75 3.75 0 10-7.5 0v3h7.5z",
          clip_rule: "evenodd"
        )
      end
    end
  end

  private
  def css_classes(current_path)
    base_classes = "group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:underline"
    if current_path
      base_classes + " text-foreground font-medium"
    else
      base_classes + " text-muted-foreground"
    end
  end


end
