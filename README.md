### 使い方
CircleCIなどのCIでimageを利用する

例: CircleCI 2.0での記述
```
version: 2

jobs:
  verify:
    docker:
      - image: diverse/danger
    steps:
      - checkout
      - run:
          name: Run Danger
          command: |
            danger
workflows:
  version: 2
  verify_pullrequest:
    jobs:
      - verify:
          filters:
            branches:
              ignore: master
```
