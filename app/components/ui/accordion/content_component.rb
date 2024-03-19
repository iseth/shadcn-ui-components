class Ui::Accordion::ContentComponent < ViewComponent::Base
  renders_one :default_content, Ui::Accordion::DefaultContentComponent
end
