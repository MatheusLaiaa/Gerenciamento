# Atividade Gerenciamento De Pedidos

## Metodologia

Essa atividade tem objetivo de desenvolver um gerenciamento de pedidos com 5 etapas, Criação de Tabelas e Inserção de Dados, Criação de Stored Procedure, Trigger, View, Consulta com JOIN, através do MYSQL WORKBENCH, essa atividade contabilizara para AF de Banco de Daddos.

## Nome Do Arquivo

gerenciamento.sql

## Etapa 1: Criação de Tabelas e Inserção de Dados

Crie as tabelas "Clientes" e "Pedidos" com campos apropriados. Insira dados de exemplo nas tabelas para simular clientes e pedidos. Certifique-se de incluir uma chave primária em cada tabela.

![image](https://github.com/MatheusLaiaa/Gerenciamento/assets/144149403/c44fc3ce-92af-4061-91c5-f99560a6d493)

![image](https://github.com/MatheusLaiaa/Gerenciamento/assets/144149403/e68f274d-e1ed-455a-8255-624bef2c941d)

## Etapa 2: Criação de Stored Procedure

Crie uma stored procedure chamada "InserirPedido" que permite inserir um novo pedido na tabela "Pedidos" com as informações apropriadas. A stored procedure deve receber parâmetros como o ID do cliente e os detalhes do pedido. Ao término teste o funcionamento da stored procedure criada inserindo um pedido.

![image](https://github.com/MatheusLaiaa/Gerenciamento/assets/144149403/488417df-edf9-4d46-9213-f7fd7100b7a6)

![image](https://github.com/MatheusLaiaa/Gerenciamento/assets/144149403/76a9f182-c21f-4169-a7f3-e630c17c2369)

## Etapa 3: Trigger

Crie uma trigger que seja acionada APÓS a inserção de um novo pedido na tabela "Pedidos". A trigger deve calcular o valor total dos pedidos para o cliente correspondente e atualizar um campo "TotalPedidos" na tabela "Clientes" com o valor total. Teste a Trigger inserindo um novo pedido na tabela "Pedidos“.


## Etapa 4: View

Crie uma view chamada "PedidosClientes" que combina informações das tabelas "Clientes" e "Pedidos" usando JOIN para mostrar os detalhes dos pedidos e os nomes dos clientes.

![image](https://github.com/MatheusLaiaa/Gerenciamento/assets/144149403/e7c1bb18-9872-492c-a4d5-05e01ca61903)

## Etapa 5: Consulta com JOIN

Escreva uma consulta SQL que utiliza JOIN para listar os detalhes dos pedidos de cada cliente, incluindo o nome do cliente e o valor total de seus pedidos. Utilize a view "PedidosClientes" para essa consulta.

![image](https://github.com/MatheusLaiaa/Gerenciamento/assets/144149403/22cf6042-9b4e-49ca-905d-60fde09a593c)






