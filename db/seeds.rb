# frozen_string_literal: true

Rails.logger.debug "\t Seeding users data..."

[
  {
    name: "Isabella Galvão",
    email: "isabella_galvao@limao.com.br",
    phone: "+55 (91) 98452-1207",
    cpf: "178.366.500-90"
  },
  {
    name: "Benício Santos",
    email: "benicio_santos@jbtc.com",
    phone: "+55 (91) 99196-6356",
    cpf: "236.587.600-52"
  },
  {
    name: "Yuri Fogaça",
    email: "yuri-fogaca95@grupoarteoficio.com.br",
    phone: "+55 (91) 99811-5475",
    cpf: "882.758.290-89"
  },
  {
    name: "Rafaela Melo",
    email: "rafaelacarolinamelo@cielo.com.br",
    phone: "+55 (91) 98998-4251",
    cpf: "738.263.260-16"
  },
  {
    name: "Andreia Duarte",
    email: "andreia.daiane.duarte@oliveiracontabil.com.br",
    phone: "+55 (91) 99757-6784",
    cpf: "850.910.480-81"
  }
].each do |data|
  User.create!(data)
end
