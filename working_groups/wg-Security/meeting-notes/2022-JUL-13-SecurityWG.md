# 2022-JUL-13 Security Working Group Monthly Meeting

## Agenda

* CVE announcement and release process
    * Pre-announcement
    * Release
    * Issues raised by community
    * Questions to Core Team
        * Current process docs
        * Process to change (SEP?)
    * Feedback on this CVE
    * Changes to process
    * Template for announcements
* Any other issues

## Present

* @barneysowood
* @nicholasmhughes
* @jneel
* @mstrong ?

## Notes

* Appear to be two main conflicting positions in the community, those that think there shouldn't be a pre-annoucement and those that think there should be.
* There's also some feeling that if there is a pre announcement it should have more information to allow people to understand if they are likely to be affected.
* Both positions are understandable but depend on the context of the user or their organisation
* Not having a clear and consistent process exacerbates the situation
* Delays in releasing or last minute changes further erode confidence in the process

* Including information about what components are affected without revealing details of issue can be tricky
* It should be possible in many cases to at least indicate the major component or subsystem - this would go someway to helping people to understand if they are likely to affected.

* Setting timelines and meeting those is important for confidence in the process and to allow users to have people in place to deploy updates
* Meeting those for all deployment methods is also important - or it should be clear which deployments methods can expect that

* Releasing information about the full timeline after the patch release would be good
* More information about impact (on a sliding scale?) could be released

* Current documentation on security/release process is out of date or incorrect

## Actions

* Talk to core team about timelines for past CVEs - @barneysowood
* Ask core team for documentation on current process
* Update public docs to reflect current process
* Draft or update standard pre-announcement
