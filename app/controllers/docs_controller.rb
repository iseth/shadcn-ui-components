# frozen_string_literal: true

class DocsController < ApplicationController
  layout -> { DocsLayout }

  # GETTING STARTED
  # def introduction
  #   render Docs::GettingStarted::IntroductionView.new
  # end

  # COMPONENTS
  def accordion
    render "accordion_view"
  end

  def alert_component # alert is a reserved word
    render Docs::AlertView.new
  end

  def alert_dialog
    render Docs::AlertDialogView.new
  end

end
