
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
