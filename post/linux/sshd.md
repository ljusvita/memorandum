# ssh 문제

ssh로 접속시 방화벽 개방을 했음에도 불구하고 접속거부가 되면 이 해소방법이 도움이 될 수 있음

```bash
ssh pi@192.168.1.89
ssh: connect to host 192.168.1.89 port 22: Connection refused
```

- - -

* 대처법
  1. openssh-server 재설치
  ```bash
  sudo apt-get purge openssh-server
  sudo apt-get install openssh-server
  ```

  2. sshd 기동
  ```bash
  sudo service sshd start
  ```