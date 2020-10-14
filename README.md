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

$ kubectl -n=kube-system get po -lapp=network-toolbox
NAME                    READY   STATUS    RESTARTS   AGE
network-toolbox-24hrt   1/1     Running   0          3s
network-toolbox-frl4j   1/1     Running   0          3s
network-toolbox-hqm8m   1/1     Running   0          3s

$ kubectl -n=kube-system exec -it network-toolbox-24hrt -- bash
bash-5.0# # do your troubleshooting here

$ kubectl delete -f https://raw.githubusercontent.com/TheoBrigitte/network-toolbox/master/kubernetes/deploy.yaml
daemonset.apps "network-toolbox" deleted
podsecuritypolicy.policy "network-toolbox" deleted
clusterrole.rbac.authorization.k8s.io "network-toolbox" deleted
clusterrolebinding.rbac.authorization.k8s.io "network-toolbox" deleted
serviceaccount "network-toolbox" deleted
```

Via Docker

```
$ docker run -d --name network-toolbox theo01/network-toolbox
$ docker exec -it network-toolbox bash
bash-5.0#
```

## Credits

This was inpired by https://github.com/Praqma/Network-MultiTool
