# Usage

## CLI

### General help

```
$ aspisec -h
AspiSec v0.2.0

Usage:
  aspisec [options] clean
  aspisec [options] list
  aspisec -h | --help
  aspisec --version

Commands:
  clean                   Removes the traces left by offensive security tools
  list                    List available modules, locations and their status

Options:
  --debug                 Display arguments
  -v, --verbose <level>   Set verbosity level (see documentation) [default: 2]
  -h, --help              Show this screen
  --version               Show version

Examples:
  aspisec clean

Project:
  source (https://github.com/noraj/aspisec)
  documentation (https://noraj.github.io/aspisec)
```

?> **Note**: You can check log / verbosity levels [here](https://noraj.github.io/aspisec/ruby/Aspisec/Logger#LOG_LEVEL-constant).

### Cleaning

Starting the cleaning is as easy as that:

```
$ aspisec clean
```

By default, it will be interactive, the description of each file / directory will be displayed, etc. If you want to change the default behavior, see [config](pages/config.md).

### List

```
$ aspisec list
✅ : john                        ✅ logs         ✅ potfile    
✅ : jwt_tool                    ✅ logs       
✅ : lsassy                      ✅ masterkeys   ✅ tickets    
✅ : manspider                   ✅ logs         ✅ loot       
✅ : amass                       ✅ logs         ✅ database   
✅ : metasploit                  ✅ history      ✅ logs         ✅ loot         ✅ meterpreter
✅ : mobsf                       ✅ logs         ✅ downloads    ✅ uploads      ✅ database   
✅ : mongodb-compass             ✅ logs       
✅ : mongodb-mongosh             ✅ logs         ✅ history    
✅ : ncrack                      ✅ restore    
❌ : bloodhound                  ✅ database     ✅ transactions
✅ : netexec                     ✅ logs         ✅ screenshots  ✅ workspaces 
✅ : recaf                       ✅ classpath    ✅ logs       
✅ : crackmapexec                ✅ logs         ✅ screenshots  ✅ workspaces 
✅ : remmina                     ❌ configs    
✅ : semgrep                     ✅ logs1        ✅ logs2      
✅ : dbgate                      ❌ connections  ✅ logs       
✅ : spiderfoot                  ✅ database     ✅ logs       
✅ : ffuf                        ✅ history    
✅ : sqlmap                      ✅ history      ✅ logs       
✅ : filezilla                   ✅ connexions   ❌ config       ❌ queue      
✅ : theharvester                ✅ stash      
✅ : weevely                     ✅ history      ✅ sessions     ✅ logs       
✅ : whatwaf                     ✅ database   
✅ : hashcat                     ✅ sessions     ✅ potfile      ❌ dict_cache 
✅ : home-history-files          ✅ python       ✅ postgresql   ✅ ruby-irb     ✅ ruby-rdbg    ✅ redis-cli    ❌ bash         ❌ zsh          ❌ zsh-alt
```

## Library

The main class that **does the job** is [Aspisec::Clean](https://noraj.github.io/aspisec/ruby/Aspisec/Clean).

Of course, [Aspisec::Config](https://noraj.github.io/aspisec/ruby/Aspisec/Config) manages the configuration and [Aspisec::Logger](https://noraj.github.io/aspisec/ruby/Aspisec/Logger) the logger (level of additional information displayed).

[Aspisec::Module](https://noraj.github.io/aspisec/ruby/Aspisec/Module) is a generic module class with core methods and properties. [Aspisec::Module::Location](https://noraj.github.io/aspisec/ruby/Aspisec/Module/Location) is a generic location subclass. A _location_ is either a file or directory handled by modules.

Then [Aspisec::Modules](https://noraj.github.io/aspisec/ruby/Aspisec/Modules) is just a Ruby module (namespace) to store all Aspisec modules. Each Aspisec module matches a tool. E.g. for Netexec, the module is [Aspisec::Modules::Netexec](https://noraj.github.io/aspisec/ruby/Aspisec/Modules/Netexec).
