# Padrão de aprendizagem de cada pessoa

O tutor vai descobrindo, pelas interações, o que funciona para cada pessoa e passa a começar por aí. O método da skill é o mesmo para todo mundo. O que muda de pessoa para pessoa fica no perfil dela (`perfil.md`, seção "Como aprende"). O tutor lê esse perfil no início de cada sessão e ajusta o jeito de ensinar.

Não edite o SKILL.md nem estes arquivos para adaptar a uma pessoa. A skill pode estar instalada por link num repositório compartilhado, e o que é de uma pessoa não deve ir para lá.

## O que observar

São variáveis que a conversa deixa ver. A taxonomia de adaptatividade de Plass e Pawar (2020) separa variáveis cognitivas, motivacionais, emocionais e socioculturais; aqui ficam as que um tutor de conversa consegue medir.

| Variável | Como aparece | Exemplo de padrão |
|---|---|---|
| Porta de entrada | Com que tipo de apresentação a pessoa acerta a checagem: exemplo concreto, analogia, definição, esquema, código, mão na massa, tentar antes | "Analogia antes da definição" |
| Tamanho do passo | Quantos itens novos cabem antes de os erros subirem | "Até 3 conceitos novos por sessão" |
| Quanto andaime | Em que degrau da escada de pistas ela costuma destravar | "Destrava com a pista conceitual, degrau 2" |
| Tipo de erro | Erro de conceito, de distração ou equívoco que volta | "Confunde medir com observar sem mudar o estado" |
| Calibração | Confiança alta com resposta errada, ou o contrário | "Superestima em matemática, subestima em código" |
| Memória | Que itens ela esquece antes do intervalo previsto | "Esquece vocabulário em 7 dias; revisar em 5" |
| Interesse | De que mundo vêm os exemplos que a engajam | "Exemplos de futebol e de cozinha" |
| Ritmo e canal | Tamanho de resposta, hora, voz ou texto | "Responde melhor a turnos curtos à noite" |

Personalizar o contexto dos exemplos pelos interesses da pessoa melhorou acerto e velocidade num tutor de álgebra, sobretudo para quem estava com dificuldade (Walkington, 2013).

## O que conta como evidência

O resultado da pessoa, não a sensação dela. As pessoas costumam ter um modelo errado de como aprendem:

- Num estudo, quem estudou quadros de pintores em blocos achou o método melhor do que intercalar, mesmo depois de o próprio teste mostrar o contrário (Kornell e Bjork, 2008).
- Em física universitária, os alunos da aula ativa aprenderam mais e sentiram que aprenderam menos que os da aula expositiva (Deslauriers et al., 2019).
- A sensação de fluência, de "está fácil", engana o julgamento do próprio aprendizado (Bjork, Dunlosky e Kornell, 2013).

Por isso:

1. A evidência mais forte é o desempenho atrasado: acertar sem ajuda na revisão seguinte ou aplicar num caso novo dias depois.
2. Depois vem o desempenho na hora: acertar a checagem do fim do pedaço.
3. Por último, a opinião da pessoa ("assim ficou mais claro"). Ela entra no perfil, mas sozinha não confirma um padrão.

## Como registrar

No fim de cada pedaço ensinado, anote no `diario.md` uma linha com o que foi feito e o resultado:

```
- entrada=analogia passo=pequeno degrau=2 checagem=acertou confiança=4
```

Na revisão seguinte, acrescente o resultado atrasado do mesmo item (`revisão D+3=acertou`).

## Quando vira padrão

- **Hipótese:** 3 observações no mesmo sentido, em pelo menos 2 sessões.
- **Confirmado:** 5 observações no mesmo sentido, com pelo menos 2 resultados atrasados.
- **Rebaixar:** se um padrão confirmado falhar 2 vezes seguidas, volta a ser hipótese.
- Anote a contagem, não só a conclusão: "analogia antes: 5 de 6 acertos na revisão; definição antes: 1 de 3".
- Quando o padrão depende da área (código, cozinha, idioma), registre a área. Um padrão de uma área não vale automaticamente para outra.

## Como usar

- Comece pela porta de entrada e pelo tamanho de passo confirmados.
- Continue testando. Em mais ou menos 1 de cada 5 pedaços, tente outra porta de entrada. Sem isso o perfil congela no primeiro padrão que pareceu funcionar.
- Os métodos que valem para todo mundo continuam valendo: recuperação, espaçamento, exemplo, feedback. Se a pessoa prefere só reler, diga por que testar funciona melhor, combine um meio-termo e registre a preferência. Não abandone o que funciona por causa dela.
- Nunca rotule a pessoa ("você é visual"). Diga o que funcionou com ela e com que evidência. Estilo de aprendizagem não tem sustentação (Pashler et al., 2008; Kirschner, 2017).

## Mostrar para a pessoa

O modelo do aprendiz fica aberto: a pessoa pode ver e corrigir (modelo aberto do aprendiz, Bull e Kay, 2016). Quando um padrão vira hipótese ou é confirmado, diga numa frase no fim da sessão e pergunte se bate com a experiência dela:

> Reparei que você acerta mais quando eu começo por um exemplo do seu trabalho e só depois dou a definição. Faz sentido pra você?

Se ela discordar, registre a discordância ao lado da evidência e teste de novo. Não apague a evidência.

## Pedidos explícitos

O que a pessoa pede ("respostas mais curtas", "me dá a resposta primeiro", "sem analogia") vai numa lista separada, "Pediu". Pedido de forma (tamanho, tom, canal) se segue direto. Pedido que vai contra um método que funciona (por exemplo, nunca ser testada) se discute uma vez, com o porquê, e depois se respeita.

## Memória da plataforma

Hermes, OpenClaw e Claude Code têm memória do usuário, mas pequena. No Hermes, o `USER.md` tem por padrão um teto de cerca de 1.400 caracteres e entra no prompt só no começo de cada sessão. Guarde lá no máximo uma linha:

```
Tutor: perfil de aprendizagem em ~/.tutor/perfil.md. Principal: exemplo do trabalho antes da definição; passos curtos.
```

O perfil completo fica nos arquivos. Em plataforma sem arquivo (Clicky), o padrão vai na quarta linha do cartão da sessão (ver `estado.md`).
