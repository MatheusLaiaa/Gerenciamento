-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50),
    Email VARCHAR(50)
);

-- Inserção de dados de exemplo na tabela Clientes
INSERT INTO Clientes (Nome, Email) VALUES
('Ricardo', 'ricardo@gmail.com'),
('Matheius', 'matheus@gmail.com');

-- Criação da tabela Pedidos
CREATE TABLE Pedidos (
    PedidoID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    Detalhes VARCHAR(100),
    Valor DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserção de dados de exemplo na tabela Pedidos
INSERT INTO Pedidos (ClienteID, Detalhes, Valor) VALUES
(1, 'Camisa', 50.00),
(2, 'Regata', 30.00),
(1, 'Calça', 70.00);

-- Criação da Stored Procedure InserirPedido
DELIMITER //

CREATE PROCEDURE InserirPedido (
    IN p_ClienteID INT,
    IN p_Detalhes VARCHAR(100),
    IN p_Valor DECIMAL(10, 2)
)
BEGIN
    INSERT INTO Pedidos (ClienteID, Detalhes, Valor) VALUES (p_ClienteID, p_Detalhes, p_Valor);
END //

DELIMITER ;

CALL InserirPedido(2, 'Novo Produto', 25.00);

-- Criação da Trigger para atualizar TotalPedidos na tabela Clientes
DELIMITER //

CREATE TRIGGER AtualizarTotalPedidos AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    UPDATE Clientes
    SET TotalPedidos = (
        SELECT SUM(Valor)
        FROM Pedidos
        WHERE ClienteID = NEW.ClienteID
    )
    WHERE ClienteID = NEW.ClienteID;
END //

DELIMITER ;

-- Criação da View PedidosClientes
CREATE VIEW PedidosClientes AS
SELECT c.ClienteID, c.Nome, c.Email, p.PedidoID, p.Detalhes, p.Valor
FROM Clientes c
INNER JOIN Pedidos p ON c.ClienteID = p.ClienteID;

-- Consulta com JOIN utilizando a View PedidosClientes
SELECT pc.ClienteID, pc.Nome, SUM(pc.Valor) AS ValorTotalPedidos
FROM PedidosClientes pc
GROUP BY pc.ClienteID, pc.Nome;

