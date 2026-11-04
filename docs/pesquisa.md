# Como a skill foi montada

## Pergunta

Quais métodos de ensino têm mais evidência e mais difusão, e valem para qualquer assunto, de código e computação quântica a receita e regra de jogo?

## Ponto de partida

Uma consulta anterior achou três skills de tutoria públicas, todas pequenas e com pouca adoção:

- `skill-tutor` (Nitzan94/claude-code-skills). Perfil do aprendiz, mapa de conhecimento, repetição espaçada.
- `teach` (sebastianelvis/hammer). Baseada no *Learning to Learn* de Hamming. Modo socrático, que não entrega a resposta, e modo Feynman, em que a pessoa explica de volta. Estado em `$TEACH_HOME`.
- `tutor` (hellbellies/agentic-coding). Currículo montado uma vez, diálogo socrático, uma pergunta por vez.

O padrão comum é perfil, currículo, diário de progresso, modo socrático, uma pergunta por turno e quiz espaçado. Esta skill mantém esse esqueleto e muda três coisas:

1. **Não recusa a resposta sempre.** Quem quer só entender algo recebe a explicação direta. A guarda contra entregar a solução vale para exercício, que é onde a pesquisa mostra o dano.
2. **Separa o ensino pelo tipo de conhecimento** (fato, procedimento, conceito), seguindo o framework KLI. É o que deixa a mesma skill servir para receita e para computação quântica.
3. **Funciona sem arquivo e por voz**, para Clicky e WhatsApp.

## Busca

Feita em 04/11/2026 com o bx-scholar-mcp (Crossref e OpenAlex):

1. Lista de 30 referências canônicas de ciência da aprendizagem, conferida com `batch_verify_references`. 25 foram confirmadas de primeira. As outras 5 (Bloom 1984, Chi 1994, Kulik 1990, Ericsson 1993, Karpicke 2011) tinham registros duplicados e foram confirmadas pelo DOI com `get_paper`.
2. Número de citações de cada uma com `get_paper`, como medida de difusão.
3. Buscas para lacunas: ensino de habilidade com as mãos (Peyton), exemplo resolvido, tutores de IA e o framework KLI.
4. Leitura dos resumos das meta-análises para tirar os números citados na skill.

A tabela completa, com DOI, citações e limites de cada método, está em `tutor/references/metodos.md`.

## Critérios

- Método com meta-análise ou revisão muito citada, ou princípio usado por professores em larga escala (Rosenshine, Merrill).
- Vale para mais de um tipo de assunto.
- Tem um gesto concreto que o tutor consegue fazer numa conversa.

Ficaram de fora "estilos de aprendizagem" (sem evidência, Pashler et al. 2008) e reler e grifar como estudo (baixa utilidade, Dunlosky et al. 2013).

## Limites

- O número de citações é do OpenAlex na data da busca e mede difusão, não qualidade.
- Rosenshine (2012) e Collins, Brown e Holum (1991) saíram na American Educator e não têm DOI.
- A ordem para ensinar regra de jogo vem da prática de quem ensina jogos de tabuleiro, não de pesquisa.
- Os dois estudos com tutor de IA (Bastani et al. 2025; Kestin et al. 2025) são recentes e cada um é um único experimento.

## Clicky

O Clicky (heyclicky.com) é da turma de primavera de 2026 da Y Combinator, de Farza Majeed. A versão aberta (github.com/farzaa/clicky, licença MIT) usa Claude para responder, AssemblyAI para transcrever e ElevenLabs para falar. O modelo aponta a tela com a etiqueta `[POINT:x,y:rótulo]` e responde curto, sem formatação, porque tudo é lido em voz alta. Ele manda as últimas dez trocas a cada pedido. Daí o modo de voz e tela e o prompt em `clicky/prompt-tutor.md`.
