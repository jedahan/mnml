# Customization Options

Configuring Geometry is just a matter of setting some variables. Below, you'll find a
list of all possible options that you can set that will override Geometry appearance
and functionality.

# Table of Contents
- [Function `geometry_docker_machine`](#Function-geometrydockermachine)
- [Function `geometry_exec_time`](#Function-geometryexectime)
- [Function `geometry_git`](#Function-geometrygit)
- [Function `geometry_hg`](#Function-geometryhg)
- [Function `geometry_hostname`](#Function-geometryhostname)
- [Function `geometry_jobs`](#Function-geometryjobs)
- [Function `geometry_kube`](#Function-geometrykube)
- [Function `geometry_node`](#Function-geometrynode)
- [Function `geometry_npm_package_version`](#Function-geometrynpmpackageversion)
- [Function `geometry_path`](#Function-geometrypath)
- [Function `geometry_ruby`](#Function-geometryruby)
- [Function `geometry_rust_version`](#Function-geometryrustversion)
- [Function `geometry_rustup`](#Function-geometryrustup)
- [Function `geometry_status`](#Function-geometrystatus)
- [Function `geometry_virtualenv`](#Function-geometryvirtualenv)

### Function `geometry_docker_machine`

Show the docker machine name.

| Variable                         | Description                     | Defaults |
| -------------------------------- | ------------------------------- | -------- |
| `GEOMETRY_DOCKER_MACHINE_SYMBOL` | Indicator.                      | `⚓`      |
| `GEOMETRY_DOCKER_MACHINE_COLOR`  | Text color of the machine name. | `blue`   |

### Function `geometry_exec_time`

Show the elapsed time for long running commands.

| Variable                      | Description                                   | Defaults |
| ----------------------------- | --------------------------------------------- | -------- |
| `GEOMETRY_EXEC_TIME_FILE`     | Path to temp direcotry, where file is stored. |          |
| `GEOMETRY_EXEC_TIME_PATIENCE` | Seconds before the time is shown.             |          |

### Function `geometry_git`

Show git related information, such as branch name, status and time since last commit.

| Variable                                 | Description                                 | Defaults             |
| ---------------------------------------- | ------------------------------------------- | -------------------- |
| `GEOMETRY_GIT_GREP`                      | Used to override our searching.             | `rg` > `ag` > `grep` |
| **geometry_git_stashes()**               |                                             |                      |
| `GEOMETRY_GIT_SYMBOL_STASHES`            | Indicator.                                  | `●`                  |
| `GEOMETRY_GIT_COLOR_STASHES`             | Color.                                      | `144`                |
| **geometry_git_time()**                  |                                             |                      |
| `GEOMETRY_COLOR_NO_TIME`                 | Text color.                                 | `white`              |
| `GEOMETRY_GIT_NO_COMMITS_MESSAGE`        | Text message shown when there's no commits. | `no-commits`         |
| `GEOMETRY_GIT_TIME_DETAILED`             | Detailed timestamp instead of simple.       | `false`              |
| **geometry_git_branch()**                |                                             |                      |
| `GEOMETRY_GIT_COLOR_BRANCH`              | Color for branch name.                      | `242`                |
| **geometry_git_status()**                |                                             |                      |
| `GEOMETRY_GIT_COLOR_DIRTY`               | Color for dirty indicator.                  | `red`                |
| `GEOMETRY_GIT_SYMBOL_DIRTY`              | Indicator when dirty.                       | `⬡`                  |
| `GEOMETRY_GIT_COLOR_CLEAN`               | Color for clean indicator.                  | `green`              |
| `GEOMETRY_GIT_SYMBOL_CLEAN`              | Indicator when clean.                       | `⬢`                  |
| **geometry_git_rebase()**                |                                             |                      |
| `GEOMETRY_GIT_SYMBOL_REBASE`             | Indicator.                                  | `®`                  |
| **geometry_git_remote()**                |                                             |                      |
| `GEOMETRY_GIT_SYMBOL_UNPUSHED`           | Unpushed indicator.                         | `⇡`                  |
| `GEOMETRY_GIT_SYMBOL_UNPULLED`           | Unpulled indicator.                         | `⇣`                  |
| **geometry_git_conflicts()**             |                                             |                      |
| `GEOMETRY_GIT_COLOR_CONFLICTS_UNSOLVED`  | Unsolved conflicts color.                   | `red`                |
| `GEOMETRY_GIT_COLOR_CONFLICTS_SOLVED`    | Solved conflicts color.                     | `green`              |
| `GEOMETRY_GIT_SYMBOL_CONFLICTS_SOLVED`   | Solved conflicts indicator.                 | `◆`                  |
| `GEOMETRY_GIT_SYMBOL_CONFLICTS_UNSOLVED` | Unsolved conflicts indicator.               | `◈`                  |
| **geometry_git()**                       |                                             |                      |
| `GEOMETRY_GIT_COLOR_BARE`                | Color.                                      | `blue`               |
| `GEOMETRY_GIT_SYMBOL_BARE`               | Indicator.                                  | `⬢`                  |
| **geometry::git_wrapper**                |                                             |                      |
| `GEOMETRY_GIT_SEPARATOR`                 | Separator for the indicators.               | `::`                 |

### Function `geometry_hg`

Show Mercurial related information, such as branch name, status and time since last commit.

| Variable                       | Description                     | Defaults |
| ------------------------------ | ------------------------------- | -------- |
| `GEOMETRY_HG_COLOR_BRANCH`     | Color for branch name.          | `242`    |
| `GEOMETRY_HG_COLOR_DIRTY`      | Color for dirty indicator.      | `red`    |
| `GEOMETRY_HG_SYMBOL_DIRTY`     | Indicator for dirty repository. | `⬡`      |
| `GEOMETRY_HG_COLOR_CLEAN`      | Color for clean indicator.      | `green`  |
| `GEOMETRY_HG_SYMBOL_CLEAN`     | Idicator for clean repository.  | `⬢`      |
| `GEOMETRY_HG_SYMBOL_SEPARATOR` | Separator for the indicators.   | `::`     |

### Function `geometry_hostname`

Shows user and hostname information, by default in the `enter` prompt.

| Variable                      | Description                                                               | Defaults    |
| ----------------------------- | ------------------------------------------------------------------------- | ----------- |
| `GEOMETRY_HOSTNAME_HIDE_ON`   | Don't show the username and hostname indicator when the hostname matches. | `localhost` |
| `GEOMETRY_HOSTNAME_SEPARATOR` | Separator between user and hostname.                                      | `@`         |

### Function `geometry_jobs`

Shows background jobs, by default in the `enter` prompt.

| Variable               | Description              | Defaults |
| ---------------------- | ------------------------ | -------- |
| `GEOMETRY_JOBS_SYMBOL` | Indicator.               | `⚙`      |
| `GEOMETRY_JOBS_COLOR`  | Color for the indicator. | `blue`   |

### Function `geometry_kube`

Show kubectl (Kubernetes) client version and current context/namespace.

| Variable               | Description                                | Defaults |
| ---------------------- | ------------------------------------------ | -------- |
| `GEOMETRY_KUBE_COLOR`  | Color for the indicator.                   | `blue`   |
| `GEOMETRY_KUBE_SYMBOL` | Indicator.                                 | `⎈`      |
| `GEOMETRY_KUBE_PIN`    | Can be set to always show `geometry_kube`. |          |

### Function `geometry_node`

Show node and npm/yarn version when in a node project context.

| Variable               | Description                                                                                  | Defaults |
| ---------------------- | -------------------------------------------------------------------------------------------- | -------- |
| `GEOMETRY_NODE_SYMBOL` | Indicator.                                                                                   | `⬡`      |
| `GEOMETRY_NODE_COLOR`  | Color for the indicator.                                                                     | `green`  |
| `GEOMETRY_NODE_PIN`    | Can be setup to always show `geometry_node` outside of the context of a node project folder. |          |

### Function `geometry_npm_package_version`

Display the current folder's npm package version from package.json (by @drager)

| Variable                                    | Description              | Defaults |
| ------------------------------------------- | ------------------------ | -------- |
| `GEOMETRY_NPM_PACKAGE_VERSION_SYMBOL`       | Indicator.               | `📦`     |
| `GEOMETRY_NPM_PACKAGE_VERSION_SYMBOL_COLOR` | Color for the indicator. | `red`    |
| `GEOMETRY_NPM_PACKAGE_VERSION_COLOR`        | Text color.              | `red`    |

### Function `geometry_path`

Show the current path.

| Variable                      | Description                             | Defaults |
| ----------------------------- | --------------------------------------- | -------- |
| `GEOMETRY_PATH_SYMBOL_HOME`   | Symbol representing the home directory. | `%3~`    |
| `GEOMETRY_PATH_SHOW_BASENAME` | -                                       | `false`  |
| `GEOMETRY_PATH_COLOR`         | Color for path.                         | `blue`   |

### Function `geometry_ruby`

Display the current ruby version, rvm version, and gemset.

| Variable                        | Description      | Defaults |
| ------------------------------- | ---------------- | -------- |
| `GEOMETRY_RUBY_SYMBOL`          | Indicator.       | `◆`      |
| `GEOMETRY_RUBY_COLOR`           | Indicator color. | `white`  |
| `GEOMETRY_RUBY_RVM_SHOW_GEMSET` | Show RVM gemset. | `true`   |

### Function `geometry_rust_version`

Display the current version of rust (by @drager).

| Variable                      | Description        | Defaults |
| ----------------------------- | ------------------ | -------- |
| `GEOMETRY_RUST_VERSION_COLOR` | Color for version. | `red`    |

### Function `geometry_rustup`

Display a symbol colored with the currently selected rustup toolchain.

| Variable                        | Description                                                | Defaults |
| ------------------------------- | ---------------------------------------------------------- | -------- |
| `GEOMETRY_RUSTUP_SYMBOL`        | Indicator.                                                 | `⚙`      |
| `GEOMETRY_RUSTUP_STABLE_COLOR`  | Stable color.                                              | `green`  |
| `GEOMETRY_RUSTUP_BETA_COLOR`    | Beta color.                                                | `yellow` |
| `GEOMETRY_RUSTUP_NIGHTLY_COLOR` | Nightly color.                                             | `red`    |
| `GEOMETRY_RUSTUP_PIN`           | Can be setup to keep rustup rendering even out of context. |          |

### Function `geometry_status`

Show a symbol with error/success and root/non-root information.

| Variable                            | Description                                            | Defaults |
| ----------------------------------- | ------------------------------------------------------ | -------- |
| `GEOMETRY_STATUS_SYMBOL`            | Non-root indicator.                                    | `▲`      |
| `GEOMETRY_STATUS_SYMBOL_ERROR`      | Non-root indicator on error.                           | `△`      |
| `GEOMETRY_STATUS_SYMBOL_ROOT`       | Root indicator.                                        | `▼`      |
| `GEOMETRY_STATUS_SYMBOL_ROOT_ERROR` | root indicator on error.                               | `▽`      |
| `GEOMETRY_STATUS_COLOR`             | Indicator color.                                       | `white`  |
| `GEOMETRY_STATUS_COLOR_ERROR`       | Indicator color on error.                              | `red`    |
| `GEOMETRY_STATUS_SYMBOL_COLOR_HASH` | Automatically pick a color based on the hostname hash. | `false`  |

### Function `geometry_virtualenv`

Show the current `virtualenv` or `conda` environment.

| Variable                              | Description     | Defaults |
| ------------------------------------- | --------------- | -------- |
| `GEOMETRY_VIRTUALENV_CONDA_SEPARATOR` | Text separator. | `:`      |
| `GEOMETRY_VIRTUALENV_COLOR`           | Text color.     | `green`  |
| `GEOMETRY_VIRUALENV_CONDA_COLOR`      | Text color.     | `green`  |