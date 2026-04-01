🐧 𝐁𝐚𝐬𝐢𝐜 𝐂𝐨𝐦𝐦𝐚𝐧𝐝𝐬 & 𝐅𝐢𝐥𝐞 𝐌𝐚𝐧𝐚𝐠𝐞𝐦𝐞𝐧𝐭 :  
  
1. What does ls -ltr do?  
2. Difference between cd, pwd  
3. How do cp, mv, rm, mkdir, rmdir work?  
4. How to find files larger than 10MB?  
5. How to find files modified in the last 24 hours?  
6. How to filter or read only a single line from a file?  
7. Difference between grep and egrep?  
  
⚙️𝐏𝐫𝐨𝐜𝐞𝐬𝐬 & 𝐒𝐲𝐬𝐭𝐞𝐦 𝐌𝐨𝐧𝐢𝐭𝐨𝐫𝐢𝐧𝐠 :  
  
8. Difference between ps aux and ps -ef?  
9. How do you identify the process consuming the most CPU?  
10. How do you identify the process consuming the most memory?  
11. How does top or htop help in monitoring?  
12. How do you check memory usage?  
13. How do you check disk usage?  
14. How do you check folder size?  
15. What does uptime show and how do you interpret load average?  
16. How do you find which process is using a specific port?  
17. What information does vmstat provide?  
18. How do you kill a process?  
19. How do you troubleshoot CrashLoopBackOff?  
  
🌐 𝐍𝐞𝐭𝐰𝐨𝐫𝐤𝐢𝐧𝐠 :  
  
20. How do you check which ports are open or listening?  
21. How do you check network connectivity from a Linux server?  
22. Difference between NACL and Security Groups?  
23. What will you do if a package is not found during installation?  
24. How do you change file permissions?  
25. How do you change file ownership?  
26. Difference between hard link and soft link?  
  
📝 𝐒𝐡𝐞𝐥𝐥 / 𝐒𝐜𝐫𝐢𝐩𝐭𝐢𝐧𝐠 :  
  
27. Write a shell script to monitor CPU utilization and send an alert if it exceeds 80%  
28. What is xargs and where is it used?  
29. How do you schedule a job to run every 5 minutes using cron?  
- Script to backup DB daily + use the current date in the file name
- Explain Linux booting process
  
🧯 𝐋𝐨𝐠𝐬 & 𝐓𝐫𝐨𝐮𝐛𝐥𝐞𝐬𝐡𝐨𝐨𝐭𝐢𝐧𝐠 :  
  
30. How do you check logs for a running process?  
31. How would you debug if a service or system is down?  
32. How do you check file existence, size, and permissions?
21 How do you check if a port is in use  
22 Port number 8080 — how do you search it
Explain the Linux file system hierarchy. What is / etc, /var, /home, /usr?  
Q2. what is the difference between an absolute and relative path?  
Q3. How do you install, remove, or upgrade packages?  
Q4. How do you schedule tasks using cron?  
Q5. What is the use of /etc/hosts and /etc/resolv.conf file?  
Q6. What is the purpose of shebang?  
Q7. What are sticky bits, SUID, and SGID?  
Q8. what is the difference between locate and find a command?  
Q9. What tools are used for network debugging?  
Q10.what is the port no. of ssh? can we change it ? if yes, how ?  
Q11. A server is swapping heavily How do you identify memory-hungry processes and stabilize the server?  
Q12. What is the difference between kill, killall, and pkill?  
Q13. what is the main difference between yum and rpm command, as both are used to install packages?  
Q14. Your server is not responding on SSH, but it pings. What do you check next?  
Q15. A system update caused your kernel to break. How do you boot using an older kernel?  
Q16. How you can increase the filesystem?  
Q17. A file system is mounted read-only unexpectedly. How do you fix it?  
Q18. Explain partitions and file systems. How you can create a filesystem and format a disk?  
Q19. what are the different types of raid in linux?  
Q20. df -h command is in hung state, what are the possible reason of it and how you will resolve it ?
5. Linux server disk management — commands used.
    
16. How to free space when Linux disk is 100% or 50% full?
    
17. Jenkins directory takes more space — how to clean it?
1. Tell me about yourself (DevOps Engineer)
    
2. x = 10 and export x = 10 difference
    
3. One shell I close and open another — how to add variables permanently
    
4. Meaning of nano ~/.bashrc
    
5. Hard link and soft link difference
    
6. How to identify whether it is a hard link or soft link
- What command is used to list all listening ports in Linux?
- How do you check which process is using the most CPU or memory?
- Command to generate an SSH key?
- Name some popular Linux distributions.
1.Why should you not introduce yourself with “Myself…” in an interview?  
2.In shell scripting, how do you print the current date and time?  
3.How do you view the contents of a ZIP file without extracting it?  
4.What does the Linux permission code 755 mean?  
5.Which command is used to change file directory permissions?  
6.Which command is used to create a new user in Linux?  
7.How do you check all active network ports on a Linux system?  
8.Linux is a CLI-based OS — what CLI level/ shell type does it use?  
9.Where should environment variables be stored in Linux?
- Explain common Linux commands.
- How to check a running process?
- How to list running processes?
- How to find a process ID and kill it (single command)?
- How to check disk usage?
- How to find free memory?
- How to archive/compress a directory?
## 🔹 Permissions & Users

18. What does `chmod 755` mean?
19. What exactly happens when you apply `chmod 755`?
20. What is `chown`?
21. How to list all SSH users in Linux?

---

## 🔹 Logs & Monitoring

22. Apache server logs → where to check?
23. What logs are present in `/var/log`?

---

## 🔹 Text Processing

24. Purpose of `grep` command?
25. Print all lines containing "linux" → which flag in grep?

👉 Expected answer: `grep linux file.txt` (no flag needed, or `-i` for ignore case)

---

## 🔹 Scheduling

26. Difference between `cron` and `at`?
27. Run a script every 5 minutes → how?

👉 `*/5 * * * * /path/script.sh`
- Difference between process and thread
- How do you check CPU, memory, and disk usage?
- How to check which process uses the most memory?
- Explain top, vmstat, free, and df commands.
- How do you check and kill a process?
- How do you find which service is using a particular port?
- Explain file permissions and how to change them (chmod, chown).
- How to check logs in Linux (e.g., /var/log/messages, journalctl)?
- Difference between soft link and hard link.
- How do you troubleshoot high CPU or low disk issues?
- How do you check network connectivity between two servers?
- Difference between scp, rsync, and sftp.
- How to use find, grep, awk, and sed with examples.
- How to check system uptime and last reboot time?
- How do you schedule tasks using cron and at?
Linux & Shell Scripting  
Why is it incorrect to introduce yourself with “Myself...” in an interview?  
How do you print the current date and time in a shell script?  
How do you view the contents of a ZIP file without extracting it?  
What does Linux permission 755 mean?  
Which command is used to change file or directory permissions?  
Which command is used to create a new Linux user?  
How do you check all active network ports on a Linux system?  
Linux is a CLI-based OS — what type of shell does it use?  
Where should environment variables be stored?

(full Linux sections including numbered + repeated Q sets preserved)

Q1. How do you check CPU & memory usage in Linux?  
🔹 Q2. What’s the difference between kill, pkill, and killall commands?  
🔹 Q3. What’s the difference between a process and a thread?  
🔹 Q4. How do you find which process is using a specific port?  
🔹 Q5. How do you check disk usage and identify large files?  
🔹 Q6. How do you schedule jobs in Linux?  
🔹 Q7. What is the difference between a hard link and a soft link?  
🔹 Q8. How do you monitor logs in real-time in Linux?  
🔹 Q9. What are some ways to secure a Linux server?  
🔹 Q10. How do you manage services in Linux (start/stop/status)?  
🔹 Q11. What’s the difference between /etc/passwd and /etc/shadow?  
🔹 Q12. How do you check which users are currently logged in?  
🔹 Q13. How do you find the top 10 memory-consuming processes?  
🔹 Q14. What is the difference between chmod, chown, and chgrp?  
🔹 Q15. How do you troubleshoot high load on a Linux server?  
🔹 Q16. How do you add a new user and set password policies in Linux?  
🔹 Q17. What’s the difference between SELinux and AppArmor?  
🔹 Q18. How do you check network connectivity and open ports in Linux?  
🔹 Q19. How do you create and extract .tar.gz files?  
🔹 Q20. After patching the server, it is showing a kernel panic error. What could be the possible causes of this issue, and how would you troubleshoot and resolve it?
Q8. How do you monitor logs in real-time in Linux?  
🔹 Q9. What are some ways to secure a Linux server?  
🔹 Q10. How do you manage services in Linux (start/stop/status)?  
🔹 Q11. What’s the difference between /etc/passwd and /etc/shadow?  
🔹 Q12. How do you check which users are currently logged in?  
🔹 Q13. How do you find the top 10 memory-consuming processes?  
🔹 Q14. What is the difference between chmod, chown, and chgrp?  
🔹 Q15. How do you troubleshoot high load on a Linux server?  
🔹 Q16. How do you add a new user and set password policies in Linux?  
🔹 Q17. What’s the difference between SELinux and AppArmor?  
🔹 Q18. How do you check network connectivity and open ports in Linux?  
🔹 Q19. How do you create and extract .tar.gz files?  
🔹 Q20. After patching the server, it is showing a kernel panic error. What could be the possible causes of this issue, and how would you troubleshoot and resolve it?

- /var partition is 90% full. What’s your immediate action?
- You’re locked out via SSH with no root access. How do you recover?
- Add 50GB to /opt using LVM without any downtime. What are the steps?
- How do you synchronize or set the correct system time on a Linux server?
- What is the use of `top` and `htop` commands in Linux? When would you use each?
- What is the difference between `head` and `tail` commands? Write the syntax for each.
- What is the purpose of `tail` and `head` in log monitoring? Provide basic syntax examples.
- A production server in your fleet is showing the wrong time. How would you synchronize the system clock with an NTP server?
- You are troubleshooting a large log file and need to view the top and bottom portions quickly. What is the use of `head` and `tail` commands, and how would you write the syntax for each?
- How do you check disk space on a server?
- How do you check which folders or directories are consuming the most space?
- If I want to create a file on a server that has space available but receive an error when creating a directory or file, what could be the reason?
- What is the command to create a tar file?
- How do you check the size of a zip file? What is the command to do so?
- Explain the file system hierarchy in Linux.
- When you create a user on a system, where is the user's password stored?Which files are updated when creating a user?
- What is a shell script, and how do you use it?
- Write a shell script that checks if a service is running, restarts it if not, and logs the event.
- What is the difference between Bash and Sh, and when should each be used?
- How do you find the OS version on a Linux system using the command line?
- How do you search for a specific file inside subfolders in Linux?
- How do you check for open ports on a Linux system?
- What are the benefits of using a firewall?
- Explain HTTP, HTTPS, TCP, and UDP with examples.
- How would you load balance 3–4 servers running services? Which type of load balancing is preferred and why?
- In Nginx, how do you persist a client connected to a specific server?
- With sticky session & IP hash enabled — what happens if a server goes down?
- How does header management work in Nginx?
- Bash One-liner: Find all running containers using more than 500MB RSS memory on a node.
- Systemd journal logs vanish on reboot across some AMIs. What do you check in the image build and boot sequence?
- What happens when systemd hits a failing unit in a containerized node? How would you auto-recover?
- What is Virtualization?