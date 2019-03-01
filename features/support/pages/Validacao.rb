class Validacao

  def valida_status_code(body, response, status, api)
    if response.code != status.to_i
      raise "Status code na api #{api}: #{response.code}, esperado: #{status}, body retornado: #{body}, ERRO."
    end
  end

  def valida_codigo_ibge(body)
    codigo_ibge = body['ibge']

    if codigo_ibge != nil && codigo_ibge != ""
      p "Código do IBGE retornado: #{codigo_ibge}, retornado com SUCESSO."
    else
      raise "Código retornado: #{codigo_ibge}, esperado código de X digitos, ERRO."
    end
  end


  def valida_cep_invalido(body)
    cep_invalido = body['erro']

    if cep_invalido == true
      p "Ao realizar um pesquisa com cep invalido, a API me retorna ERRO."
    else
      raise "Esperado na API o campo erro igual a true, mas foi retornado: #{body}."
    end
  end

end
