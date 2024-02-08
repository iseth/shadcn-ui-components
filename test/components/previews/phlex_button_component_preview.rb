# test/components/previews/button_component_preview.rb
class PhlexButtonComponentPreview < ViewComponent::Preview
  def default
    render(PhlexButtonComponent.new(text: "Button"))
  end

  def primary
    render(PhlexButtonComponent.new(text: "Primary", variant: :primary))
  end

  def secondary
    render(PhlexButtonComponent.new(text: "Secondary", variant: :secondary))
  end

  def destructive
    render(PhlexButtonComponent.new(text: "Destructive", variant: :destructive))
  end

  def outline
    render(PhlexButtonComponent.new(text: "Outline", variant: :outline))
  end

  def ghost
    render(PhlexButtonComponent.new(text: "Ghost", variant: :ghost))
  end

  def link
    render(PhlexButtonComponent.new(text: "Link", variant: :link))
  end

  def with_icon
    render(PhlexButtonComponent.new(text: "With Icon", variant: :outline, icon: -> { tag.svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 24 24", fill: "currentColor", class: "w-5 h-5" do
      tag.path fill_rule: "evenodd", d: "M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z", clip_rule: "evenodd"
    end }))
  end

  def with_spinner
    render(PhlexButtonComponent.new(text: "Please wait", variant: :primary, disabled: true, icon: -> { tag.svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 20 20", fill: "currentColor", class: "w-4 h-4 mr-2 animate-spin" do
      tag.path fill_rule: "evenodd", d: "M15.312 11.424a5.5 5.5 0 01-9.201 2.466l-.312-.311h2.433a.75.75 0 000-1.5H3.989a.75.75 0 00-.75.75v4.242a.75.75 0 001.5 0v-2.43l.31.31a7 7 0 0011.712-3.138.75.75 0 00-1.449-.39zm1.23-3.723a.75.75 0 00.219-.53V2.929a.75.75 0 00-1.5 0V5.36l-.31-.31A7 7 0 003.239 8.188a.75.75 0 101.448.389A5.5 5.5 0 0113.89 6.11l.311.31h-2.432a.75.75 0 000 1.5h4.243a.75.75 0 00.53-.219z", clip_rule: "evenodd"
    end }))
  end

  def submit
    render(PhlexButtonComponent.new(text: "Submit application", variant: :primary, type: :submit))
  end
end
