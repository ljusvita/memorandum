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

* 기본 정책 관련
  1. 기본 정책 확인
  ```bash
  sudo ufw show raw
  ```

  2. 기본 정책 차단
  ```bash
  sudo ufw default deny
  ```

  3. 기본 정책 허용
  ```bash
  sudo ufw default allow
  ```

* 사용 방법
  1. 허용

      - 22번 포트를 허용
      ```bash
      sudo ufw allow 22
      ```

      - tcp의 22번 포트만 허용
      ```bash
      sudo ufw allow 22/tcp
      ```

      - udp의 22번 포트만 허용
      ```bash
      sudo ufw allow 22/udp
      ```

  2. 거부

      - 22번 포트를 거부
      ```bash
      sudo ufw deny 22
      ```

      - tcp의 22번 포트만 거부
      ```bash
      sudo ufw deny 22/tcp
      ```

      - udp의 22번 포트만 거부
      ```bash
      sudo ufw deny 22/udp
      ```

  3. 서비스명을 통한 설정

      - ssh 서비스를 허용/거부
      ```bash
      sudo ufw allow ssh
      sudo ufw deny ssh
      ```

  4. 허용/거부 설정의 삭제

      - 「22번 포트를 거부」 설정을 삭제
      ```bash
      sudo ufw delete deny 22
      ```