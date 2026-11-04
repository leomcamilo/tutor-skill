# tutor-skill

Uma skill de tutoria para qualquer assunto: código, computação quântica, matemática, idioma, uma ferramenta, uma receita, a regra de um jogo. Ela descobre o que a pessoa já sabe, explica com exemplo, faz praticar, confere com perguntas e marca revisões.

Os métodos vêm da ciência da aprendizagem: prática de recuperação, revisão espaçada, exemplo resolvido, autoexplicação, andaime que diminui, feedback sobre a tarefa, domínio antes de avançar e ensinar de volta (técnica Feynman). Cada um tem fonte conferida, com DOI, em [`tutor/references/metodos.md`](tutor/references/metodos.md). [`docs/pesquisa.md`](docs/pesquisa.md) conta como a lista foi montada.

## O que tem aqui

```
tutor/
  SKILL.md                 a skill (formato Agent Skills)
  references/
    metodos.md             métodos, fontes e o que evitar
    dominios.md            roteiros por tipo de assunto
    estado.md              perfil, plano, diário e revisões em ~/.tutor
    padrao.md              como o tutor descobre o jeito de cada pessoa aprender
    voz-e-tela.md          como ensinar falando e apontando a tela
clicky/prompt-tutor.md     versão para colar no prompt do Clicky
install.sh                 instala no Claude Code, no Hermes ou no OpenClaw
```

## Instalar

```bash
git clone https://github.com/leomcamilo/tutor-skill ~/tutor-skill
cd ~/tutor-skill
./install.sh claude      # Claude Code: ~/.claude/skills/tutor
./install.sh hermes      # Hermes: ~/.hermes/skills/tutor
./install.sh openclaw    # OpenClaw: ~/.openclaw/skills/tutor
```

O script cria um link para a pasta `tutor/`, então um `git pull` atualiza a skill. Use `--copy` para copiar. Se já houver uma skill `tutor` no destino, ela é movida antes para `~/.tutor-skill-backup/`.

No Hermes, com o repositório público, também funciona `hermes skills install leomcamilo/tutor-skill/tutor`, que permite atualizar com `hermes skills update`.

No OpenClaw, se o seu workspace carrega skills de outra pasta, defina `OPENCLAW_SKILLS_DIR` antes de rodar o script.

## Usar

Peça como pediria a uma pessoa:

- "me explica o que é emaranhamento quântico"
- "não entendi esse erro de borrow no Rust"
- "me ensina a fazer risoto, estou na cozinha agora"
- "como se joga truco?"
- "quero aprender estatística do zero até março"
- "me testa no que eu vi semana passada"

A skill escolhe entre quatro modos:

- **Entender.** Explicação curta com exemplo e uma pergunta de checagem.
- **Fazer junto.** Um passo por vez, com o porquê e o sinal de que deu certo.
- **Aprender.** Trilha com diagnóstico, mapa do assunto, prática e revisões.
- **Revisar.** Perguntas sobre o que venceu.

Com o tempo, o tutor descobre o que funciona para cada pessoa: se ela entende melhor começando por exemplo ou por definição, quantos conceitos novos cabem numa sessão, quanta ajuda ela precisa para destravar, o que esquece rápido e que exemplos a engajam. Ele julga pelo que a pessoa consegue fazer sozinha depois, e não pelo que pareceu claro. O padrão vira hipótese com 3 observações e fica confirmado com 5, contando com revisões dias depois. Quando um padrão muda, o tutor conta para a pessoa e ela pode corrigir. A skill é a mesma para todo mundo; o que é de cada pessoa fica no perfil dela. A escolha está explicada em [`docs/pesquisa.md`](docs/pesquisa.md).

O progresso fica em `~/.tutor` (mude com `TUTOR_HOME`) em arquivos de texto que a pessoa pode abrir e corrigir. Em plataforma com agendamento, como o Hermes e o OpenClaw, o tutor oferece lembrar a revisão no dia certo, e só agenda se a pessoa aceitar.

## No Clicky

O [Clicky](https://heyclicky.com) é um assistente de Mac que fica ao lado do cursor, ouve a pergunta, vê a tela, responde em voz e aponta o lugar certo. Ele é bom para ensinar porque a tela vira a sala de aula:

1. A pessoa abre o Excel e pergunta como fazer um PROCV.
2. O tutor aponta a célula e explica a fórmula enquanto ela digita.
3. Quando aparece o erro, o tutor mostra onde está.
4. Na segunda vez, ele pergunta "onde você acha que fica?" antes de apontar.

O mesmo vale para receita aberta no navegador, partida de xadrez online, editor de código ou um artigo com diagrama.

O Clicky não carrega skills. Cole [`clicky/prompt-tutor.md`](clicky/prompt-tutor.md) no prompt de sistema do app. Na versão aberta, o prompt fica no código Swift. [`tutor/references/voz-e-tela.md`](tutor/references/voz-e-tela.md) explica o formato de apontar e o ciclo de ensino na tela.

## Licença

MIT.
