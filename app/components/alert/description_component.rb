class Alert::DescriptionComponent < ViewComponent::Base
  def initialize(class_description, &block)
    @class_description = class_description || "text-sm [&_p]:leading-relaxed"
  end
end
