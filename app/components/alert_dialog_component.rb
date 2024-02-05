class AlertDialogComponent < ViewComponent::Base
  def initialize(trigger_text:, title:, description:, cancel_text:, action_text:)
    @trigger_text = trigger_text
    @title = title
    @description = description
    @cancel_text = cancel_text
    @action_text = action_text
  end

  def call
    render PhlexUI::AlertDialog.new do
      safe_join([
        render(PhlexUI::AlertDialog::Trigger.new do
          render PhlexUI::Button.new { @trigger_text }
        end),
        render(PhlexUI::AlertDialog::Content.new do
          safe_join([
            render(PhlexUI::AlertDialog::Header.new do
              safe_join([
                render(PhlexUI::AlertDialog::Title.new { @title }),
                render(PhlexUI::AlertDialog::Description.new { @description })
              ])
            end),
            render(PhlexUI::AlertDialog::Footer.new do
              safe_join([
                render(PhlexUI::AlertDialog::Cancel.new { @cancel_text }),
                render(PhlexUI::AlertDialog::Action.new { @action_text }) # Will probably be a link to a controller action (e.g. delete account)
              ])
            end)
          ])
        end)
      ])
    end
  end
end
