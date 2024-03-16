# frozen_string_literal: true

class Shared::Menu < ApplicationComponent
  def template
    div(class: "pb-4") do
      # Main routes (Docs, Components, Themes, Github, Discord, Twitter)
      div(class: "md:hidden") do
        # main_link("Docs", "#")
        # main_link("Components", "#")
        # main_link("Themes", "#")
        # main_link("Github", "#"])
        # main_link("Discord", "#")
        # main_link("Twitter", "#")
      end

      # GETTING STARTED
      h4(class: "mb-1 mt-4 rounded-md px-2 py-1 text-sm font-semibold") { "Getting Started" }
      div(class: "grid grid-flow-row auto-rows-max text-sm") do
        getting_started_links.each do |getting_started|
          menu_link(getting_started)
        end
      end

      # INSTALLATION
      h4(class: "mb-1 mt-4 rounded-md px-2 py-1 text-sm font-semibold") { "Installation" }
      div(class: "grid grid-flow-row auto-rows-max text-sm") do
        installation_links.each do |installation|
          menu_link(installation)
        end
      end

      # COMPONENTS
      h4(class: "mb-1 mt-4 rounded-md px-2 py-1 text-sm font-semibold flex items-center gap-x-2") do
        plain "Components"
        # render BadgeComponent.new(variant: :primary, size: :sm) do
        #   components.count.to_s
        # end
      end
      div(class: "grid grid-flow-row auto-rows-max text-sm") do
        components.each do |component|
          menu_link(component)
        end
      end

      # COMPONENTS COMING SOON
      h4(class: "mb-1 mt-4 rounded-md px-2 py-1 text-sm font-semibold flex items-center gap-x-2") do
        plain "Coming Soon"
        # render BadgeComponent.new(variant: :primary, size: :sm) do
        #   components_coming_soon.count.to_s
        # end
        # svg(
        #   xmlns: "http://www.w3.org/2000/svg",
        #   viewbox: "0 0 24 24",
        #   fill: "currentColor",
        #   class: "w-4 h-4 text-amber-400"
        # ) do |s|
        #   s.path(
        #     fill_rule: "evenodd",
        #     d:
        #       "M9 4.5a.75.75 0 01.721.544l.813 2.846a3.75 3.75 0 002.576 2.576l2.846.813a.75.75 0 010 1.442l-2.846.813a3.75 3.75 0 00-2.576 2.576l-.813 2.846a.75.75 0 01-1.442 0l-.813-2.846a3.75 3.75 0 00-2.576-2.576l-2.846-.813a.75.75 0 010-1.442l2.846-.813A3.75 3.75 0 007.466 7.89l.813-2.846A.75.75 0 019 4.5zM18 1.5a.75.75 0 01.728.568l.258 1.036c.236.94.97 1.674 1.91 1.91l1.036.258a.75.75 0 010 1.456l-1.036.258c-.94.236-1.674.97-1.91 1.91l-.258 1.036a.75.75 0 01-1.456 0l-.258-1.036a2.625 2.625 0 00-1.91-1.91l-1.036-.258a.75.75 0 010-1.456l1.036-.258a2.625 2.625 0 001.91-1.91l.258-1.036A.75.75 0 0118 1.5zM16.5 15a.75.75 0 01.712.513l.394 1.183c.15.447.5.799.948.948l1.183.395a.75.75 0 010 1.422l-1.183.395c-.447.15-.799.5-.948.948l-.395 1.183a.75.75 0 01-1.422 0l-.395-1.183a1.5 1.5 0 00-.948-.948l-1.183-.395a.75.75 0 010-1.422l1.183-.395c.447-.15.799-.5.948-.948l.395-1.183A.75.75 0 0116.5 15z",
        #     clip_rule: "evenodd"
        #   )
        # end
      end

      div(class: "grid grid-flow-row auto-rows-max text-sm") do
        # components_coming_soon.each do |component|
        #   menu_link(component)
        # end
      end
    end
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
    a(href: component[:path], class: tokens("group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:underline", -> { current_path } => "text-foreground font-medium", -> { !current_path } => "text-muted-foreground")) do
      span(class: "flex items-center gap-x-1") do
        span { component[:name] }
        if component[:badge]
          render BadgeComponent.new(variant: :success, size: :sm, class: "ml-1") do
            component[:badge]
          end
        end
      end
    end
  end

  # def main_link(name, path)
  #   current_path = path == helpers.request.path
  #   a(href: path, class: tokens("group flex w-full items-center rounded-md border border-transparent px-2 py-1 hover:underline", -> { current_path } => "text-foreground font-medium", -> { !current_path } => "text-muted-foreground")) do
  #     name
  #   end
  # end

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
end
