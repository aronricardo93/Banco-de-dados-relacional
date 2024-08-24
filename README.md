
# Conceitos Básicos de Banco de Dados Relacional

Este documento fornece uma visão geral dos conceitos fundamentais de bancos de dados relacionais.

## 📌 Índice

1. [O que é um Banco de Dados Relacional?](#o-que-é-um-banco-de-dados-relacional)
2. [Modelagem de Dados](#modelagem-de-dados)
3. [Tabelas](#tabelas)
4. [Chaves Primárias e Estrangeiras](#chaves-primárias-e-estrangeiras)
5. [Normalização](#normalização)
6. [Consultas SQL](#consultas-sql)
7. [Vantagens de Bancos de Dados Relacionais](#vantagens-de-bancos-de-dados-relacionais)
8. [Referências](#referências)

## 📌 O que é um Banco de Dados Relacional?

Um **Banco de Dados Relacional** é um tipo de banco de dados que organiza os dados em tabelas que podem ser relacionadas umas às outras. Cada tabela armazena dados em linhas (tuplas) e colunas (atributos). As relações entre tabelas são definidas através de chaves primárias e estrangeiras.

## 📌 Modelagem de Dados

**Modelagem de Dados** é o processo de criar um modelo visual que representa a estrutura lógica de um banco de dados. O modelo mais comum usado é o **Modelo Entidade-Relacionamento (ER)**, que inclui entidades (objetos ou conceitos) e relacionamentos entre essas entidades.

## 📌 Tabelas

Uma **tabela** é a estrutura básica de armazenamento em um banco de dados relacional. Uma tabela é composta por:

- **Linhas (ou Registros):** Cada linha representa uma única entrada de dados na tabela.
- **Colunas (ou Atributos):** Cada coluna define um tipo de dado que pode ser armazenado (por exemplo, `Nome`, `Idade`, `Endereço`).

### Exemplo de Tabela:

| ID  | Nome   | Idade | Endereço          |
| --- | ------ | ----- | ----------------- |
| 1   | João   | 25    | Rua A, 123        |
| 2   | Maria  | 30    | Rua B, 456        |
| 3   | Pedro  | 28    | Rua C, 789        |

## 📌 Chaves Primárias e Estrangeiras

- **Chave Primária (Primary Key):** Um atributo ou conjunto de atributos que identificam unicamente cada registro em uma tabela. Exemplo: `ID` na tabela acima.

- **Chave Estrangeira (Foreign Key):** Um atributo em uma tabela que referencia a chave primária de outra tabela, criando um relacionamento entre as tabelas.

### Exemplo:

Considere uma tabela `Pedidos` que referencia a tabela `Clientes`:

**Tabela Clientes**

| ClienteID | Nome   |
| --------- | ------ |
| 1         | João   |
| 2         | Maria  |

**Tabela Pedidos**

| PedidoID | ClienteID | Produto  |
| -------- | --------- | -------- |
| 101      | 1         | Laptop   |
| 102      | 2         | Smartphone |

Aqui, `ClienteID` em `Pedidos` é uma chave estrangeira que referencia `ClienteID` em `Clientes`.

## 📌 Normalização

**Normalização** é o processo de organizar os dados para reduzir a redundância e melhorar a integridade dos dados. A normalização envolve dividir grandes tabelas em tabelas menores e definir relacionamentos entre elas. As formas normais são regras aplicadas durante o processo de normalização, como:

- **Primeira Forma Normal (1NF):** Eliminar duplicatas de colunas e garantir que todos os valores em uma coluna sejam atômicos.
- **Segunda Forma Normal (2NF):** Remover a dependência parcial das chaves primárias.
- **Terceira Forma Normal (3NF):** Remover dependências transitivas.

## 📌 Consultas SQL

O **SQL (Structured Query Language)** é a linguagem padrão para interagir com bancos de dados relacionais. Exemplos de comandos SQL incluem:

- **SELECT:** Usado para consultar dados.
- **INSERT:** Usado para inserir novos dados.
- **UPDATE:** Usado para atualizar dados existentes.
- **DELETE:** Usado para excluir dados.

### Exemplo de Consulta SQL:

```sql
SELECT Nome, Idade FROM Clientes WHERE Idade > 25;
```
## 📌 Vantagens de Bancos de Dados Relacionais

-   **Integridade dos Dados:** Garantida através de restrições e chaves.
-   **Facilidade de Consulta:** Utilização de SQL para consultas complexas.
-   **Escalabilidade:** Suporte a grandes volumes de dados.
-   **Flexibilidade:** Relacionamentos entre tabelas permitem modelar estruturas de dados complexas.

## 📚Referências

-   **[W3Schools: SQL Tutorial](https://www.w3schools.com/sql/)**
