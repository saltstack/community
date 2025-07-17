# Security Working Group 2025-06-11

* Issues on board
  * Added issues to [board](https://github.com/orgs/saltstack/projects/58)
  * Process? Keep as draft to keep issues clear?
  * Alternative place for issues? Community repo?

* Resolving outstanding issues with non-root salt-master
  * [Question in discord](https://discord.com/channels/1200072194781368340/1208165315570307103/1374289018631487560)
  * [Issue #66228](https://github.com/saltstack/salt/issues/66228)
  * [Issue #6425](https://github.com/saltstack/salt/issues/64275)
  * More comprehensive approach based on [SEP19](https://github.com/saltstack/salt-enhancement-proposals/blob/master/accepted/0019-master-non-root.md)
  * Would include breaking changes and require migration support
  * Should resolve ongoing perms issues, issues with publisher ACL etc
  * Would it be possible to target for 3008 or is that too soon?
  * Discussion needed with community

* Expected behaviour of runners on non-root salt-master
  * [Issue 67716](https://github.com/saltstack/salt/issues/67716#issuecomment-2884700074)
  * What's the expected behaviour for runner called from colocated minion?

* Anything else?
