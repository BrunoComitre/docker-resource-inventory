# JENKINS

<br />

![version](https://img.shields.io/badge/version-0.0.1-blue.svg?maxAge=2592000)

Instalação e configuração da ferramenta Jenkins e plugins.

**Nota:** Ao usar o projeto, adicionar a pasta docker em .gitignore

***
<br />

## Quickstart

Text:

To find password:
``` $ cat docker/jenkins-data/secrets/initialAdminPassword  ```
``` $ ➜ 123a4567b89012c34d56efgh789i0jk1  ```

***
<br />

## Deploy with Docker

You must have docker and docker-compose tools installed to work with material in this section. Then just run:
``` docker-compose up -d ```

The application will be available on localhost 127.0.0.1 in your browser.

***
<br />

## Web routes

All routes are available in ``` /route ```, paths with.

- [Documentation docs](http://localhost:8080/docs)

***
<br />

## Plugins

<br />

**Email Extension**

Este plugin permite que você configure todos os aspectos das notificações por email. Você pode personalizar quando um e-mail é enviado, quem deve recebê-lo e o que o e-mail diz.

**Link do plug-in:** [email-ext](https://plugins.jenkins.io/email-ext/)

**Tutorial:** [articles-jenkins-email][https://nozaki.me/roller/kyle/entry/articles-jenkins-email)

***
<br />

**Analisador de resultados de teste**

O plugin Test Results é preferível por oferecer maior visibilidade dos resultados dos testes e padrões de tendência de execução, além de facilitar a instalação. O 'Testes Result Analyzer' fornece muitas representações gráficas diferentes e uma tabela de matriz bem detalhada que irá direcioná-lo para o resultado de cada teste para todas as compilações que você teve. Um método eficaz de reconhecimento de teste instável.

**Link do plug-in:** [test-results-analyzer](https://plugins.jenkins.io/test-results-analyzer)

***
<br />

**Plugin Pipeline**

'Pipeline' ajuda a simplificar o sistema de entrega contínua usando plug-ins convencionais e projetos freestyle, e executa outras tarefas dinâmicas no Jenkins.

**Link do plug-in:** [workflow-aggregator](https://plugins.jenkins.io/workflow-aggregator)

***
<br />

**Mailer**

Este plugin permite que você configure notificações por email para resultados de construção. Esta é uma quebra do componente de e-mail baseado no núcleo original.

**Link do plug-in:** [mailer](https://plugins.jenkins.io/mailer/)

***
<br />

**Ativar saída do console de cores**

Este é outro ajuste extremamente simples. Colors! Com o plugin AnsiColor , você poderá configurar facilmente diferentes mapas de cores do console. Usar um plugin de cores como este torna a leitura de muitos resultados de depuração do console mais fácil. Você precisará gastar algum tempo em seu registro para garantir que ele produza em cores diferentes com base na gravidade, mas isso é um tipo de coisa “configure uma vez e pronto”. Se você já estiver usando um programa que envia texto colorido para o console, você deve estar pronto para começar a trabalhar com o xtermmapa de cores.

**Link do plug-in:** [ansicolor](https://plugins.jenkins.io/ansicolor/)

***
<br />

**Ajuste o tema**

Não sei quanto a você, mas estou cansado de olhar para o velho e monótono tema que acompanha o Jenkins. Felizmente, você pode alterar os temas e trazer as coisas para a era moderna com bastante facilidade com o plugin Simple Theme . Depois de instalado, tudo que você precisa fazer é fornecer um URL para o tema que deseja usar. Pessoalmente, recomendo o [Jenkins Material Theme](http://afonsof.com/jenkins-material-theme/) da afonsof. Este tema é leve, plano e moderno. Se você já usou qualquer outro tema semelhante a material antes, você se sentirá em casa. Aqui está um exemplo de alguns dos ícones:

**Link do plug-in:** [simple-theme-plugin](https://plugins.jenkins.io/simple-theme-plugin/)

**Tutorial:** [canon-jenkins](https://github.com/rackerlabs/canon-jenkins)

***
<br />

**Trabalho DSL**

O plugin Jenkins Job DSL permite que os programadores usem Groovy para definir jobs e configurar um conjunto comum de itens para eles. O plug-in então mantém esses scripts e atualiza as informações do trabalho automaticamente. Isso permite que os programadores criem modelos padronizados usando o Domain Specific Language (DSL), o que torna a configuração de novos projetos uma tarefa fácil.

**Link do plug-in:** [job-dsl-plugin](https://github.com/jenkinsci/job-dsl-plugin)

***
<br />

**Plugin de desempenho**

Esta é uma ferramenta muito legal para os desenvolvedores brincarem. Ele permite que os desenvolvedores capturem relatórios de uma ampla gama de ferramentas de teste que incluem JUnit, JMeter, Twitter's Lago e Taurus. Você pode ver as informações sobre o desempenho do seu projeto no Jenkins por meio de tabelas e gráficos. Este é um ótimo exemplo de um dos principais plugins de gráfico do Jenkins.

**Link do plug-in:** [performance](https://plugins.jenkins.io/performance/)

***
<br />

**Build Monitor View**

Será possível acompanhar os builds dos jobs que você criar.

**Link do plug-in:** [build-monitor-plugin](https://plugins.jenkins.io/build-monitor-plugin/)

***
<br />

**Periodic Backup**

Vai ajudar você a manter as configurações de todo o seu jenkins (configurações gerais, de jobs, plugins).

**Link do plug-in:** [periodicbackup](https://plugins.jenkins.io/periodicbackup/)

***
<br />

**Cucumber Living Documentation**

Para você que escreve os testes com Cucumber, um plugin bacana é o Living Documentation. Quando configurado no job, este plugin gera uma documentação completa em PDF e HTML baseado nas suas User Stories. Esta documentação inclui quais funcionalidades, cenários e steps passaram e quais falharam, além do tempo que a automação levou para testar cada step. Esta documentação é gerada em tempo real, ou seja, logo após a execução do job de testes automatizados, a documentação é atualizada com o resultado dos testes e fica disponível em uma URL no Jenkins. Seu time, stackholders, PO podem utilizar este documento como especificação do sistema.

**Link do plug-in:** [cucumber-living-documentation](https://plugins.jenkins.io/cucumber-living-documentation/)

**Tutorial:** [testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade](https://medium.com/cwi-software/testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade-1685ffa1e9db)

***
<br />

**Cucumber Reports**

Este plugin apresenta de forma bem completa os resultados dos testes do Cucumber em um report HTML acessível pelo próprio Jenkins. As informações estão agrupadas por abas: “Feature”, “Tags”, “Steps”, “Trends” e “Failures”.

**Link do plug-in:** [cucumber-reports](https://plugins.jenkins.io/cucumber-reports/)

**Tutorial:** [testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade](https://medium.com/cwi-software/testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade-1685ffa1e9db)

***
<br />

**Jenkins API**

A solução foi coletar estas informações através da API Rest do Jenkins. Através da API, podemos coletar informações sobre qualquer job, build, resultado de testes, artefatos, duração, etc, permitindo filtrar as informações que mais nos interessam. Os formatos disponíveis são json, xml e um formato específico em python.

**Link do plug-in:** [java-client-api](https://github.com/jenkinsci/java-client-api)

***
<br />

**Plug-in de parâmetro do Git**

Quando você passa a maior parte do dia construindo pipelines e automatizando tarefas chatas, você quer que as pessoas realmente os usem. Para conseguir isso, você deve torná-lo fácil de usar. O plugin Git Parameter permite que você tenha branches , tags ou revisões do Git como um parâmetro para iniciar um trabalho ou pipeline. Isso é realmente útil se, por exemplo, você deseja configurar um pipeline de entrega contínua onde o desenvolvedor pode escolher de qual tag Git implementar.

**Link do plug-in:** [git-parameter](https://plugins.jenkins.io/git-parameter/)

***
<br />

**Plugin GitLab**

Em minha empresa, usamos uma instância hospedada do GitLab como nossa ferramenta de gerenciamento de código-fonte. E embora eu ame a abordagem do GitLab para CI ( leia ), não seguimos esse caminho. Portanto, usamos Jenkins em vez disso e o conectamos ao GitLab. No final, os desenvolvedores têm a mesma experiência. O plug-in GitLab permite chamar pipelines do GitLab, usando WebHooks, e publicar os resultados da compilação de volta no GitLab. Isso permite que você obtenha feedback rapidamente de seus pipelines de CI.

**Link do plug-in:** [gitlab-plugin](https://github.com/jenkinsci/gitlab-plugin)

***
<br />

**Plug-in de e-mail estendido**

Quando algo dá errado, você precisa que seus usuários resolvam o problema o mais rápido possível, caso contrário, seu CI / CD pode ser comprometido. O plugin Extended Email estende as notificações de email do Jenkins, dando controle sobre quase todos os aspectos. Você pode personalizar os gatilhos de notificações , conteúdo e destinatários . Dê uma olhada nessas [receitas](https://wiki.jenkins.io/display/JENKINS/Email-ext+Recipes) para ter suas próprias idéias. Dica : certifique-se de que cada notificação enviada seja absolutamente necessária, não envie spam para seus usuários. Acredite em mim, quanto menos notificações você enviar, mais os usuários as lerão e realmente reagirão a elas. Use plug-ins de IM (como o plug-in do Slack ou o plug-in do Skype) para dispersar suas notificações.

**Link do plug-in:** [email-ext](https://plugins.jenkins.io/email-ext/)

***
<br />

**Multibranch Pipeline**

Isso irá acionar automaticamente a execução do trabalho para cada branch, você tem para o seu repositório de projeto. Isso resolve o problema de criar uma nova construção para cada novo branch que criamos instantaneamente.

**Link do plug-in:** [Jenkins_Pipeline_Demo](https://github.com/raghwendra-sonu/Jenkins_Pipeline_Demo)

***
<br />

**Poll Mailbox Trigger**

Um plugin do Jenkins, para pesquisar uma caixa de entrada de e-mail e acionar jobs com base em novos e-mails.

**Link do plug-in:** [poll-mailbox-trigger-plugin](https://github.com/jenkinsci/poll-mailbox-trigger-plugin)

***
<br />

## Sobrecarga de plug-in

Os plug-ins são ótimos, pois podem fornecer extensibilidade às funcionalidades centrais de um sistema. Mas, o que acontece quando você tem que usar um plugin para tudo, até mesmo tarefas básicas? Construir para um ambiente Docker, Kubernetes, extrair do GitHub, autenticação ... Todas as tarefas bastante comuns, para as quais você precisa instalar e manter um plugin .

tarde da noite

Foto de Nick Fewings no Unsplash
Jenkins tem mais de 1500 plug-ins disponíveis hoje. Como você decide qual usar? A maioria deles são escritos por terceiros, o que significa que podem perder o suporte sem qualquer aviso.

Além disso, vale a pena mencionar a cadeia de dependências. Muitos serviços mudam o tempo todo, tornando as dependências de plug-ins muito problemáticas e uma das causas mais comuns de pipelines quebrados. Isso realmente não fornece disponibilidade e estabilidade.

***
<br />

## References

- [MAIN] []()
- [PLUGIN] []()
- [HELP] []()
- [APPLY] []()
- [STUDY] []()
- [TEST] []()
- [IMPLEMENT] []()



## Links Pesquisados

 - [How to send Email at every build with Jenkins](https://nozaki.me/roller/kyle/entry/articles-jenkins-email)
 - [Jenkins: O mínimo que você precisa saber](https://www.youtube.com/watch?v=8OfhS5f7jIY)
 - [Top Jenkins plugins to take your CI/CD pipeline to the next level.](https://medium.com/devops-dudes/top-jenkins-plugins-to-take-your-ci-cd-pipeline-to-the-next-level-2482e479b2c6)
 - [5 Jenkins Plugins That You Should Use](https://medium.com/better-programming/5-jenkins-plugins-you-should-use-867e39fbf532)
 - [The most useful Jenkins plugins for DevOps in 2020](https://medium.com/@anupam.ncsu/the-most-useful-jenkins-plugins-for-devops-in-2020-db46d19ca995)
 - [Jenkins: de zero para implantar](https://medium.com/@allyxcristiano/jenkins-from-zero-to-deploy-e54a627f055a)
 - [Testes automatizados no Jenkins: recursos, plugins e dicas para aumentar a produtividade](https://medium.com/cwi-software/testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade-1685ffa1e9db)
 - [8 Jenkins plugins I can't live without](https://dev.to/jcoelho/8-jenkins-plugins-i-cant-live-without-3bin)
 - [Jenkins Multibranch Pipeline](https://dev.to/raghwendrasonu/jenkins-multibranch-pipeline-19lh)
 - [Trigger a Job with Email in Jenkins](https://dev.to/raghwendrasonu/trigger-a-job-with-email-in-jenkins-1554)
 - [Jenkins: O mínimo que você precisa saber](https://www.youtube.com/watch?v=8OfhS5f7jIY)

***
<br />

## Links Salvos

 - [Building CI/CD pipelines with Jenkins](https://opensource.com/article/19/9/intro-building-cicd-pipelines-jenkins)
 - [What is Jenkins? The CI server explained](https://www.infoworld.com/article/3239666/what-is-jenkins-the-ci-server-explained.html#:~:text=Joe%20deSousa%20(CC0)-,Jenkins%20offers%20a%20simple%20way%20to%20set%20up%20a%20continuous,automating%20other%20routine%20development%20tasks.)
 - [Jenkins](https://www.jenkins.io/)
 - [Jenkins Documentetion](https://www.jenkins.io/doc/)
 - [Jenkins (software)](https://en.wikipedia.org/wiki/Jenkins_(software))
 - [What is Jenkins? Continuous Integration (CI) Tool](https://www.guru99.com/jenkin-continuous-integration.html)
 - [Jenkins Plugins](https://plugins.jenkins.io/)
 - [Tutorial: Developing Complex Plugins for Jenkins](https://medium.com/velotio-perspectives/tutorial-developing-complex-plugins-for-jenkins-a34c0f979ca4)
 - [Automating Data Science Projects With Jenkins](https://towardsdatascience.com/automating-data-science-projects-with-jenkins-8e843771aa02)
 - [Dependencies Check with Jenkins](https://dev.to/kinoba/dependencies-check-with-jenkins-5537)
 - [Jenkins is getting old](https://dev.to/microtica/jenkins-is-getting-old-1mf6)
 - [Complete Jenkins Pipeline Tutorial for Beginners [FREE]](https://dev.to/techworld_with_nana/complete-jenkins-pipeline-tutorial-for-beginners-free-3fm9)
 - [Automate your API tests with Jenkins, Postman and Newman](https://dev.to/carleskapy/automate-your-api-tests-with-jenkins-postman-and-newman-3079)


***
