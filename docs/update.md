# Update pygmy-apple

As `pygmy-apple` is released regularly you should also take care of updating pygmy-apple.

As ruby gems does not remove old versions of gems when updating, you should remove old version after a new version has been installed.

First update:

    gem update pygmy-apple

    Updating installed gems
    Updating pygmy-apple
    Successfully installed pygmy-apple-0.9.4
    Parsing documentation for pygmy-apple-0.9.4
    Installing ri documentation for pygmy-apple-0.9.4
    Installing darkfish documentation for pygmy-apple-0.9.4
    Done installing documentation for pygmy-apple after 0 seconds
    Parsing documentation for pygmy-apple-0.9.4
    Done installing documentation for pygmy-apple after 0 seconds
    Gems updated: pygmy-apple

A new version!

Now uninstall the old one:

    gem uninstall pygmy-apple

    Select gem to uninstall:
     1. pygmy-apple-0.9.3
     2. pygmy-apple-0.9.4
     3. All versions
    > 1
    Successfully uninstalled pygmy-apple-0.9.3

check the correct version:

    pygmy-apple -v

    Pygmy - Version: 0.9.4


## I see errors after the upgrade

If you see following error after the pygmy-apple upgrade you might have installed 2 pygmy-apple versions next to eachother
```
> pygmy-apple version
/Users/user1/.rvm/gems/ruby-2.2.1/gems/pygmy-apple-0.9.11/lib/pygmy-apple/version.rb:2: warning: previous definition of VERSION was here
/Users/user1/.rvm/gems/ruby-2.2.1/gems/pygmy-apple-0.9.11/lib/pygmy-apple/version.rb:3: warning: previous definition of DATE was here
/Users/user1/.rvm/gems/ruby-2.2.1/gems/pygmy-apple-0.9.10/lib/pygmy-apple/version.rb:2: warning: already initialized constant Pygmy::VERSION
/Users/user1/.rvm/gems/ruby-2.2.1/gems/pygmy-apple-0.9.10/lib/pygmy-apple/version.rb:3: warning: already initialized constant Pygmy::DATE
```

Run `gem uninstall pygmy-apple` and remove the old versions.

## Update Docker Containers with `pygmy-apple`

`pygmy-apple` can update shared docker containers for you:

    pygmy-apple update

After it updated all containers, it will recreate them as well.

