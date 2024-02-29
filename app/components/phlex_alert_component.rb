class PhlexAlertComponent < ViewComponent::Base
  def initialize(title:, description:, variant: nil, icon: nil)
    @title = title
    @description = description
    @variant = variant.to_sym if variant.nil?
    @icon = icon
  end

  def call
    render PhlexUI::Alert.new(variant: @variant) do
      safe_join([render_icon, render(PhlexUI::Alert::Title.new { @title }), render(PhlexUI::Alert::Description.new { @description })].compact)
    end
  end

  private

  def render_icon
    @icon&.call
  end
end
