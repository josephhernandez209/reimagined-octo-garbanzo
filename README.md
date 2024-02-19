# Web kvm
a kvm based web portal for provisioning

## create local dev vm 
`export VM=kvm; bash create-vm.sh`

## shell to local dev vm
`export VM=kvm; multipass shell $VM`

## delete local dev vm 
`export VM=kvm; bash delete-vm.sh`

## transfer deploy-api.sh to VM
`export VM=kvm; multipass transfer deploy-api.sh $VM:`