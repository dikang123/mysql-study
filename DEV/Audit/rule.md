# 审核规则
## 建模

- 引擎
  - 必须使用InnoDB存储引擎
- 字符集
  - 字符集utf8
  - emoji表情字符集选用utf8mb4
- 主键
  - 需要设置bigint无符号(unsigned)自增主键
  - 每个表都要建立显式主键
- 索引
  - 根据查询sql语句选择是否使用复合索引
  - 唯一键、索引避免字段可为null
- 数据类型
  - 不要使用char，用varchar代替
  - 单表varchar列长度总和不要超过8098位
  - 避免使用tinytext,text类型
    - 能不用text就不用，如必须要用最好垂直拆分出去
  - 不要使用tinyblob,blob,mediumblob,longblob等二进制lob类型
  - 时间存储选用datetime类型
- 其他
  - 表、字段必须要有注释
  - 字段冗余要适当

## 查询

- 嵌套查询，优先使用JOIN而不用IN