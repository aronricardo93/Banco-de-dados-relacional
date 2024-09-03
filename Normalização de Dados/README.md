# 📚 Normalização de Dados

A normalização de dados é uma técnica essencial para organizar bancos de dados relacionais. Ela ajuda a reduzir a redundância e a garantir a integridade dos dados. Este guia fornece uma visão clara sobre o que é normalização e como aplicá-la para criar bancos de dados eficientes.

## 📝 O que é Normalização de Dados?

Normalização é o processo de estruturar dados em um banco de dados para minimizar duplicações e garantir a consistência. Isso é feito dividindo tabelas grandes em tabelas menores e definindo os relacionamentos entre elas.

## 🎯 Objetivos da Normalização

- **Eliminar Redundância**: Evitar a duplicação desnecessária de dados.
- **Garantir Integridade**: Manter a precisão e a consistência dos dados.
- **Facilitar Manutenção**: Tornar mais fácil atualizar e gerenciar os dados.

## 📊 Formas Normais

### 1NF: Primeira Forma Normal

Uma tabela está em 1NF se:
- Cada coluna contém apenas valores atômicos (não divisíveis).
- Não há grupos repetitivos ou colunas múltiplas com o mesmo tipo de dados.
- Cada coluna tem um nome único e não há duplicação de dados.

### 2NF: Segunda Forma Normal

Uma tabela está em 2NF se:
- Está em 1NF.
- Todos os atributos não-chave são completamente dependentes da chave primária (sem dependências parciais).

### 3NF: Terceira Forma Normal

Uma tabela está em 3NF se:
- Está em 2NF.
- Não há dependências transitivas (atributos não-chave dependem diretamente da chave primária).

### BCNF: Forma Normal de Boyce-Codd

Uma tabela está em BCNF se:
- Está em 3NF.
- Para cada dependência funcional, a parte esquerda da dependência deve ser uma superchave (uma chave única para a tabela).

### 4NF: Quarta Forma Normal

Uma tabela está em 4NF se:
- Está em BCNF.
- Não há dependências multivaloradas (não há redundância de conjuntos de dados independentes).

### 5NF: Quinta Forma Normal

Uma tabela está em 5NF se:
- Está em 4NF.
- Não há dependências de junção (divida tabelas para garantir que cada junção de dados é representada corretamente).

## 🔍 Exemplo Prático

Vamos melhorar o exemplo para ilustrar a normalização em diferentes formas normais.

### Tabela Original

```plaintext
| StudentID | StudentName | CourseName | Instructor |
|-----------|-------------|------------|------------|
| 1         | Alice       | Math       | Prof. X    |
| 1         | Alice       | Science    | Prof. Y    |
| 2         | Bob         | Math       | Prof. X    |
```

### Passos para Normalização

1. **1NF**: Certifique-se de que todos os valores são atômicos e cada coluna tem um único tipo de dado.

2. **2NF**: Divida a tabela para eliminar dependências parciais.

    - **Tabela Students**:
      ```plaintext
      | StudentID | StudentName |
      |-----------|-------------|
      | 1         | Alice       |
      | 2         | Bob         |
      ```

    - **Tabela Courses**:
      ```plaintext
      | CourseID | CourseName | Instructor |
      |----------|------------|------------|
      | 1        | Math       | Prof. X    |
      | 2        | Science    | Prof. Y    |
      ```

    - **Tabela Enrollments**:
      ```plaintext
      | StudentID | CourseID |
      |-----------|----------|
      | 1         | 1        |
      | 1         | 2        |
      | 2         | 1        |
      ```

3. **3NF**: Verifique se não há dependências transitivas. No exemplo, cada tabela está corretamente separada e atende à 3NF.

4. **BCNF**: Já está em BCNF, pois todas as dependências funcionais são tratadas por superchaves.

5. **4NF e 5NF**: Para tabelas mais complexas, garanta que não haja dependências multivaloradas e de junção, ajustando a estrutura conforme necessário.

## 📚 Referências

- [W3Schools - SQL Normalization](https://www.w3schools.com/sql/sql_normalization.asp)

