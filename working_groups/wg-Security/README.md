- Salt Working Group Name: Security
- Description: 
- Current Captain: (name, gh handle and link or other means of contact)
- Current Term: (leave this blank)

# Purpose
[purpose]: #purpose

* Ensure that when user installs Salt, they get an installation that minimises risks but doesn't impact on their ability to use the full power of Salt

* Provide documentation that helps users configure Salt to meet their needs with exposing themselves to security issues

* Support the community to help them develop, deploy and operate Salt securely


# Objectives/Goals
[objectives/goals]: #objectives/goals

* Update Salt packages to configure all components with least possible privilege

* Update Salt packages to configure file system permissions, groups and Salt so that users can use Salt without being root

* Develop AppArmour or SELinux profiles to include in Salt packages where distributions support those

* Review and improve existing documentation for securing Salt

* Produce and mantain guides for securing and hardening Salt components (eg API, ZeroMQ)

* Review of remotely accessible components for design issues and relevance (??)

* Review of modules for security issues (??)

# Risks
[risks]: #risks

* Making default package installations function differently may cause issues with existing installations. This can be managed/mitigated

* Making default package installations more secure may increase friction for new users. This can be managed/mitigated with some thought.

* There are some known issues (especially around PAM authentication) and running masters as non-root that will cause some issues, but should be solvable.

* There may be resistance from the community against siginificant changes to how default installations of Salt work.


# Milestones
[milestones]: #milestones

* Updated packages
  * Salt master running as non root user with least possible privilege
  * Package managed groups to allow users to run salt tools as non root user
  * Filesystems permissions set to allow users in managed groups to use salt
  * Working publisher ACL configuration tied to groups

* AppArmour and SELinux profiles included in packages

* Documentation updated to reflect new package install defaults

* Securing Salt documentation updated

* Series of pragmatic hardening guides produced for various Salt components:
  * Salt API
  * ??

# Participants/R&R
[participants/r&r]: #participants/r&r

(list names and role/responsibility)

# Returns/Measurement
[returns/measurement]: #returns/measurement

* Default package installs are reasonably secure but don't cause users to turn off or work round supplied configuration

* Users are using and recommending the documentation we produce

* Future CVEs are mitigated for users using the default package config

* Users with more complex requirements are able to improve the security of their Salt infrastructure by using the using the hardening guides, even where they have to expose some of their infrastructure to untrusted networks

# Project Board/Meeting Notes
[project board/meeting notes]: #project board/meeting notes

(where do we keep track of the work?)
