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
- Preferências: respostas curtas; gosta de analogia; prefere errar e ver a correção
- Atualizado em: 2026-11-04
```

Atualize quando a pessoa disser algo novo sobre objetivo ou nível. Não pergunte tudo isso de uma vez.

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
- Errou: achou que medir não muda o estado.
- Equívoco a testar de novo: "o qubit guarda dois valores".
- Próximo: medição.
```

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
```

Peça para a pessoa guardar o cartão ou colar na próxima conversa.
