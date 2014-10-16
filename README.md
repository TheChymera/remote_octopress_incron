#remote_octopress_incron

This is a collection of very minimal bash scripts which integrate a few simple commands (`cd`, `mv`, etc.) with basic octopress tasks (e.g. `rake gen_deploy`).
These scripts are used to call multiple commands from [incron](http://inotify.aiken.cz/?section=incron&page=doc&lang=en) rules, which are subject to incrontab restrictions (e.g. cannot contain `&&` or `;` operators).
More information on using incron and Octopress for remote blugging is available in the [Remote Octopress Blogging article]() from [Chymeric Tutorials](chymeric.eu).

## Installation
This package has no dependencies, and is best installed directly by pulling from GitHub:

```
git clone https://github.com/TheChymera/remote_octopress_incron.git /your/repo/path/for/remote_octopress_incron/
```

## Usage
As seen [here]() under the "" section, call the script of your choice from the incrontab rules file:

```
/your/path/for/octopress/source/_posts IN_MODIFY,IN_CREATE,IN_CLOSE_WRITE /your/repo/path/for/remote_octopress_incron/update.sh $@
```

---
Released under the GPLv3 license.
Project led by Horea Christian (address all correspondence to: h.chr@mail.ru)
