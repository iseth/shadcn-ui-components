class CodeblockComponent < ViewComponent::Base
  def initialize(code:, syntax: :ruby, clipboard:nil)
    @code = code
    @syntax = syntax
    @clipboard = clipboard
  end

  def call
    content_tag :div, class: 'w-full' do
      if(@clipboard)
      render PhlexUI::Codeblock.new(@code, syntax: @syntax, clipboard: @clipboard)
      else
      render PhlexUI::Codeblock.new(@code, syntax: @syntax, clipboard: false)
        end
    end
  end
end
