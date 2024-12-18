# kadence *p2p application framework*

Kadence is a complete implementation of the 
[Kademlia](http://www.scs.stanford.edu/%7Edm/home/papers/kpos.pdf) distributed 
hash table that aims to effectively mitigate *all vulnerabilities* described in 
the [S/Kademlia](https://gnunet.org/sites/default/files/SKademlia2007.pdf) 
paper and then some! Kadence provides developers of distributed systems a 
complete framework for inventing new protocols on a rock solid base as well as 
providing a complete reference implementation of a Kadence network.

Ready to get started?

```
npm install @tacticalchihuahua/kadence
```

If you're new to Kadence, check out our tutorial for {@tutorial quickstart}!

## features

### Publish & Subscribe

Kadence implements a completely decentralized publish/subscribe protocol based 
on [Quasar](http://research.microsoft.com/en-us/um/people/saikat/pub/iptps08-quasar.pdf), 
allowing you to build anything from peer-to-peer social networks to real time 
sensor networks for the internet of things.

### DDoS & Spam Protection

Kadence enforces a [proof of work system](https://en.wikipedia.org/wiki/Proof-of-work_system) 
called [Hashcash](https://en.wikipedia.org/wiki/Hash_cash) for relaying 
messages to prevent abuse and make large scale denial of service and spam 
attacks cost prohibitive.

### Churn Impact Reduction

Kadence proactively evicts offline or misbehaving peers from its routing table 
and uses an exponential cooldown time for allowing them back in to prevent 
unreliable contacts from propagating through the network.

### Bandwidth Metering

Kadence monitors bandwidth and enables end users to configure their maximum 
bandwidth usage within a timeframe to suit their individual needs or prevent 
overages with internet services providers that enforce 
[bandwidth caps](https://en.wikipedia.org/wiki/Bandwidth_cap).

### End-to-End Encryption

Kadence can automatically generate SSL certificates and supports full 
end-to-end encryption via TLS using it's built in HTTPS transport adapter to 
prevent eavesdropping and [man in the middle attacks](https://en.wikipedia.org/wiki/Man-in-the-middle_attack).

### Cryptographic Identities

Kadence extends Kademlia's node identity selection with the same cryptography 
bitcoin uses for securing funds. Node identities are derived from the hash of 
the public portion of an [ECDSA](https://en.wikipedia.org/wiki/Elliptic_Curve_Digital_Signature_Algorithm) 
key pair and each message is signed to ensure it hasn't been tampered with in 
transit.

### Sybil & Eclipse Mitigation

Kadence employs a [proof of work system](https://en.wikipedia.org/wiki/Proof-of-work_system) 
using [Equihash](https://en.wikipedia.org/wiki/Equihash) for generating valid
node identities and subsequent acceptance into the overlay network. This 
forces nodes into sufficiently random sectors of the key space and makes 
[Sybil](https://en.wikipedia.org/wiki/Sybil_attack) and 
[Eclipse](http://www.eecs.harvard.edu/~mema/courses/cs264/papers/eclipse-infocom06.pdf) 
attacks computationally very difficult and ultimately ineffective.

### Automatic NAT Traversal

Kadence supports multiple strategies for punching through 
[network address translation](https://en.wikipedia.org/wiki/Network_address_translation). 
This enables peers behind even the strictest of firewalls to become addressable 
and join the network. Fallback to secure reverse tunnels is supported through 
the use of [Diglet](https://gitlab.com/em/diglet) servers.

### Multiple Network Transports

Kadence supports the use of multiple transport adapters and is agnostic to the 
underlying network protocol. Support for UDP and HTTP/HTTPS ship by default. 
Plugin your own custom transport layer using using a simple interface.

### Persistent Routing Tables

Kadence remembers peers between restarts so after you've joined the network once 
subsequent joins are fast and automatically select the best initial peers for 
bootstrapping.

### Sender & Destination Anonymity

Kadence ships with full support for 
[Tor Hidden Services](https://en.wikipedia.org/wiki/Tor_hidden_service) out of 
the box with no additional software installation or configuration required. 
This enables fully anonymized structured networks and leverages the latest 
version 3 hidden services protocol.

### Configurable Trust Policies

Kadence provides a flexible trust policy plugin allowing for fine-tuned, 
per-identity, per-method trust policies. Blacklist misbehaving nodes on an 
open network or whitelist identities on an explicit trust-based network.

### Simple Plugin Interface

Kadence exposes a simple interface for extending the protocol with your own 
application logic. Users of [Express](https://expressjs.com/) will find it 
comfortable and familiar. If you are new to building distributed systems, you 
will find it easy to get started.

## research

Kadence is used in academic research on distributed systems. Here are some 
notable papers!

* [Secure and Trustable Distributed Aggregation based on Kademlia](https://arxiv.org/pdf/1709.03265.pdf)
* [Distributed Random Process for a large-scale Peer-to-Peer Lottery](https://hal.inria.fr/hal-01583824/document)
* [DHT-based collaborative Web Translation](https://etd.ohiolink.edu/!etd.send_file?accession=ucin1479821556144121&disposition=inline)
* [Kademlia with Consistency Checks as a Foundation of Borderless Collaboration in Open Science Services](https://www.sciencedirect.com/science/article/pii/S1877050916327041)

## license

> Kadence - p2p application framework  
> Copyright (C) 2019 Lily Anne Hall.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.


