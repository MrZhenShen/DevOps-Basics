# DevOpsTasks

## Task 1
1) Execute `vagrant up` in `task1/` folder
2) Open `localhost:8888` in browser

## Task 2
1) Execute `vagrant up` in `task2/` folder
2) Execute `vagrant ssh centos` and `vagrant ssh ubuntu` in two different terminals

## Task 3
1) Execute `vagrant up` in `task3/` folder
2) Execute `vagrant ssh ubuntu`
3) Execute `sudo -i`
4) Execute `tail -f /var/log/sysinfo.log`

## Task 4
1) Execute `vagrant up` in `task4/` folder
2) Execute `vagrant ssh ubuntu`

*Useful commands*

* `su [adminuser | poweruser]`
* `ls -l softlink`
* `id`
* `whoami`
* `cd /home/adminuser` - by poweruser

## Task 5
1) Execute `vagrant up` in `task5/` folder
2) Execute `vagrant ssh`
3) Execute `touch folder1/file` to create file in folder1
4) Execute `ls [folder1 | folder2]`

## Task 6
1) Execute `vagrant up` in `task6/` folder
2) Execute `vagrant ssh`

* `lsblk`
* `pvscan` - list of physical disks with it's Volume Group
* `lvscan`
* `mount` - mounted toms
* `df -h`

## Task 7
1) Execute `vagrant up` in `task7/` folder
2) Execute `vagrant ssh`

* `ssh -A -p 3722 root@yoko.ukrtux.com` - enter to the vm via port
* `ssh -A -D8899 -p 3722 root@yoko.ukrtux.com`

* `ssh -R 13722:localhost:8888 -p 3722 root@yoko.ukrtux.com`
* `bmon`
* (Open in brower)[50.31.252.226:13722]

[Get IP](https://www.getip.org/)


* `host myip.opendns.com resolver1.opendns.com | grep "myip.opendns.com has" | awk '{print $4}'`



python3 -m http.server 
* `ssh -R 13822:localhost:8000 -p 3822 root@yoko.ukrtux.com` - local port forwarding

* IP:13822 #`ssh -p 13822 zhenia@localhost` - remote port forwarding

