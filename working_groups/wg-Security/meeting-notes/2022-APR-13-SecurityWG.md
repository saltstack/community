# 2022-APR-13 Security Workin Group Monthly Meeting

## Project Boards and issues

- [Project board](https://github.com/orgs/saltstack/projects/35) is back and Barney now has access again
- Tasks can be added to that board and existing tasks for work to look at running Salt aas non-root (SEP19) have been added
- Looking for people to pick up tasks - @viq said they may be able to lookk at some of those

## Alternative transports and PKI

- Discussion around alternative transports and PKI in relation to:

  - [SEP32 - keyrotation](https://github.com/saltstack/salt-enhancement-proposals/pull/48)
  - [Recent CVEs and Cloudflare's Blog](https://blog.cloudflare.com/future-proofing-saltstack/)
  - [Demo of ActiveMQ based Transport at Saltconf2021](https://youtu.be/CcZSdzTutw0?list=PL9svBjLDUl_8j1hNjel7kZL3Ql4LMPOAG&t=2393)

Agreed we'd follow up with Core team regarding mTLS transport that Cloudflare mentioned that "We have shared our preliminary results with Salt, and we are working together to add an mTLS-based transport upstream."

Discussed whether using traditional PKI would be a benefit in the case of [SEP32](https://github.com/saltstack/salt-enhancement-proposals/pull/48) but there was no consensus

## Actions

- @viq to look at Salt as non-root tasks
- Barney to follow up on mTLS

