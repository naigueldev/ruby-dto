# Aplicação Ruby com Docker, RSpec e DTO

## Descrição

Este é um projeto simples em Ruby que demonstra o uso de Docker para containerização com testes automatizados com RSpec. Além disso, este projeto inclui um exemplo de uso de um DTO (Data Transfer Object) para ilustrar como transferir dados entre diferentes partes da aplicação.

## Pré-requisitos

- [Docker](https://www.docker.com/)

## Configuração do Ambiente

1. Clone este repositório:

    ```sh
    git clone https://github.com/naigueldev/ruby-dto.git
    cd ruby-dto
    ```

2. Construa e inicie os contêineres Docker:

    ```sh
    docker build -t ruby-dto .
    ```

3. Acesse o contêiner:

    ```sh
    docker run -it ruby-dto bash
    ```

## Testes

Para executar os testes, use o seguinte comando dentro do contêiner:

```sh
rspec
```

## Contribuição

1. Fork o repositório
2. Crie uma branch para sua feature (`git checkout -b feature/nome-da-feature`)
3. Commit suas mudanças (`git commit -am 'Adicione uma nova feature'`)
4. Push para a branch (`git push origin feature/nome-da-feature`)
5. Crie um novo Pull Request

## Licença

Este projeto está licenciado sob a MIT License - veja o arquivo [LICENSE](LICENSE) para mais detalhes.
