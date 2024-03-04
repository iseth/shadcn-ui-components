class CodeblockComponentPreview < ViewComponent::Preview
  def default
    render CodeblockComponent.new(code: "def hello_world\n  puts \"Hello, world!\"\nend", syntax: :ruby, clipboard: true)
  end

  def with_clipboard
    render CodeblockComponent.new(code: "def hello_world\n  puts \"Hello, world!\"\nend", syntax: :ruby)
  end
end
