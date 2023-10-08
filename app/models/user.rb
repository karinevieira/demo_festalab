# frozen_string_literal: true

class User < ApplicationRecord
  VALID_EMAIL_REGEX = %r{\A[a-z0-9!#$%&'*+/=?^_‘{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_‘{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\z}i # rubocop:disable Layout/LineLength

  validates :name, presence: true
  validates :email, presence: true
  validates :cpf, presence: true

  validates :email, uniqueness: true
  validates :cpf, uniqueness: true

  validates :email, format: { with: VALID_EMAIL_REGEX }

  validates :phone, phone: true, allow_blank: true

  validates :cpf, cpf: true

  def self.search(field)
    where("name LIKE :field OR email LIKE :field OR phone LIKE :field OR cpf LIKE :field", field: "%#{field}%")
  end
end
