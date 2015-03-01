[![Build status](https://ci.appveyor.com/api/projects/status/x9ergljy7cbs8ph3/branch/master?svg=true)](https://ci.appveyor.com/project/RamblingCookieMonster/appveyor-dsc-test)

This is a small POC. The idea is that we can test DSC configurations.

* Commit a change
* AppVeyor spins up a VM
* We trigger a DSC configuration of whichever config we want to test
* We use pester to verify the results

Caveats:

 * [No reboots](http://help.appveyor.com/discussions/kb/13-machine-restart-during-build).
 * You need to handle dependencies (e.g. download and extract the DSC Resource Kit).
 * This might not be a pristine VM. You get a new VM from AppVeyor, but AppVeyor makes their own changes.