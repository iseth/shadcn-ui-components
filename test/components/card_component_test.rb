require "test_helper"

class CardComponentTest < ViewComponent::TestCase
  test "renders the card" do
    header = render_inline(Card::HeaderComponent.new) do
      render_inline(Card::TitleComponent.new) { "You might like PhlexUI" }.to_s +
        render_inline(Card::DescriptionComponent.new) { "@joeldrapper" }.to_s
    end.to_s

    content = render_inline(Card::ContentComponent.new) { "Content goes here" }.to_s

    footer = render_inline(Card::FooterComponent.new(class: "flex justify-end gap-x-2")) { "Footer goes here" }.to_s

    result = render_inline(CardComponent.new(class: "w-96")) { header + content + footer }

    assert_selector(".w-96")
    assert_includes result.to_s, "You might like PhlexUI"
    assert_includes result.to_s, "@joeldrapper"
    assert_includes result.to_s, "Content goes here"
    assert_includes result.to_s, "Footer goes here"
  end
end
