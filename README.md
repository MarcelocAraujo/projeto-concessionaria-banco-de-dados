# Sistema de Banco de Dados - Concessionária

Este repositório contém a modelagem física e a implementação completa de um banco de dados relacional criado para o gerenciamento de uma concessionária de veículos. O escopo do projeto vai desde a criação estrutural e aplicação de restrições de segurança até a extração de relatórios analíticos utilizando consultas avançadas.

## Equipe
- Marcelo Caldas
- João da Fonte
- Addson Cardoso

## Tecnologias e Paradigma
- Linguagem: SQL
- Modelo: Relacional (SGBD R)

## Estrutura do Projeto

O código-fonte está dividido em três scripts principais, refletindo as etapas lógicas de implementação do banco de dados:

### 1. DDL (Data Definition Language) - Etapa4_DDL.sql
Script responsável pela arquitetura do esquema e garantia da integridade referencial.
- Criação das entidades principais (veiculo, cliente, venda, funcionario, financiamento, revisao, etc).
- Definição rigorosa de Chaves Primárias (PRIMARY KEY) e Chaves Estrangeiras (FOREIGN KEY).
- Aplicação de restrições lógicas utilizando CHECK (ex: validação de anos de fabricação e bloqueio de valores financeiros negativos) e UNIQUE para evitar anomalias e duplicidade de dados críticos (como CPF, Chassi e Contatos).

### 2. DML (Data Manipulation Language) - Etapa4_DML.sql
Script de povoamento desenvolvido para simular o ambiente de produção. Contém as instruções de INSERT que populam todas as tabelas com dados consistentes, permitindo a validação das regras de negócio aplicadas no DDL e fornecendo massa de dados para testes de leitura.

### 3. DQL (Data Query Language) - Etapa5_Consultas.sql
Conjunto de consultas avançadas desenvolvidas para gerar relatórios de inteligência de negócios. O script explora:
- Múltiplos JOINs para cruzamento e unificação de dados relacionais.
- Funções de agregação combinadas com GROUP BY e filtros de bloco estruturados com HAVING.
- Uso de subconsultas escalares e correlacionadas, incluindo filtros lógicos avançados com o operador NOT EXISTS para validação de ausência de registros.

## Como Executar Localmente

1. Clone o repositório para o seu ambiente local:
   git clone https://github.com/SEU_USUARIO/projeto-concessionaria-bd.git

2. Abra os arquivos no seu SGBD de preferência (MySQL Workbench, DBeaver, etc).

3. Para evitar erros de dependência entre as chaves estrangeiras, execute os scripts estritamente na ordem abaixo:
   - 1º: Etapa4_DDL.sql (Gera a estrutura)
   - 2º: Etapa4_DML.sql (Insere a massa de dados)
   - 3º: Etapa5_Consultas.sql (Executa os relatórios e validações)

## Observações Técnicas
A modelagem deste banco de dados foi construída com base nas regras de Normalização de dados e nas diretrizes de qualidade de esquemas relacionais. A separação das entidades foi projetada especificamente para evitar anomalias de inserção, exclusão e modificação, garantindo que operações de JOIN não resultem em tuplas espúrias.
