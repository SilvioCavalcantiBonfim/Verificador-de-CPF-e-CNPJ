
# Verificador de CPF e CNPJ

![Ruby](https://img.shields.io/badge/-Ruby-white?style=for-the-badge&logo=ruby&color=CC342D&logoColor=white)

Este é um projeto desenvolvido como parte do curso de Desenvolvimento Backend em Ruby. Consiste em um sistema para verificação de `CPF` e `CNPJ` utilizando dígitos verificadores. O projeto é composto por três arquivos principais: um para a classe `CPF`, outro para a classe `CNPJ`, e um terceiro arquivo que executa a interface via terminal.

## Arquivos do Projeto

`cpf.rb`: Contém a implementação da classe CPF, que permite validar números de CPF.
`cnpj.rb`: Implementa a classe CNPJ, responsável por validar números de CNPJ.
`main.rb`: Arquivo principal que oferece uma interface simples via terminal. Permite ao usuário inserir um número de CPF ou CNPJ e verifica se é válido de acordo com os algoritmos implementados nas classes CPF e CNPJ.

## Funcionalidades
**Validação de CPF e CNPJ**: Verifica se os números inseridos são válidos segundo os critérios de dígitos verificadores.
**Interface Terminal**: Utiliza-se de comandos simples para interação com o usuário, facilitando a verificação dos números.

## Estruturas Utilizadas

O código faz uso das seguintes estruturas de controle em Ruby:

**Estruturas de Condição (if, case)**: Para determinar se um CPF ou CNPJ é válido ou para decidir qual algoritmo utilizar dependendo do tipo de número inserido.
**Laços de Repetição (for)**: Utilizados principalmente para percorrer os caracteres dos números de CPF e CNPJ durante a verificação e geração dos dígitos verificadores.

## Execução do Projeto

Para executar o projeto, certifique-se de ter Ruby instalado em seu sistema. Utilize o terminal e navegue até o diretório onde estão os arquivos do projeto. Então, execute o arquivo `main.rb` com o comando:

```bash
ruby main.rb
```
Isso iniciará a interface do projeto no terminal, onde você poderá inserir números de CPF ou CNPJ para verificar sua validade.


## Autores
Este projeto foi desenvolvido como atividade do curso de Desenvolvimento Backend em Ruby por Silvio Cavalcanti, ..., ... e ...