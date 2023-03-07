# check-run-Windscribe-linux

check run Windscribe linux

- create bash script add code to 

```nano check_vpn.sh```

- add to cron

```crontab -e```

- check every 5 min:

```*/1 * * * * /root/check_vpn.sh```
