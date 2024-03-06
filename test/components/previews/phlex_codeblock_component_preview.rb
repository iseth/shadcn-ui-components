class PhlexCodeblockComponentPreview < ViewComponent::Preview
  def default
    render PhlexCodeblockComponent.new(code: "def hello_world\n  puts \"Hello, world!\"\nend", syntax: :ruby, clipboard: true)
  end

  def with_clipboard
    render PhlexCodeblockComponent.new(code: "def hello_world\n  puts \"Hello, world!\"\nend", syntax: :ruby)
  end
end
