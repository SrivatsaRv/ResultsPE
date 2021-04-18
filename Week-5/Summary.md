
# Week - 5 Summary - TASK ALLOTED DATE -  MARCH-29 2021

## Here are the tasks assigned for Week-5 

  ✅ Verification Task - Run a shell command on 3 VMs from your local machine and save its output in a file locally.   
  ❌ 1- Setup of 3 node galera cluster.   
  ❌ 2- Demote the 3rd node to an async slave.    
  ❌ 3- Provisions to uninstall/destroy the cluster.   
  ❌ 4- The playbook should be idempotent (i.e running the playbook multiple times shouldn't affect the setup).  
  ❌ 5- The cluster once setup should have only 2 new users - one for you with read/write permissions and another called monitoring with only read permissions.

## Additional Tasks

  ❌ 1- Setup Hashicorp’s vault and have your ansible playbook(created in task     2) reference it to create mariadb users.  
  ❌ 2- Ansible should use your credentials (username and private key) stored in vault to run the playbooks in the corresponding VMs.  
  ❌ 3- Ansible playbook should connect to vault over https (for which you will need to use self signed certificates).  

  
## Task Wise Explained

### 1. Run a shell command on 3 VMs from your local machine and save its output in a file locally.  
 **My Approach** 
```
DATE RUN - April 3 (Seen in 3rd Image)
```
- Created a .yml file named test1 and put my command there, named as shell tasks, running on servers group created in the hosts file in /etc/ansible directory
- Added the 3 slave nodes IP addresses here so that the master can pick them up. 
- Saved the ansible playbook and run it from master, it successfully pinged (third image).  


 ![image](https://user-images.githubusercontent.com/43114746/115155858-56b6d900-a09f-11eb-9fac-26e8e42242ac.png)
 ![image](https://user-images.githubusercontent.com/43114746/115156022-07bd7380-a0a0-11eb-86a8-506190bd6aaf.png)
 ![image](https://user-images.githubusercontent.com/43114746/115157421-bc5a9380-a0a6-11eb-97a1-a2542de6abaa.png)

### 2- Setup of 3 node galera cluster.  
### 3- Demote the 3rd node to an async slave.    
### 4- Provisions to uninstall/destroy the cluster.     
### 5- The playbook should be idempotent (i.e running the playbook multiple times shouldn't affect the setup).  

