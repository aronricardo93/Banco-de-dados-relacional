

# 📚 Modelo Entidade-Relacionamento (MER) e Diagrama Entidade-Relacionamento (DER)

## 📝 O que é o MER?
O **Modelo Entidade-Relacionamento (MER)** é uma forma conceitual de descrever a estrutura de um banco de dados. Ele usa entidades, atributos e relacionamentos para modelar dados e suas interações.

## 📊 O que é o DER?
O **Diagrama Entidade-Relacionamento (DER)** é a representação gráfica do MER. Ele visualiza as entidades e os relacionamentos de forma que facilita o entendimento da estrutura do banco de dados.

## 🔍 Exemplo de MER e DER

### MER

- **Entidade "Usuário"**:
  - **Atributos**: ID, Nome, Data de Nascimento, Endereço

- **Entidade "Reserva"**:
  - **Atributos**: ID, ID do Usuário, ID do Destino, Status

- **Entidade "Destino"**:
  - **Atributos**: ID, Nome, Descrição

- **Relacionamentos**:
  - **"Usuário" realiza "Reserva"**:
    - **Cardinalidade**: 
    ***0:n*** (Um usuário pode realizar várias reservas)
     ***1:1*** (Cada reserva é realizada por um único usuário).
  - **"Reserva" vincula "Destino"**:
    - **Cardinalidade**: 
     ***1:1*** (Uma reserva está vinculada a um único destino)
     ***0:n*** (cada destino pode ser vinculado a várias reservas).

### DER
![Diagrama Exemplo](https://github.com/aronricardo93/Banco-de-dados-relacional/blob/master/assets/DER.png)
