# check-run-Windscribe-linux
check run Windscribe linux
- create bash script add code to 
```bash
nano check_vpn.sh```
- add to cron
```bash
crontab -e```
- check every 5 min:
```bash
*/1 * * * * /root/check_vpn.sh```
