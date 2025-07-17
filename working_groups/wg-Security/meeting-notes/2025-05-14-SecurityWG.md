# Security Working Group 2025-05-14

## Agenda

* Understanding of running salt-master as non-root user
  * [Discord discussion](https://discord.com/channels/1200072194781368340/1219742614257930381/1364636254490333204) about setup of salt-master as non-root user
  * Updating docs - [Running the salt master/minion as an uprivileged user](https://docs.saltproject.io/en/master/ref/configuration/nonroot.html)
  * Hardening docs

* Python 3.14 t-strings
  * [PEP 750](https://peps.python.org/pep-0750/)
  * [PEP 787 Safer subprocess usage using t-strings](https://peps.python.org/pep-0787/)
  * When would 3.14 be minimum version for Salt?

* Packaging/non-root user/tests
  * Tests from [PR #66218](https://github.com/saltstack/salt/pull/66218) left disabled
  * Fixing in [PR #67968](https://github.com/saltstack/salt/pull/67968)

* Getting other people involved in WG
  * Set out aims
  * Tracking progess

* Ongoing issues
  * Github private vuln reporting
  * relenv – dependencies tracking
  * Salt extensions GH Actions
  * Github Actions security
  * ACL support for netapi SSE/websocket endpoints

## Present

* Barney Sowood (@barneysowood)

* Derek Ardolf (@ScriptAutomate)

* Jeff Neel (@jeff350)

## Notes

### Understanding of running salt-master as non-root

* End users potentially making changes to permissions that negate some of the security benefits of running salt-master as non-root user

* Need clearer guidance on that - documentation needs updating

* Still a number of outstanding issues around how perms setup/managed by package installs

### Python 3.14 t-strings

* Python 3.14 is introducing t-strings. Large part of the reason for this is to improve handling of strings combined with untrusted data. 

* PEP787 is looking to leverage t-strings to improve safety of sub-process module

* Once available, it would be worth looking at subprocess usage throughout salt and looking to leverage t-strings to standardise sanitisation methods.

* Discussed when we could rely on having 3.14. Final release for 3.14 will be October. 3008 will be targetting 3.13, so likely to be 3009/3010.

* Supported versions of python for Salt now based on what onedir is using

### Getting others involved

* Call to action on Community call and in follow up notes

* Get issues up on [project board](https://github.com/orgs/saltstack/projects/58) for visibility

### Ongoing issues

* No further progress
