curl -L https://raw.githubusercontent.com/roboshop-devops-project/redis/main/redis.repo -o /etc/yum.repos.d/redis.repo
yum install redis-6.2.7 -y

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/redis.conf /etc/redis/redis.conf

# Update the `bind` from `127.0.0.1` to `0.0.0.0` in config file `/etc/redis.conf` & `/etc/redis/redis.conf`

#3. Start Redis Database

systemctl enable redis
systemctl start redis