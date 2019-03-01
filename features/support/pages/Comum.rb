class Comum

  def request_get(url, header, status, api)
    timeout = CONFIG_AMBIENTES[$ambiente.to_sym][:tempo]

    response = RestClient::Request.execute(method: :get, url: url, headers: header, timeout: timeout)

    body = JSON.parse(response)

    Validacao.new.valida_status_code(body, response, status, api)

    body
  end

end
