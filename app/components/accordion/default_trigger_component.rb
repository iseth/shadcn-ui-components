class Accordion::DefaultTriggerComponent < ViewComponent::Base
  def initialize
  end

  def call
    "<button>#{content}</button>"
  end

  # def render_in(view_context, &block)
  #   if block_given?
  #     binding.pry
  #     # view_context.capture(self, block)
  #   end
  # end
end
