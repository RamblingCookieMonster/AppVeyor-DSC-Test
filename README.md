This is a small POC. The idea is that we can test DSC configurations.

* Commit a change
* AppVeyor spins up a VM
* We trigger a DSC configuration of whichever config we want to test
* We use pester to verify the results