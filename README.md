# network toolbox

This is a network troubleshooting toolbox. It is basicaly a container image
base on Alpine Linux which contains lot of tools to help troubleshoot network issues.

## Tools included:

* apk (package manager)
* wget, curl, iperf3
* conntrack
* dig, nslookup
* ip, ifconfig, ethtool, mii-tool, route
* ping, nmap, arp, arping
* awk, sed, grep, cut, diff, wc, find, vim
* ps, netstat, ss
* gzip, cpio
* tcpdump
* telnet, ssh, ftp, rsync, scp
* traceroute, tracepath, mtr
* netcat (nc), socat
* nginx, ApacheBench (ab)
* jq
* git

## Usage

Via kubernetes API

```
$ kubectl apply -f https://raw.githubusercontent.com/TheoBrigitte/network-toolbox/master/kubernetes/deploy.yaml
daemonset.apps/network-toolbox created
podsecuritypolicy.policy/network-toolbox created
clusterrole.rbac.authorization.k8s.io/network-toolbox created
clusterrolebinding.rbac.authorization.k8s.io/network-toolbox created
serviceaccount/network-toolbox created
$ kubectl -n=kube-system exec -it network-toolbox-24hrt -- bash
bash-5.0#
```

Via Docker

```
$ docker run -d --name network-toolbox theo01/network-toolbox
$ docker exec -it network-toolbox bash
bash-5.0#
```

## Credits

This was inpired by https://github.com/Praqma/Network-MultiTool
