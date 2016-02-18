# Tiercel

![My Raspberry Pi server.](https://farm2.staticflickr.com/1595/24993757402_461ebbc8b0_n.jpg)

I have a little Raspberry Pi that I use as a personal server. I store my music, photos and movies there. It runs as a torrent client to share files with friends.

My server crashed recently. The power went out, and the little SD card that hosts the main filesystem ended up getting corrupted. I decided to use this as an opportunity to automate the setup process. Hopefully this will be useful to someone else who wants to quickly set up a tiny Raspberry Pi based server.

## How to Use This Thing

* Make sure you have [Ansible](https://www.ansible.com/) installed. I use OSX and I'm a fan of using Homebrew to manage packages. To get Ansible, run the following:

  ```shell
  brew install ansible
  ```

* Clone this repo! Use git to download this onto your machine.

  ```shell
  git clone git@github.com:waltz/tiercel.git
  ```

* Tell Ansible which computer we should configure. Copy the `hosts.example` file to `hosts` in this project
directory. Replace the default text with an IP address or hostname of the machine you'd like to configure.

  ```shell
  cp hosts.example hosts
  ```

* Set some settings. What should your computer be called? Passwords for your BitTorrent client? They're all in the variables configuration file. Copy over the example file, and then replace the defaults with values that work for your situation.

  ```shell
  cp vars/defaults.yml.sample vars/defaults.yml
  ```

* Now that we have everything configured, it's time to put it all together. Now we tell Ansible to run our instructions on the computers that we have told it about.

  ```shell
  ansible-playbook -i hosts site.yml
  ```

* There you go! After running that command you will see a list of things that Ansible did on your new server. It's all ready for prime time!
