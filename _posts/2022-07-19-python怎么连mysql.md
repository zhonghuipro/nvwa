---

layout: post

title: "python怎么连mysql"

date:   2022-07-19 20:33:18 +0800

categories: python mysql

---

作为了一个野生python程序员，之前做的项目都用的是pymysql裸写SQL。

今天花了一些时间调研一下，python连mysql的最佳实践。

网上有很多讨论。我稍微总结一下。

首先，mysql使用有两种方式。

第一种方式，只是偶尔自己用一用。只需要有一个连接库，能自己写sql查数据就好了。

还有是上大系统。这个时候就需要用到ORM了。

我下面分别介绍一下。

### mysql连接器

按 <https://stackoverflow.com/questions/43102442/whats-the-difference-between-mysqldb-mysqlclient-and-mysql-connector-python>
这个讨论，主要有三种。
1. mysqlclient 原生mysql-connector-c的包装库。速度最快。
2. PyMySQL 纯python的库。要是没法用mysqlclient，可以考虑这个。
3. mysql-connector-python 这个是官方出的库。速度慢，但授权好像有些问题。

所以要是没有性能考虑的话，就选PyMySQL吧

### ORM框架
类似，java的mybatis，python也有一些数据库ORM框架。

为什么要用ORM，这篇文章有说。<https://www.cnblogs.com/pyspark/p/7873466.html>

总结起来就是
1. 安全，可以避免SQL注入等问题。
2. 好维护。不直接写SQL，方便复用。也降低了学习成本。

所以，如果要用python做后端系统，还是得学习一下mysql框架

看起来比较火的框架是 SQLALchemy
