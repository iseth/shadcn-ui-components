class Accordion::ContentComponent < ViewComponent::Base
  renders_one :default_content, Accordion::DefaultContentComponent
end
