# frozen_string_literal: true

module Users
  class SearchQuery < ApplicationQuery
    attr_reader :search, :relation

    def initialize(search:, relation: User)
      @search = search
      @relation = relation
    end

    def call
      relation.where(
        "name LIKE :search OR email LIKE :search OR phone LIKE :search OR cpf LIKE :search",
        search: "%#{search}%"
      )
    end
  end
end
