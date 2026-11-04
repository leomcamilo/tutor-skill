# Estado do aprendiz

O estado fica em `$TUTOR_HOME`, que por padrão é `~/.tutor`. São arquivos de texto, para qualquer plataforma ler e para a pessoa poder abrir e corrigir. Não guarde senha, documento, dado de saúde ou dado de terceiros.

```
~/.tutor/
  perfil.md
  revisoes.md
  assuntos/
    computacao-quantica/
      plano.md
      diario.md
```

O nome da pasta do assunto vai em minúsculas, sem acento e com hífen.

## perfil.md

```markdown
# Perfil
- Idioma: português
- Objetivos: entender computação quântica para ler artigos (até mar/2027); Rust para o trabalho
- Nível por área: programação avançado (Python, TS); física de ensino médio; cozinha iniciante
- Atualizado em: 2026-11-04

## Pediu
- Respostas curtas (2026-10-20)
- Sem emoji (2026-10-20)

## Como aprende
| Padrão | Evidência | Situação | Área | Desde |
|---|---|---|---|---|
| Exemplo do trabalho antes da definição | 5 de 6 acertos na revisão; definição antes: 1 de 3 | confirmado | geral | 2026-10-28 |
| Destrava na pista conceitual (degrau 2) | 4 de 5 exercícios | confirmado | código | 2026-10-30 |
| Até 3 conceitos novos por sessão | errou 3 de 4 checagens nas sessões com 5 conceitos | hipótese | quântica | 2026-11-04 |
| Esquece vocabulário antes de 7 dias | 3 de 4 erros na revisão de 7 dias | hipótese | idioma | 2026-11-02 |
| Confiança alta com erro em contas | 3 vezes | hipótese | matemática | 2026-11-01 |
| Engaja com exemplos de futebol | disse e respondeu mais longo nas 2 vezes | hipótese | geral | 2026-11-03 |

Discordâncias da pessoa:
- "Acho que aprendo melhor lendo a teoria antes" (2026-11-03). Testar de novo com definição antes no próximo assunto novo.
```

Atualize objetivo e nível quando a pessoa disser algo novo. Não pergunte tudo isso de uma vez. "Pediu" guarda pedidos de forma, ditos pela pessoa. "Como aprende" guarda padrões observados, com a contagem que os sustenta. As regras para criar, confirmar e rebaixar um padrão estão em `padrao.md`.

## plano.md

```markdown
# Computação quântica
Objetivo: ler e entender a parte técnica de artigos de divulgação e de revisão.
Critério de domínio: acertar 4 de 5 checagens do item sem consulta.

| Item | Tipo | Situação | Última checagem |
|---|---|---|---|
| bit e qubit | conceito | dominado | 2026-11-04 4/5 |
| superposição | conceito | aprendendo | 2026-11-04 2/5 |
| medição | conceito | novo | |
| porta Hadamard | procedimento | novo | |
```

Situação: `novo`, `aprendendo` ou `dominado`. Monte o mapa no início do modo Aprender, com 5 a 12 itens, e mostre para a pessoa antes de começar.

## diario.md

Uma entrada por sessão, a mais recente em cima:

```markdown
## 2026-11-04
- Vimos: superposição com a analogia da seta no círculo.
- Pedaço 1: entrada=analogia passo=pequeno degrau=1 checagem=acertou confiança=4
- Pedaço 2: entrada=definição passo=pequeno degrau=3 checagem=errou confiança=4
- Errou: achou que medir não muda o estado.
- Equívoco a testar de novo: "o qubit guarda dois valores".
- Revisão de 2026-11-01 (bit e qubit, D+3): lembrou sem ajuda.
- Próximo: medição.
```

As linhas `Pedaço` e `Revisão` alimentam a seção "Como aprende" do perfil. Sem elas, não há evidência para um padrão.

## revisoes.md

```markdown
| Item | Assunto | Próxima | Intervalo (dias) | Histórico |
|---|---|---|---|---|
| bit e qubit | computacao-quantica | 2026-11-07 | 3 | 11-04 ok |
| truco: ordem das cartas | truco | 2026-11-05 | 1 | 11-04 erro |
```

Intervalos: 1, 3, 7, 21, 60 dias. Acertou sem pista, sobe um degrau. Acertou com pista, repete o intervalo. Errou, volta para 1 dia. No modo Revisar, pegue os itens com `Próxima` igual ou anterior a hoje, misture assuntos e faça uma pergunta aberta por item.

## Sem arquivos

Em plataforma sem leitura e escrita de arquivo (Clicky, chat simples), mantenha um cartão curto na conversa e reapresente no começo de cada sessão:

```
Objetivo: risoto sem queimar o fundo
Onde parou: entendeu o ponto do arroz; falta a mantecatura
Próxima revisão: amanhã, "quando colocar o caldo?"
Como aprende: entende melhor vendo o sinal na panela antes da explicação
```

Peça para a pessoa guardar o cartão ou colar na próxima conversa. Sem arquivo, o padrão fica só como hipótese, porque não dá para contar evidência entre sessões.
