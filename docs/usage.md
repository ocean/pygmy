
## Start
To start `pygmy-apple` run following command

    pygmy-apple up

`pygmy-apple` will now start all the required Docker containers and add the ssh key.

If you are on Ubuntu you might need to run pygmy-apple with `pygmy-apple up --no-resolver`

**All done?** Head over to [Drupal Docker Containers](./drupal_site_containers.md) to learn how to work with docker containers.

# Command line usage

```
pygmy-apple help

Commands:
  pygmy-apple addkey [~/.ssh/id_rsa]  # Add additional ssh-key
  pygmy-apple down                    # Stop and destroy all pygmy-apple services
  pygmy-apple help [COMMAND]          # Describe available commands or one specific command
  pygmy-apple restart                 # Stop and restart all pygmy-apple services
  pygmy-apple status                  # Report status of the pygmy-apple services
  pygmy-apple stop                    # Stop all pygmy-apple services
  pygmy-apple up                      # Bring up pygmy-apple services (dnsmasq, haproxy, mailhog, resolv, ssh-agent)
  pygmy-apple update                  # Pulls Docker Images and recreates the Containers
  pygmy-apple version                 # Check current installed version of pygmy-apple
```



## Adding ssh keys

Call the `addkey` command with the **absolute** path to the key you would like to add. In case this they is passphrase protected, it will ask for your passphrase.

    pygmy-apple addkey /Users/amazeeio/.ssh/my_other_key

    Enter passphrase for /Users/amazeeio/.ssh/my_other_key:
    Identity added: /Users/amazeeio/.ssh/my_other_key (/Users/amazeeio/.ssh/my_other_key)

## Checking the status

Run `pygmy-apple status` and `pygmy-apple` will tell you how it feels right now and which ssh-keys it currently has in it's stomach:

    pygmy-apple status

    [*] Dnsmasq: Running as docker container amazeeio-dnsmasq
    [*] Haproxy: Running as docker container amazeeio-haproxy
    [*] Resolv is properly configured
    [*] ssh-agent: Running as docker container amazeeio-ssh-agent, loaded keys:
    4096 SHA256:QWzGNs1r2dfdfX2PHdPi5sdMxdsuddUbPSi7HsrRAwG43sHI /Users/amazeeio/.ssh/my_other_key (RSA)


## `pygmy-apple down` vs `pygmy-apple stop`

`pygmy-apple` behaves like Docker, it's a whale in the end!
During regular development `pygmy-apple stop` is perfectly fine, it will keep the Docker containers still alive, just in stopped state.
If you like to cleanup though, use `pygmy-apple down` to really remove the Docker containers.

## Access HAProxy statistic page and logs  

HAProxy service has statistics web page already enabled. To access the page, just point the browser to [http://docker.amazee.io/stats](http://docker.amazee.io/stats).  

To watch the haproxy container logs, use the `docker logs amazeeio-haproxy` command with standard `docker logs` options like `-f` to follow.
