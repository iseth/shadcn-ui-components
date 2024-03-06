class Alert::TitleComponent < ViewComponent::Base
  def initialize(class_title:, &block)
    @class_title = class_title || "mb-1 font-medium leading-none tracking-tight"
  end
end
