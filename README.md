### 使い方
Dangerfileのあるディレクトリをボリュームとして`/workdir`にマウントする

例: docker-compose.yml
```
compass:
  image: diverse/danger
  volumes:
    - .:/danger
```

#### 実行
```
docker-danger run
```

