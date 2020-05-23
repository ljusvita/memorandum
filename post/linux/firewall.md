# Firewall

Debian 계열 방화벽 설정
- - -

* 기본 동작
  1. ufw (Uncomplicated FireWall) 설치
  ```bash
  sudo apt-get install ufw
  ```

  2. ufw 활성화/비활성화
  ```bash
  sudo ufw enable
  sudo ufw disable
  ```

  3. ufw 상태 확인
  ```bash
  sudo ufw status verbose
  ```
