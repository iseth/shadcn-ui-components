# frozen_string_literal: true

class LinkComponentPreview < ViewComponent::Preview
  def default
    render(LinkComponent.new) do
      "Click me"
    end
  end

  def primary
    render(LinkComponent.new(href: '#', variant: :primary)) do
      "Click me"
    end
  end

  def destructive
    render(LinkComponent.new(href: "#", variant: :destructive)) do
      "Click me"
    end
  end

  def outline
    render(LinkComponent.new(href: "#", variant: :outline)) do
      "Click me"
    end
  end

  def ghost
    render(LinkComponent.new(href: "#", variant: :ghost)) do
      "Click me"
    end
  end

  def link
    render(LinkComponent.new(href: "#", variant: :link)) do
      "Click me"
    end
  end

  def icon
    render(LinkComponent.new(href: "#", variant: :outline, icon: true)) do |component|
      component.with_icon do
        tag.svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 20 20", fill: "currentColor", class: "w-5 h-5" do
          tag.path fill_rule: "evenodd", d: "M7.21 14.77a.75.75 0 01.02-1.06L11.168 10 7.23 6.29a.75.75 0 111.04-1.08l4.5 4.25a.75.75 0 010 1.08l-4.5 4.25a.75.75 0 01-1.06-.02z", clip_rule: "evenodd"
        end
      end
    end
  end

  def with_icon_and_text
    render(LinkComponent.new(href: "#", variant: :primary, icon: true)) do |component|
      component.with_icon do
        tag.svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", stroke_width: "1.5", stroke: "currentColor", class: "w-4 h-4 mr-2" do
          tag.path fill_rule: "evenodd", d: "M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75", clip_rule: "evenodd"
        end
      end

      "Click me"
    end
  end

  def with_icon_right
  end

  def with_icon_2
    render(LinkComponent.new(href: "#", variant: :primary, icon: true, disabled: true)) do |component|
      component.with_icon do
        tag.svg xmlns: "http://www.w3.org/2000/svg", fill: "currentColor", viewBox: "0 0 20 20", class: "w-4 h-4 animate-spin" do
          tag.path fill_rule: "evenodd", d: "M15.312 11.424a5.5 5.5 0 01-9.201 2.466l-.312-.311h2.433a.75.75 0 000-1.5H3.989a.75.75 0 00-.75.75v4.242a.75.75 0 001.5 0v-2.43l.31.31a7 7 0 0011.712-3.138.75.75 0 00-1.449-.39zm1.23-3.723a.75.75 0 00.219-.53V2.929a.75.75 0 00-1.5 0V5.36l-.31-.31A7 7 0 003.239 8.188a.75.75 0 101.448.389A5.5 5.5 0 0113.89 6.11l.311.31h-2.432a.75.75 0 000 1.5h4.243a.75.75 0 00.53-.219z", clip_rule: "evenodd"
        end
      end
    end
  end

  def submit
    render(LinkComponent.new(href: "#", variant: :primary, icon: true, type: :submit)) do |component|
      "Click me"
    end
  end

  def custom
    render(LinkComponent.new(href: "#", icon: true, position: "right", class: "whitespace-nowrap inline-flex items-center justify-center rounded-md font-medium transition-colors focus-visible:outline-none focus-visible:ring-1 focus-visible:ring-ring disabled:pointer-events-none disabled:opacity-50 bg-destructive text-primary-foreground shadow hover:bg-indigo-500")) do |component|
      component.with_icon do
        tag.svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 20 20", fill: "currentColor", class: "w-5 h-5" do
          tag.path fill_rule: "evenodd", d: "M7.21 14.77a.75.75 0 01.02-1.06L11.168 10 7.23 6.29a.75.75 0 111.04-1.08l4.5 4.25a.75.75 0 010 1.08l-4.5 4.25a.75.75 0 01-1.06-.02z", clip_rule: "evenodd"
        end
      end
    end
  end
end
