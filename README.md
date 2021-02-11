# yomi

## Setup Database

Composing postgres server and pgAdmin

```bash
$ docker-compose up
```
## Exec MD5 Verifier

First, Installing pg libs.  
Second,
```bash
$ cd md5-verifier/
$ brew install postgresql
$ bundle install
```

Result: Impossible. MD5 is one-way hash function, so 
it costs too much time and amount of data.  
Only about 3 bytes can be analyzed with a normal computer 3 bytes (out of 16 bytes).
## Exec Helper (Plan)
Being prepared.

cf / using: <https://github.com/EndlessCheng/mahjong-helper>  
cf / log: <https://twitter.com/MSuphx>  
cf / reference implementation: <https://github.com/hogeki/dlmahjong>  

## dlmahjong kai
python 3.8.7 / tensorflow 2.4.1

```bash
$ python mahjong_ai.py
```

### Learning and Save:
```bash
$ python mahjong_ai.py --train --save
```

### Testing:
```bash
$ python mahjong_ai.py --run
```

### Create training data
```bash
python mahjong_generator.py
```
