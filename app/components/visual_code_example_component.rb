class VisualCodeExampleComponent < ViewComponent::Base
  include IconHelper
  def initialize(title: nil, description: nil, context: nil, premium: false, cod:false, &block)
    @title = title
    @description = description
    @premium = premium
    @context = context
    @cod = cod
  end

  def render_tab_trigger(value, label)
    render Ui::Tabs::TriggerComponent.new(value: value) do
      span { label }
    end
  end

end
