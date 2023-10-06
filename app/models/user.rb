class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[a-z0-9!#$%&'*+\/=?^_‘{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_‘{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\z/i

  validates :name, presence: true
  validates :email, presence: true
  validates :cpf, presence: true

  validates :email, uniqueness: true
  validates :cpf, uniqueness: true

  validates :email, format: { with: VALID_EMAIL_REGEX }
end
