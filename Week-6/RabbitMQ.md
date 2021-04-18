
# Week - 6 Summary - TASK ALLOTED DATE - APRIL-4, 2021

## Here are the tasks assigned for Week-6 | FIRST RUN DATE - 14th April

✅   1-Install and configure 1 node RMQ cluster version 3.7.9.  
❌   2-The RMQ cluster should be on TLS and have a username/password.  
✅   3-Data should be persisted on disk.  
❌   4-Add 2 more nodes to the cluster without restarting RMQ service on first one.  
❌   5-Create a vhost and a user with read-write permissions to the vhost.  
❌   6-Create 2 queues (DATA, DATA_SIDELINE) on the above created vhost.  
❌   7-Create pub and con for DATA queue, messages not consumed should move to the DATA_SIDELINE after a specific time.      
❌   8-Stop the consumer.  
❌   9-Publish 100 messages to DATA queue.  
❌   10-The 100 messages should automatically get moved to DATA_SIDELINE queue.  
❌   11-Stop the publisher.  
❌   12-Take a dump of the messages in DATA_SIDELINE queue using RMQ API/curl.  
❌   13-Delete the messages from the DATA_SIDELINE queue using RMQ API/curl.  
❌   14-Push the messages to DATA queue using RMQ API/curl.  

  
## Task Wise Explained

### 1. 1-Install and configure 1 node RMQ cluster version 3.7.9.
 **My Approach** 
```
DATE RUN - April 3 (Seen in 3rd Image)
```
- Was not able to correctly, without glitches install the specified verison of RMQ 3.7.9. instead installad 3.8.2 using the following steps: 
```
sudo apt install gnupg2 apt-transport-https curl  

curl https://dl.bintray.com/rabbitmq/Keys/rabbitmq-release-signing-key.asc | sudo apt-key add -echo "deb https://dl.bintray.com/rabbitmq/debian $(lsb_release -c -s) main" | sudo tee /etc/apt/sources.list.d/rabbitmq.list  

echo "deb https://dl.bintray.com/rabbitmq/debian $(lsb_release -c -s) main" | sudo tee    /etc/apt/sources.list.d/rabbitmq.list
echo "deb https://dl.bintray.com/rabbitmq-erlang/debian $(lsb_release -c -s) erlang-22.x" | sudo tee -a /etc/apt/sources.list.d/rabbitmq.list

sudo apt update

sudo apt-get install rabbitmq-server

```
