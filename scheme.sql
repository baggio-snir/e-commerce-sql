
create database if not exists `ecommerce`;

use `ecommerce`;

create table `articles` (
    `internalName` char(10) not null,
    `publicName` varchar(100) not null,
    `unitPriceHT` decimal(5,2) default null,
    `unitPriceTTC` decimal(5,2) not null,
    `description` text not null,
    `stock` int default null
);

create table `paniers` (
    `id` int not null primary key auto_increment,
    `owner` varchar(50) not null,
    `statut` enum('open', 'cancelled', 'closed') not null default 'open'
);

create table `panier_articles` (
    `panier` int not null,
    `article` char(10) not null
);
