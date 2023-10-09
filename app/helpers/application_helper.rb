# frozen_string_literal: true

module ApplicationHelper
  def error_messages(attribute, object)
    return if object.nil?

    object.errors[attribute].to_sentence.capitalize.presence&.concat(".")
  end
end
