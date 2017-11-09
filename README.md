# OpenStack for Cumulus in the Cloud

This repository is used to configure a reference topology with Openstack Mitaka for Cumulus-in-the-Cloud deployment.

I'm leaned heavily on some playbooks built from the instructions in https://docs.openstack.org/mitaka/.

## Network Architecture

There are two physical networks in this system, one is an out-of-band network used stictly for provisioning and low level operations.  Theother is a high speed, fully redundant data plane IP fabric built using BGP unnumbered; each node is dual stack, addressable with IPv4 and IPv6.

This environment uses FRRouting from HostPack for host L3 peering with the data plane network and the NetQ host agents for host visibility. 

## Openstack Environment

Openstack Mitaka is deployed on four functional Ubuntu 16.04 nodes.  The controller and services master is server01, and server02-server04 are nova compute nodes.  The environment comes up with a demo "application" consisting of two cirros VMs connected on a tenant network which is in turn connected to the provider network with a router. One of the VMs has a public IP address.  The virtual networks are constructed neutron using VXLAN overlays.

## UIs
Besides console/ssh access into the oob-mgmt-server, the environment exports four web based UIs: NetQ Telemetry Server and OpenStack Horizon.


