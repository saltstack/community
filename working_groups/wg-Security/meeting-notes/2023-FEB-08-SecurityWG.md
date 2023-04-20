# 2023-FEB-08 Security Working Group MOnthly Meeting

## Agenda

* CVE release process
* LTS/STS release plan
* Github Actions CI/CD work

## Present

* @barneysowood
* @hunter

## Notes

### CVE Release process

* No further updates since last meeting

### LTS/STS release plan

* Discussed LTS/STS release plan
* Agreed it looks good from a CVE release point of view
* @hunter suggested ensuring clear communication of when releases leave active support and CVE/critical support will be important

### Github Actions CI/CD work

* Discussed Github Actions CI/CD work as demoed on Community call, agreed that it is very positive step towards ensuring that salt is always in a releasable state and should help with CVE releases.

### Surfacing dependency information

* Continued discussion on surfacing dependency information
* Discussed dependabot not surfacing issues in Python or C library deps

## Actions

* @barneysowood to follow up with Megan on
  * outstanding CVE Release process questions
  * documentation of process for handling vulnerabilities in onedir dependencies
* @barneysowood to ask about communication plan for release status changes
* @hunter to look at dependabot support for non-python package deps
