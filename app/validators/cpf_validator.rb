# frozen_string_literal: true

class CpfValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    return if value.blank? || CPF.valid?(value, strict: true)

    record.errors.add(attribute)
  end
end
