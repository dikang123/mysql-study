# Replication Threads

- Slave I/O thread
- Slave SQL thread

```mysql
START SLAVE;
STOP SLAVE;

START SLAVE IO_THREAD;
STOP SLAVE SQL_THREAD;

START SLAVE UNTIL SQL_AFTER_MTS_GAPS;
START SLAVE IO_THREAD
  UNTIL SQL_AFTER_GTIDS =
  0ed18583-47fd-11e2-92f3-0019b944b7f7:338;

RESET SLAVE [ALL];
```

```mysql
SHOW SLAVE STATUS ;
```
