# JENKINS

<br />

![version](https://img.shields.io/badge/version-0.0.1-blue.svg?maxAge=2592000)

Installation and configuration of the Jenkins tool and plugins.

**Note:** When using the project, add the docker folder in .gitignore

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

This plugin allows you to configure all aspects of email notifications. You can customize when an email is sent, who should receive it, and what the email says.

**Link plug-in:** [email-ext](https://plugins.jenkins.io/email-ext/)

**Tutorial:** [articles-jenkins-email][https://nozaki.me/roller/kyle/entry/articles-jenkins-email)

***

<br />

**Test Results Analyzer**

The Test Results plugin is preferable because it offers greater visibility of test results and execution trend patterns, in addition to facilitating installation. The 'Result Analyzer Tests' provides many different graphical representations and a very detailed matrix table that will direct you to the result of each test for all the builds you have had. An effective method of unstable test recognition.

**Link plug-in:** [test-results-analyzer](https://plugins.jenkins.io/test-results-analyzer)

***

<br />

**Plugin Pipeline**

'Pipeline' helps to simplify the continuous delivery system using conventional plug-ins and freestyle designs, and performs other dynamic tasks in Jenkins.

**Link plug-in:** [workflow-aggregator](https://plugins.jenkins.io/workflow-aggregator)

***

<br />

**Mailer**

This plugin allows you to configure email notifications for construction results. This is a breakdown of the email component based on the original core.

**Link plug-in:** [mailer](https://plugins.jenkins.io/mailer/)

***

<br />

**Enable color console outputs**

This is another extremely simple adjustment. Colors! With the AnsiColor plugin, you can easily configure different color maps of the console. Using a color plugin like this makes reading many debugging results from the console easier. You will need to spend some time on your registration to make sure it produces in different colors based on gravity, but this is a “set it up and done” kind of thing. If you are already using a program that sends color text to the console, you should be ready to start working with the color xtermmap.

**Link plug-in:** [ansicolor](https://plugins.jenkins.io/ansicolor/)

***

<br />

**Adjust the theme**

I don't know about you, but I'm tired of looking at the old, monotonous theme that accompanies Jenkins. Fortunately, you can change themes and bring things into the modern era quite easily with the Simple Theme plugin. Once installed, all you have to do is provide a URL for the theme you want to use. Personally, I recommend the [Jenkins Material Theme](http://afonsof.com/jenkins-material-theme/) of afonsof. This theme is light, flat and modern. If you've used any other material-like themes before, you'll feel right at home. Here is an example of some of the icons:

**Link  lug-in:** [simple-theme-plugin](https://plugins.jenkins.io/simple-theme-plugin/)

**Tutorial:** [canon-jenkins](https://github.com/rackerlabs/canon-jenkins)

***

<br />

**DSL work**

The Jenkins Job DSL plugin allows programmers to use Groovy to define jobs and configure a common set of items for them. The plug-in then maintains these scripts and updates job information automatically. This allows programmers to create standardized templates using Domain Specific Language (DSL), which makes configuring new projects an easy task.

**Link plug-in:** [job-dsl-plugin](https://github.com/jenkinsci/job-dsl-plugin)

***

<br />

**Performance plugin**

This is a really cool tool for developers to play with. It allows developers to capture reports from a wide range of testing tools that include JUnit, JMeter, Twitter's Lago and Taurus. You can view information about your project's performance on Jenkins using tables and graphs. This is a great example of one of Jenkins' main graphics plugins.

**Link plug-in:** [performance](https://plugins.jenkins.io/performance/)

***

<br />

**Build Monitor View**

You will be able to track the builds of the jobs you create.

**Link plug-in:** [build-monitor-plugin](https://plugins.jenkins.io/build-monitor-plugin/)

***

<br />

**Periodic Backup**

It will help you to maintain the settings of all your jenkins (general settings, jobs, plugins).

**Link plug-in:** [periodicbackup](https://plugins.jenkins.io/periodicbackup/)

***

<br />

**Cucumber Living Documentation**

For you who write the tests with Cucumber, a nice plugin is Living Documentation. When configured in the job, this plugin generates complete PDF and HTML documentation based on your User Stories. This documentation includes which features, scenarios and steps have passed and which have failed, in addition to the time it took the automation to test each step. This documentation is generated in real time, that is, right after the execution of the automated test job, the documentation is updated with the results of the tests and is available at a URL in Jenkins. Your team, stackholders, PO can use this document as a system specification.

**Link plug-in:** [cucumber-living-documentation](https://plugins.jenkins.io/cucumber-living-documentation/)

**Tutorial:** [automated-tests-at-jenkins-resources-plugins-and-tips-to-increase-productivity](https://medium.com/cwi-software/testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade-1685ffa1e9db)

***

<br />

**Cucumber Reports**

This plugin presents the results of Cucumber tests in a very complete way in an HTML report accessible by Jenkins himself. The information is grouped by tabs: "Feature", "Tags", "Steps", "Trends" and "Failures".

**Link plug-in:** [cucumber-reports](https://plugins.jenkins.io/cucumber-reports/)

**Tutorial:** [automated-tests-at-jenkins-resources-plugins-and-tips-to-increase-productivity](https://medium.com/cwi-software/testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade-1685ffa1e9db)

***

<br />

**Jenkins API**

The solution was to collect this information through the Jenkins Rest API. Through the API, we can collect information about any job, build, test results, artifacts, duration, etc., allowing us to filter the information that most interests us. The available formats are json, xml and a specific format in python.

**Link plug-in:** [java-client-api](https://github.com/jenkinsci/java-client-api)

***

<br />

**Git parameter plug-in**

When you spend most of the day building pipelines and automating boring tasks, you want people to actually use them. To achieve this, you must make it easy to use. The Git Parameter plugin allows you to have Git branches, tags or revisions as a parameter to start a job or pipeline. This is really useful if, for example, you want to set up a continuous delivery pipeline where the developer can choose which Git tag to implement.

**Link plug-in:** [git-parameter](https://plugins.jenkins.io/git-parameter/)

***

<br />

**Plugin GitLab**

The GitLab plug-in allows you to call GitLab pipelines, using WebHooks, and publish the compilation results back to GitLab. This allows you to get feedback quickly from your CI pipelines.

**Link plug-in:** [gitlab-plugin](https://github.com/jenkinsci/gitlab-plugin)

***

<br />

**Extended email plug-in**

The Extended Email plugin extends Jenkins email notifications, giving you control over almost every aspect. You can customize the notification, content and recipient triggers. Take a look at these [recipes](https://wiki.jenkins.io/display/JENKINS/Email-ext+Recipes) to get your own ideas. Tip: make sure that each notification sent is absolutely necessary, do not send spam to your users. Believe me, the less notifications you send, the more users will read them and actually react to them. Use IM plug-ins (like the Slack plug-in or the Skype plug-in) to disperse your notifications.

**Link plug-in:** [email-ext](https://plugins.jenkins.io/email-ext/)

***

<br />

**Multibranch Pipeline**

This will automatically trigger the execution of the work for each branch, you have for your project repository. This solves the problem of creating a new build for each new branch that we create instantly.

**Link plug-in:** [Jenkins_Pipeline_Demo](https://github.com/raghwendra-sonu/Jenkins_Pipeline_Demo)

***

<br />

**Poll Mailbox Trigger**

A Jenkins plugin, to search for an email inbox and trigger jobs based on new emails.

**Link plug-in:** [poll-mailbox-trigger-plugin](https://github.com/jenkinsci/poll-mailbox-trigger-plugin)

***

<br />

## Plug-in overload

Plug-ins are great, as they can provide extensibility to the core functionality of a system. But, what happens when you have to use a plugin for everything, even basic tasks? Build for a Docker environment, Kubernetes, extract from GitHub, authentication ... All very common tasks, for which you need to install and maintain a plugin.

Jenkins has more than 1500 plug-ins available today. How do you decide which one to use? Most of them are written by third parties, which means that they can lose support without any notice.

In addition, it is worth mentioning the chain of dependencies. Many services change all the time, making dependencies on plug-ins very problematic and one of the most common causes of broken pipelines. This does not really provide availability and stability.

***

<br />

## Links Pesquisados

 - [How to send Email at every build with Jenkins](https://nozaki.me/roller/kyle/entry/articles-jenkins-email)
 - [Jenkins: The least you need to know](https://www.youtube.com/watch?v=8OfhS5f7jIY)
 - [Top Jenkins plugins to take your CI/CD pipeline to the next level.](https://medium.com/devops-dudes/top-jenkins-plugins-to-take-your-ci-cd-pipeline-to-the-next-level-2482e479b2c6)
 - [5 Jenkins Plugins That You Should Use](https://medium.com/better-programming/5-jenkins-plugins-you-should-use-867e39fbf532)
 - [The most useful Jenkins plugins for DevOps in 2020](https://medium.com/@anupam.ncsu/the-most-useful-jenkins-plugins-for-devops-in-2020-db46d19ca995)
 - [Jenkins: from zero to deploy](https://medium.com/@allyxcristiano/jenkins-from-zero-to-deploy-e54a627f055a)
 - [Automated testing at Jenkins: resources, plugins and tips to increase productivity](https://medium.com/cwi-software/testes-automatizados-no-jenkins-recursos-plugins-e-dicas-para-aumentar-a-produtividade-1685ffa1e9db)
 - [8 Jenkins plugins I can't live without](https://dev.to/jcoelho/8-jenkins-plugins-i-cant-live-without-3bin)
 - [Jenkins Multibranch Pipeline](https://dev.to/raghwendrasonu/jenkins-multibranch-pipeline-19lh)
 - [Trigger a Job with Email in Jenkins](https://dev.to/raghwendrasonu/trigger-a-job-with-email-in-jenkins-1554)
 - [Jenkins: The least you need to know](https://www.youtube.com/watch?v=8OfhS5f7jIY)

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
