# 2022-SEP-14 Security Working Group Monthly Meeting

## Agenda

* Last meeting notes
* CVE releases
* Project board
* Any other issues

## Present

* @barneysowood
* @jneel

## Notes

### Discussion on CVE releases and onedir

* How is onedir going to affect releases?
* 3005 will be supported until 2024-02-24 so normal releases will have to be supported until then
* Will that have an impact on release process?
* For onedir releases, CVE issues in bundled dependencies will require a release
  * Has that process been worked out?
  * Notes in [PR 34 for SEP 26](https://github.com/saltstack/salt-enhancement-proposals/pull/34#issuecomment-687292534) - "That's correct, and a .x release would be made whenever needed to address a dependency security issue. We are screening our dependencies for security advisory issues and we would release updates when needed, or, information on how to proceed to upgrade a dependency."
  * Is there an automated process in place for scanning/alerting on issues in dependencies? (does this use dependabot?)
  * Salt will not get pre-warning of issues in dependencies, so will have to produce a new build once issue is public - how quickly will that happen?

## Actions

* @barneysowood to reach out core team to discuss release process. Possiblye invite to next month's call
