SQL OU NoSQL?


SQL 
    • Linguagem para trabalhar com bancos de dados relacionais ou classificação de tipo de banco de dados relacionais e/ou onde a integridade dos dados seja a prioridade.
    • Os bancos de dados relacionais são adequados a dados estruturados em texto ou números, mesmo com frames/tipos variados (como data, decimal etc.). 
    • Os bancos de dados SQL mais utilizados são Oracle, MySQL, SQLServer e PostgreeSQL. Em cada um deles, há pequenas variações de sintaxe e comandos.
    • Subdivide-se em linguagem para a definição do banco de dados (DDL), para a manipulação de dados (DML) e linguagem somente de consulta (DQL).
    • Etapas para a criação de um database relacional: 1. levantamento das narrativas de produto, cliente, pedido etc; 2. levantamento de requisitos; 3. modelo ER; 4. Modelo Relacional; 5. código SQL para implementar bd; 6. persistência de dados.
    • Uso de chaves-primárias (PK) e constraints para garantir a integridade e realizar cruzamentos de dados.
        ◦ Atomicidade
        ◦ Consistência
        ◦ Isolamento
        ◦ Durabilidade

NoSQL
    • Bancos de dados não relacionais. 
    • Recomendados quando há necessidade de armazenar e recuperar tipos variados de dados, como texto, imagens, sons, videos etc., em forma não estruturada. Também quando é demandando um armazenamento com campos flexíveis e/ou grande e rápido volume de crescimento de dados. 
    • Os bancos de dados NoSQL mais utilizados são MongoDB, Redis, Neo4j, Cassandra, entre outros.
    • Cada banco de dados determina a linguagem ou as linguagens que aceita. 
    • Estabelecimento de índices para facilitar a recuperação de dados. 
        ◦ Basically Avaiable
        ◦ Soft-state
        ◦ Eventually consistent

    • Tipos de bancos de dados NoSQL: Document Store, Key-value Store; Wide-columm Store; Graph Store.
      
    • Boas práticas no NoSQL: evitar documentos muito grandes, usar nomes de campos objetivos e curtos, analisar a performance das queries com comando explain(), atualizar apenas os campos alterados, evitar negações em queries.

    • Agregações: processar dados em uma ou mais etapas, onde o resultado de uma etapa é utilizado na etapa seguinte, de modo a retornar um resultado combinado. É uma das formas de recuperar dados e organizá-los para extrair informações de um banco NoSQL. 
