Dado("pesquiso um {string}") do |cep|
  @header = Header.new.header_default

  tipo_cep = DADOS_END[cep.to_sym]

  @url = "#{CONFIG_AMBIENTES[$ambiente.to_sym][:url_base]}#{tipo_cep}/json/"

  @body = Comum.new.request_get(@url, @header, 200, "Realiza a pesquisa de um cep.")
end

Dado("valido que o codigo do IBGE e apresentado com sucesso") do
  Validacao.new.valida_codigo_ibge(@body)
end

Dado("valido que o retorno e apresentado um erro de cep invalido") do
  Validacao.new.valida_cep_invalido(@body)
end
