# 2025-04-09 Security Working Group monthly meeting

## Agenda

* Security disclosure policy
  * Github private vuln reporting

* Dependabot/dependency issues
  * relenv – how are dependencies and their vulns being tracked

* Salt extensions
  * Review copier template, Github Actions and discussion with Salt extensions WG

* Github Actions security
  * Review of Actions in main repo
  * Scanning - [Zizmor](https://github.com/woodruffw/zizmor)
  * Supply chain security with GHA

* Github Issues spam
  * Repo settings
  * Tooling

* ACL support for netapi SSE/websocket endpoints

## Present

* Barney Sowood (@barneysowood)
* Shane Lee (@twangboy)
* Derek Ardolf (@ScriptAutomate)
* Jim

## Notes

### Github private vulnerability reporting

* Raised as possible way to simplify management of vulnerability reporting
* Been investigated before - at that point issues with functionality (esp around private forks)
* @ScriptAutomate to find previous issues [done]
* @barneysowood to investigate and see if it would still be beneficial even without using private forks

### relenv dependencies

* Discussion of how dependencies are tracked for relenv
* @ScriptAutomate would like to see SBOM for relenv and salt builds
* @barneysowood to discuss further with @dwoz

### salt-extenions Github Actions

* Some concerns over permission usage in copier template
* @barneysowood to complete further testing and discuss with maintainers

### Github Actions security for Salt repo

* Discusion of security in GHA for Salt repo
* Scanning with [Zizmor](https://github.com/woodruffw/zizmor) hasn't revealed any serious issues
* Some minor issues to look at
* Longer term, looking at simplification and reduction in reliance on 3rd party Actions
* @barneysowood to open PR with minor fixes

### Github Issues spam

* Problem recently on [saltstack/pepper](https://github.com/saltstack/pepper) repo
* Some modifications to settings have helped but mainly relying on Github to catch and cleanup
* No good solutions currently

### ACL support for netapi SSE/websocket endpoints

* No support for ACLs on netapi for SSE/websockets currently
* @barneysowood working on possible feature - open PR and discussion when ready

