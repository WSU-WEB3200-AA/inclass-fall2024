# A Ruby Workspace Using a Dev Container

This repository serves as a Ruby workspace supported by a cross-platform Docker-based dev container. Header (`.h`) files should be placed in the `include/` folder, while implementation (`.cpp`) files should be placed in the `src/` folder.

## Requirements

To set up this repository, follow these one-time steps:

- Install the [Docker Desktop application](https://docs.docker.com/get-started/get-docker/). You don’t need to configure Docker beyond installing it on your operating system.
- Install [Visual Studio Code](https://code.visualstudio.com).
- Open Visual Studio Code and install the Dev Containers extension.

Afterward, download or clone this repository to your local machine and open its folder in Visual Studio Code. If you see a popup with an option to "Reopen in Container," click it. If not, click the Dev Containers icon in the bottom-left corner and select "Reopen in Container." Alternatively, press F1 to launch VSCode's Command Palette, search for, and select "Dev Containers: Reopen in Container." This will open the repository in the dev container, where all development tools (compiler, linker, debugger, etc.) are available.

## Running Ruby 

To verify Ruby is installed, run the following command:

```sh
ruby -v
```

To run interactive Ruby, use:

```sh
irb
```

Ruby on Rails (Rails) is also installed.

## Creating a Rails Application

You can create a Rails application by running one of the following commands in the terminal from the main folder of this workspace:

**For traditional Rails applications**:

```sh
rails new APP_NAME_GOES_HERE
```

**For modern Rails applications** with JavaScript and Bootstrap support:

```sh
rails new APP_NAME_GOES_HERE --js bun --css bootstrap --skip-jbuilder --skip-test --skip-system-test --skip-git --skip-docker
```

**For modern Rails applications** with JavaScript and Tailwind CSS support:

```sh
rails new APP_NAME_GOES_HERE --js bun --css tailwind --skip-jbuilder --skip-test --skip-system-test --skip-git --skip-docker
```

Note that the skip options are included for learning purposes and to minimize file generation. For real-world applications, these options should be removed.

For more options, check out [The Rails Command Line Guide](https://guides.rubyonrails.org/command_line.html).
