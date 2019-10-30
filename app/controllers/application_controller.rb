# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  # Sets the language based on the client browser's first reported language
  #
  # @author Troy L. Marshall
  # @since 1.0.0
  def set_locale
    I18n.locale = extract_locale_from_accept_language_header
  end

  private

  def extract_locale_from_accept_language_header
    # rubocop:disable Metrics/LineLength
    primary = request.env["HTTP_ACCEPT_LANGUAGE"].nil? ? "en" : request.env["HTTP_ACCEPT_LANGUAGE"].scan(/^[a-z]{2}/).first
    # rubocop:enable Metrics/LineLength

    # Available locales set in config/initializers/locales.rb
    I18n.available_locales.include?(primary.to_sym) ? primary : I18n.default_locale
  end
end
