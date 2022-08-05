create database if not exists `taskcloud` default character set utf8 collate utf8_general_ci;

use `taskcloud`;

create table if not exists `user`
(
    `id` bigint primary key auto_increment not null comment '主键',
    `nickname` varchar(32) not null comment '用户名',
    `username` varchar(32) not null comment '账号',
    `password` varchar(256) not null comment '密码',
    `type` int not null comment '用户类型',
    `registed_time` datetime not null comment '注册时间',
    `state` int not null comment '用户状态',
    `last_login_time` datetime comment '最后登录时间',
    `last_login_ip` varchar(32) comment '最后登录IP'
);

create table if not exists `task`
(
    `id` bigint primary key auto_increment not null comment '主键',
    `name` varchar(256) not null comment '任务名称',
    `description` varchar(1024) not null comment '任务描述',
    `warning` varchar(256) not null comment '注意事项',
    `interfaces` varchar(256) not null comment '任务可用接口',
    `domain` varchar(256) not null comment '任务所需通行证的主域名',
    `author` varchar(32) not null comment '作者昵称',
    `author_id` bigint not null comment '作者ID',
    `type` int not null comment '使用的语言类型',
    `script` text not null comment '任务脚本代码',
    `version` varchar(16) not null default '1.0.0' comment '任务版本',
    `rating` float not null default 0 comment '任务评分',
    `state` int not null comment '任务状态',
    `state_message` varchar(512) comment '任务状态消息'
);

create table if not exists `package`
(
    `id` bigint primary key auto_increment not null comment '主键',
    `user_id` bigint not null comment '用户ID',
    `name` varchar(32) not null comment '包名称',
    `tasks_config` text not null comment '包任务配置',
    `activated` boolean not null comment '是否激活',
    `run_everyday` boolean not null comment '是否每天运行',
    `run_on_time` datetime not null comment '在何时运行'
);

create table if not exists `config`
(
    `id` bigint primary key auto_increment not null comment '主键',
    `user_id` bigint not null comment '用户ID',
    `domain` varchar(256) not null comment '主域名',
    `passport` text not null comment '通行证',
    `reference_count` int not null comment '引用次数'
);

create table if not exists `help`
(
    `id` bigint primary key auto_increment not null comment '主键',
    `title` varchar(256) not null comment '标题',
    `author` varchar(32) not null comment '作者昵称',
    `author_id` bigint not null comment '作者ID',
    `content` text not null comment '内容',
    `publish_time` datetime not null default current_timestamp comment '发布时间',
    `state` int not null comment '帮助状态',
    `state_message` varchar(512) comment '帮助状态消息'
);

create table if not exists `task_comment`
(
    `id` bigint primary key auto_increment not null comment '主键',
    `task_id` bigint not null comment '任务ID',
    `author` varchar(32) not null comment '作者昵称',
    `author_id` bigint not null comment '作者ID',
    `comment` text not null comment '评论内容',
    `rating` float not null default 0 comment '评分',
    `publish_time` datetime not null default current_timestamp comment '发布时间'
);

create table if not exists `task_log`
(
    `id` bigint primary key auto_increment not null comment '主键',
    `user_id` bigint not null comment '用户ID',
    `package_id` bigint not null comment '包ID',
    `task_id` bigint not null comment '任务ID',
    `package_name` varchar(32) not null comment '包名称',
    `task_name` varchar(256) not null comment '任务名称',
    `task_version` varchar(16) not null comment '任务版本',
    `functions` varchar(256) not null comment '任务执行的接口',
    `state` int not null comment '任务执行的状态',
    `execute_on_time` datetime not null comment '任务开始执行的时间',
    `from_where` varchar(32) not null comment '任务执行的来源'
);

-- username:admin@test.com password:123654
insert into `user` (`nickname`,`username`,`password`,`type`,`registed_time`,`state`) values ('nullptr','admin@test.com','14821351d882bca263d6f36910bc70c5987a9ce561899e4453470be9f84804fe8bccbc70b92c0c3283af8f48357be7ca1beaed4707dda5ed7c63ac6839479fb4',2,now(),3);
