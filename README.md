# DC/OS for Cumulus in the Cloud

This repository is used to configure a reference topology with Mesos/Marathon in
a close approximation of using Mesosphere DC/OS.  Note that this is NOT DC/OS
mainly because it required CentOS, and most of our collateral/tools is Ubuntu
focused.

I'm leaning on

https://www.digitalocean.com/community/tutorials/how-to-configure-a-production-ready-mesosphere-cluster-on-ubuntu-14-04

for Mesosphere/Mesos/Marathon installation.

This environment uses FRRouting for host L3 peering with the data plane network
and installs the NetQ host agents for host visibility, thus embodying some of
the HostPack elements.  More to come as the technology becomes mature and the
layout evolves.

## Network Architecture

There are two networks in this system, one is an out-of-band network that is
used stictly for provisioning and low level operations.  There is also a high
speed, fully redundant data plane network that is L3 throughout, including to
the host.  The IP fabric is built using BGP unnumbered; each node is dual stack,
addressable with IPv4 and IPv6.

## Mesos Configuration

We're deploying Mesos and Marathon on four functional server nodes.  We'll use a single master and three agents to run workloads.  The Mesos environment hosts a simple scaled web application that is packaged out of Docker containers.

## UIs
Besides console/ssh access into the oob-mgmt-server, the environment exports four web based UIs: NetQ Telemetry Server, Mesos, Marathon, and the simple web app.


