# Developer Notes

> Some tooling notes to get you up and running in a local development environment.


## Source Control and Branching Workflow

* [Git][1]

* [Gitflow][2]

* [GitVersion][3]


## Configuring a Local Development Machine

The [Chocolatey][4] package manager can be used to install all of the tooling required to work on the repository.

```
choco install git
choco install gitversion.portable
choco install docker
```


## Intialising Gitflow

Utilising [Gitflow][2] and [GitVersion][3] on projects has a tendency to cut out dogma around _what things are called_. Sign me up ;)

Run the `git flow init` command to initialise the branching workflow. When prompted, use the defaults provided by the standard workflow.


 [1]: https://git-scm.com/
 [2]: https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow 
 [3]: https://github.com/GitTools/GitVersion
 [4]: https://chocolatey.org/install