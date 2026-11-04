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

## Segunda rodada: como a pessoa aprende

Pergunta: o tutor deve guardar na memória como cada pessoa aprende, ou a própria skill deve ir mudando conforme o feedback de cada usuário?

### Como fazem os outros

- **As três skills de tutoria guardam um arquivo e não mexem na skill.** A `skill-tutor` pergunta o estilo na entrada ("teoria primeiro, mão na massa ou aprender pelo erro?") e guarda observações em `learner_profile.md`. A `teach` guarda o que a pessoa domina, o que está frágil, os equívocos e a calibração da autoavaliação em `learner.md`, e diz por que o estado fica fora da pasta da skill: para não se perder numa atualização e para servir em qualquer agente. A `tutor` só tem `journal.md`.
- **O Hermes separa memória de procedimento e memória de fatos.** Skills são a memória de procedimento, e o agente pode criar e corrigir skills sozinho. O que é da pessoa vai em `USER.md` e `MEMORY.md`, que entram no prompt no começo de cada sessão. Numa instalação conferida em 04/11/2026, o `USER.md` tinha teto de 1.375 caracteres e o `MEMORY.md`, de 2.200 (`memory.user_char_limit` e `memory.memory_char_limit` em `~/.hermes/config.yaml`).
- **O OpenClaw usa um registro e uma promoção.** A skill `self-improving-agent` anota correções e erros em `.learnings/` e promove o que vale sempre para os arquivos do workspace (`SOUL.md`, `AGENTS.md`, `TOOLS.md`). Também não reescreve a skill que estava em uso.

### Decisão

A skill fica igual para todo mundo, e o padrão de cada pessoa vai para o perfil dela em `~/.tutor/perfil.md`. A adaptação acontece em tempo de uso: o tutor lê o perfil e ajusta porta de entrada, tamanho do passo e quantidade de ajuda. Reescrever a skill por usuário foi descartado por quatro motivos:

1. A skill está instalada por link num repositório. No Hermes, uma correção automática da skill cairia no checkout do Git e misturaria o jeito de uma pessoa com o método de todos.
2. O mesmo agente costuma atender mais de uma pessoa, por exemplo num grupo de WhatsApp. Uma skill por pessoa não escala.
3. A memória da plataforma é pequena demais para o modelo do aprendiz. Ela guarda só uma linha apontando para o perfil.
4. O que a pessoa sente que funciona costuma estar errado (Kornell e Bjork, 2008; Bjork, Dunlosky e Kornell, 2013; Deslauriers et al., 2019). Uma skill que se reescreve pelo feedback dela tenderia a trocar recuperação e espaçamento por reler. Por isso o padrão sai do desempenho, principalmente o atrasado, e a opinião entra como dado separado.

O tutor também não pergunta o estilo na entrada, como faz a `skill-tutor`. Estilo de aprendizagem não tem evidência (Pashler et al., 2008; Kirschner, 2017), e a resposta da pessoa sobre como aprende é o dado menos confiável que existe.

### Referências da rodada

Conferidas no bx-scholar em 04/11/2026: Corbett e Anderson (1994), Bull e Kay (2016), Plass e Pawar (2020), Walkington (2013), Hidi e Renninger (2006), Bjork, Dunlosky e Kornell (2013), Kornell e Bjork (2008), Deslauriers et al. (2019), Koriat (1997), Shute (2008), Kirschner (2017) e Rohrer e Pashler (2012). DOI e citações em `tutor/references/metodos.md`.
