### Roadmap do Projeto de Power BI - Universidade

## Este roadmap fornece uma visão clara e estruturada das etapas necessárias para a construção de um relatório completo no Power BI, aplicável a contextos universitários. Cada módulo representa uma fase do projeto, com tarefas específicas para garantir qualidade, consistência e performance na análise de dados.

Módulo 1: Extração de Dados

Realizar a importação dos dados utilizando o Power Query.

Módulo 2: Transformação de Dados (Power Query)

Ajustar os tipos de dados das colunas (ex: converter texto, número, data conforme necessário).

Criar uma tabela de dimensão para Curso:

Remover duplicatas

Manter apenas colunas relevantes

Criar outras tabelas de dimensão com base nas colunas da tabela fato, conforme estrutura de modelagem Fato-Dimensão.

Módulo 3: Modelagem de Dados

Analisar e compreender o relacionamento entre as tabelas.

Estabelecer relacionamentos entre fatos e dimensões de forma correta.

Módulo 4: Construção do Relatório (Exibição)

4.1 Layout e Design

Inserir imagens de fundo específicas para diferentes áreas do relatório (Aluno, Campus, Financeiro etc.).

Aplicar paleta de cores e estilos visuais consistentes.

4.2 Criação de Medidas (DAX)

Criar medidas específicas para análise financeira e institucional:

Exemplo: FAT_INADIMPLENTE = SOMASE(Inadimplente)

Organizar as medidas em pastas, como "Financeiro", "Acadêmico" e "Demográfico".

4.3 Construção de Gráficos

Gráfico de barras para inadimplência por curso:

Eixo Y: Cursos

Eixo X: FAT_INADIMPLENTE

Aplicar visual clean e moderno para facilitar a leitura e apresentação dos dados.

Módulo 5: Revisão e Ajustes Finais

Revisar a disposição visual e a performance do relatório.

Verificar interações, filtros e segmentações.

Corrigir eventuais inconsistências no layout.

Módulo 6: Análises Avançadas e Otimizações

Corrigir tipos de colunas mal configuradas (ex: converter a coluna Idade de texto para número).

Criar gráficos adicionais:

Matriz com exibição percentual

Colunas agrupadas para comparações visuais

Desenvolver medidas e colunas calculadas usando fórmulas DAX otimizadas.

Organizar todos os elementos (gráficos, medidas, filtros) em categorias e pastas para facilitar a navegação.
