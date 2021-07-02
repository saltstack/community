# 2021-JUN-14 Security Working Group Monthly Meeting

## Agenda: Group Expectations and [SEP 19](https://github.com/saltstack/salt-enhancement-proposals/pull/35)

## Group Expectations

- Working on some issues
- Reduce risks
- Please read the Group's [Project Charter](https://github.com/saltstack/community/tree/master/working_groups/wg-Security)
- Work around the Salt Master and associated networks ie Salt API, reduce privileges
- Harden the initial installation of Salt "standard setup"
- How to also install differently from a standard setup and give those Details
- Salt minion easiest will come later

## Salt Minion: Not run from root (SEP 19)

SEP 19 broken into 2 parts: 1) namely running Salt as non-root, and 2) changing the location of Salt files, (configuration, daemons, etc.)
  - Minion running not as root, but as a sudo user (https://docs.saltproject.io/en/latest/ref/configuration/minion.html#sudo-user)
- allow users to easily use the CLI clients (w/out requiring the use of sudo or similar) we could
- list the issues - deploy Salt via pip non-run; would like the examples and docs to be updated and better written, please write up some issues
- PAM and external auth - problematic, add the user that the salt daemons run as the shadow group, packages could default to not doing that have it selected at install - not ideal daemon user can read /etc/shadow - wouldn't like to run anything as root due to shell injection.
  - POC for this?
- Grains: Salt Master loads some grains, if not running as root this could be a bigger problem - SUSE knows this has come up in the past; salt-user as non-root - salt-master and salt grains / only one that did not gracefully fail, but may be fixed;
- Standard minion should be set as root user, initially
- salt-ssh low hanging fruit here as well - move it up a level
  - handle perms with sensu internally. it's somewhat more...manual, but we only allow sensu access to paths/binaries/cmd's specified in a sudoers.d file we create for the sensu user
- how that is run in Windows and Mac will need those experts to weigh in, as well, as noted from Sage to get them into the conversation
- config files are definitely related - that is likely why comments started to go that direction in the SEP - deal with it on a case by case basis, instead of rebuilding or re-architecting the config files

## Other WG - Packagers is within the Release WG

- salt-pkg is the Tiamat packaging of Salt
  - exclude files
  - FPM built and include whatever else you may need/want
  - libC version the package was built on
- salt-pkg3 is the packaging of rpms of Salt as is today for repo.saltproject.io
- downstream packagers are part of the Release WG

## Same signing key forever

- New keys with new versions example Ubuntu 21.04 has a new key, but keeps it for the life of the version
- start a draft on the project

## Actions Assigned today

- Sage to update project board with expectations (more details) as such as how to work async, discussions on SEPs
- Sage to ask David Murphy to draft another or work with Barney on another SEP - changing the location of Salt files and will need Windows and MacOS Working Groups opinions
- Bryce and Sage to write up a draft in issues on this WG project board for rotation of GPG signing keys prior to writing a full SEP
