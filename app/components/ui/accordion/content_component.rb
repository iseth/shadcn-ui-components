class UI::Accordion::ContentComponent < ViewComponent::Base
  renders_one :default_content, UI::Accordion::DefaultContentComponent
end
