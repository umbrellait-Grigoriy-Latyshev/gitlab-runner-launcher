# gitlab-runner-launcher

Simple `.env` file and scripts to setup Gitlab runner for your project

## How to use

1. Fill `.env` file with your project's CI token (you can find it in Settings->CI).
`.env` file is only needed for runner registration
2. Run

```bash
bash register-runner.sh
```

3. Start runner
```bash
docker-compose up -d 
```

4. PROFIT!
