-- MySQL dump 10.13  Distrib 5.7.19, for macos10.12 (x86_64)
--
-- Host: localhost    Database: sys_tabs
-- ------------------------------------------------------
-- Server version	5.7.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `SYS_ADMIN`
--

DROP TABLE IF EXISTS `SYS_ADMIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_ADMIN` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `NAME` varchar(50) DEFAULT NULL COMMENT '姓名',
  `AGE` varchar(50) DEFAULT NULL COMMENT '年龄',
  `PHONE` varchar(20) DEFAULT NULL COMMENT ' 手机号码',
  `ADDRESS` varchar(50) DEFAULT NULL COMMENT '地址',
  `EMAIL` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `QQ` varchar(11) DEFAULT NULL COMMENT 'QQ',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `USE_FLAG` int(11) DEFAULT '0' COMMENT '是否启用 0-启用 1-停用 2-备用',
  `DEL_FLAG` int(11) DEFAULT '0' COMMENT '0-未删除 1-删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_ADMIN`
--

LOCK TABLES `SYS_ADMIN` WRITE;
/*!40000 ALTER TABLE `SYS_ADMIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_ADMIN` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_ADMIN_DEPT`
--

DROP TABLE IF EXISTS `SYS_ADMIN_DEPT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_ADMIN_DEPT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint(20) DEFAULT NULL,
  `DEPT_ID` bigint(20) DEFAULT NULL,
  `CREATE_USER` varchar(50) DEFAULT NULL,
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REMARK` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统单位和用户关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_ADMIN_DEPT`
--

LOCK TABLES `SYS_ADMIN_DEPT` WRITE;
/*!40000 ALTER TABLE `SYS_ADMIN_DEPT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_ADMIN_DEPT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_ADMIN_PERMIT`
--

DROP TABLE IF EXISTS `SYS_ADMIN_PERMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_ADMIN_PERMIT` (
  `ID` int(11) DEFAULT NULL COMMENT '编号',
  `USER_ID` int(11) DEFAULT NULL COMMENT '系统管理员编号',
  `PERMIT_ID` int(11) DEFAULT NULL COMMENT '权限编号',
  `CREATE_USER` varchar(20) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` date DEFAULT NULL COMMENT '创建时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_ADMIN_PERMIT`
--

LOCK TABLES `SYS_ADMIN_PERMIT` WRITE;
/*!40000 ALTER TABLE `SYS_ADMIN_PERMIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_ADMIN_PERMIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_ADMIN_ROLE`
--

DROP TABLE IF EXISTS `SYS_ADMIN_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_ADMIN_ROLE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `USER_ID` varchar(50) DEFAULT NULL COMMENT '系统用户编号',
  `ROLE_ID` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_ADMIN_ROLE`
--

LOCK TABLES `SYS_ADMIN_ROLE` WRITE;
/*!40000 ALTER TABLE `SYS_ADMIN_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_ADMIN_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_DEPT`
--

DROP TABLE IF EXISTS `SYS_DEPT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_DEPT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `DEPT_NO` varchar(50) DEFAULT NULL COMMENT '单位编号',
  `DEPT_NAME` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `RANGE_RANK` varchar(50) DEFAULT NULL COMMENT '范围',
  `USE_FLAG` int(11) DEFAULT '0' COMMENT '是否启用 0-启用 1-停用 2-备用',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统单位表（机构）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_DEPT`
--

LOCK TABLES `SYS_DEPT` WRITE;
/*!40000 ALTER TABLE `SYS_DEPT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_DEPT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_DEPT_ROLE`
--

DROP TABLE IF EXISTS `SYS_DEPT_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_DEPT_ROLE` (
  `ID` int(11) DEFAULT NULL COMMENT '编号',
  `DEPT_NO` int(11) DEFAULT NULL COMMENT '单位编号',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色编号',
  `CREATE_USER` varchar(200) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` int(11) DEFAULT NULL COMMENT '创建时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='单位角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_DEPT_ROLE`
--

LOCK TABLES `SYS_DEPT_ROLE` WRITE;
/*!40000 ALTER TABLE `SYS_DEPT_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_DEPT_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_HANDLE`
--

DROP TABLE IF EXISTS `SYS_HANDLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_HANDLE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `HANDLE_ID` bigint(50) DEFAULT NULL COMMENT '操作编号',
  `HANDLE_NAME` varchar(50) DEFAULT NULL COMMENT '操作名称',
  `USE_FLAG` int(11) DEFAULT '0' COMMENT '是否启用 0-启用 1-停用 2-备用',
  `DEL_FLAG` int(11) DEFAULT '0' COMMENT '是否删除 0-未删除 1-删除',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='控制操作类，是要使用用了控制。新增、修改、删除等按钮';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_HANDLE`
--

LOCK TABLES `SYS_HANDLE` WRITE;
/*!40000 ALTER TABLE `SYS_HANDLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_HANDLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_LOG`
--

DROP TABLE IF EXISTS `SYS_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_LOG` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `IP` varchar(50) DEFAULT NULL COMMENT 'ip地址',
  `MENU_ID` varchar(50) DEFAULT NULL COMMENT '模块编号',
  `MENU_NAME` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `OPER_ID` varchar(50) DEFAULT NULL COMMENT '操作编号 ，比如new update  create delete',
  `OPER_NAME` varchar(50) DEFAULT NULL COMMENT '操作名称',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_LOG`
--

LOCK TABLES `SYS_LOG` WRITE;
/*!40000 ALTER TABLE `SYS_LOG` DISABLE KEYS */;
INSERT INTO `SYS_LOG` VALUES (1,'127.0.0.1','12','test','admin','admin','2017-10-15 09:48:28','admin','');
/*!40000 ALTER TABLE `SYS_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_MENU`
--

DROP TABLE IF EXISTS `SYS_MENU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_MENU` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `MENU_ID` bigint(50) DEFAULT NULL COMMENT '模块编号',
  `MENU_NAME` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `MENU_URL` varchar(50) DEFAULT NULL COMMENT '模块url地址',
  `USE_FLAG` int(11) DEFAULT '0' COMMENT '是否启用 0-启用 1-停用 2-备用',
  `DEL_FLAG` int(11) DEFAULT '0' COMMENT '是否删除 0-未删除 1-删除',
  `PARENT_ID` varchar(50) DEFAULT NULL COMMENT '父编号',
  `ISPARENT` int(11) DEFAULT NULL COMMENT '是否是父类',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_MENU`
--

LOCK TABLES `SYS_MENU` WRITE;
/*!40000 ALTER TABLE `SYS_MENU` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_MENU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_MENU_HANDLE`
--

DROP TABLE IF EXISTS `SYS_MENU_HANDLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_MENU_HANDLE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `MENU_ID` bigint(20) DEFAULT NULL COMMENT '模块编号',
  `HANDLE_ID` bigint(50) DEFAULT NULL COMMENT '操作编号',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统模块操作类，和MENU管理，控制模块中的控件是否可用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_MENU_HANDLE`
--

LOCK TABLES `SYS_MENU_HANDLE` WRITE;
/*!40000 ALTER TABLE `SYS_MENU_HANDLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_MENU_HANDLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_PERMIT`
--

DROP TABLE IF EXISTS `SYS_PERMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_PERMIT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PERMIT_NO` varchar(50) DEFAULT NULL COMMENT '权限编号',
  `PERMIT_NAME` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `PERMIT_ALIAS` varchar(50) DEFAULT NULL COMMENT '权限别名',
  `PERMIT_CODE` varchar(50) DEFAULT NULL COMMENT '权限代码-一般是拼音缩写',
  `PERMIT_INTRODUCTION` varchar(50) DEFAULT NULL COMMENT '介绍',
  `USE_FLAG` int(11) DEFAULT NULL COMMENT '是否启用 0-启用 1-停用 2-备用',
  `DEL_FLAG` int(11) DEFAULT NULL COMMENT '是否删除 0-未删除 1-删除',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_PERMIT`
--

LOCK TABLES `SYS_PERMIT` WRITE;
/*!40000 ALTER TABLE `SYS_PERMIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_PERMIT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_PERMIT_HANDLE`
--

DROP TABLE IF EXISTS `SYS_PERMIT_HANDLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_PERMIT_HANDLE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PERMIT_ID` bigint(20) DEFAULT NULL COMMENT '权限编号',
  `HANDLE_ID` bigint(50) DEFAULT NULL COMMENT '操作编号',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统权限操作类，通过权限控制哪些控件可用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_PERMIT_HANDLE`
--

LOCK TABLES `SYS_PERMIT_HANDLE` WRITE;
/*!40000 ALTER TABLE `SYS_PERMIT_HANDLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_PERMIT_HANDLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_PERMIT_MENU`
--

DROP TABLE IF EXISTS `SYS_PERMIT_MENU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_PERMIT_MENU` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `PERMIT_ID` bigint(20) DEFAULT NULL COMMENT '权限编号',
  `MENU_ID` bigint(50) DEFAULT NULL COMMENT '操作编号',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统模块权限类，通过权限控制模块是否可用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_PERMIT_MENU`
--

LOCK TABLES `SYS_PERMIT_MENU` WRITE;
/*!40000 ALTER TABLE `SYS_PERMIT_MENU` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_PERMIT_MENU` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_ROLE`
--

DROP TABLE IF EXISTS `SYS_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_ROLE` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_NO` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `ROLE_ALIAS` varchar(50) DEFAULT NULL COMMENT '角色别名',
  `ROLE_CODE` varchar(50) DEFAULT NULL COMMENT '角色代码-一般是拼音缩写',
  `ROLE_INTRODUCTION` varchar(50) DEFAULT NULL COMMENT '介绍',
  `USE_FLAG` int(11) DEFAULT NULL COMMENT '是否启用 0-启用 1-停用 2-备用',
  `DEL_FLAG` int(11) DEFAULT NULL COMMENT '是否删除 0-未删除 1-删除',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_ROLE`
--

LOCK TABLES `SYS_ROLE` WRITE;
/*!40000 ALTER TABLE `SYS_ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYS_ROLE_PERMIT`
--

DROP TABLE IF EXISTS `SYS_ROLE_PERMIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYS_ROLE_PERMIT` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `PERMIT_ID` varchar(50) DEFAULT NULL COMMENT '权限编号',
  `CREATE_USER` varchar(50) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统角色权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYS_ROLE_PERMIT`
--

LOCK TABLES `SYS_ROLE_PERMIT` WRITE;
/*!40000 ALTER TABLE `SYS_ROLE_PERMIT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SYS_ROLE_PERMIT` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-22 10:25:02
