Definimos como padrões para esse projeto:

Linguagem de programação: Ruby

Linguagem de escrita dos cenários de teste: Cucumber/Gherkin-pt

Pattern: PageObject - https://martinfowler.com/bliki/PageObject.html

Configuração:

Baixar a versão 2.5.1 do ruby, com DevKit.

https://rubyinstaller.org/downloads/

Passos:

1 - Ao executar o download, você irá ver uma tela para escolher o diretório (utilizar diretório default) e 3 checkbox abaixo, 2 check's que configuram as variáveis de ambiente e adicionam arquivos .rb a instalação atual, e o ultimo é necessário dar um check, que está falando para utilizar o padrão UTF-8 (Padrão de caracteres, assim ele conseguira ler/utilizar caracteres especiais).

2 - Após a instalar, aparecerá um box descrito: run 'ridk install', deixe marcado e clique em "Finish", nesse passo, você já instalou o ruby, mas ainda é necessário instalar o DevKit (Kit de ferramentas para desenvolvimento).

    Abrirá um terminal então instale as 3 opções na ordem 1,2,3 que irá ser instalados pacotes e será realizado configurações, é possível fazer as mesmas configurações manuais ou por linha de comando, mas nas últimas versões do ruby, eles criaram essa interface para facilitar.

Instalando o Bundler:
O bundler é nossa gema que gerencia as dependências do projeto, ele utiliza como referência para o seu trabalho o arquivo Gemfile, que é onde você adiciona todas as dependências do seu projeto.

Pra você utiliza-lo é necessário instalar, executando o comando abaixo no terminal:

  - gem install bundler

O comando abaixo irá realizar o download e instalação de todas as gemas do arquivo GemFile.

  - bundle install

  Obs: Se estiver dando problema neste momento, executar o comando abaixo e depois o bundle install:

  - bundle update --bundler

Executando testes
Para realizar execução dos testes é necessário realizar os comandos abaixo no terminal dentro da pasta do projeto.

Parametros:

cucumber: comando que inicia execução dos casos de teste.

Rodar por feature, passar o caminho, Ex:

features/feature_exemplo_vr.feature

Rodar utilizando as tags:

-t @cep_valido

Rodar por ambiente, ambientes são configurados dentro do arquivo support/env e data/data.yml:
  dev=true
  prod=true
  integracao=true

## Roda apenas a feature especifica.
  cucumber features\arquivo.feature
## Roda todos os cenarios com a tag cep_valido no ambiente de dev.
  cucumber dev=true -t @botoes_iframe

Gem que serve de auxilio na criação do projeto e Configuração:(Pretest)

gem install pretest
