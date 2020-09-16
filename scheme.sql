
create database if not exists `ecommerce`;

use `ecommerce`;

create table `articles` (
    `publicName` varchar(100) not null,
    `internalName` varchar(100) not null,
    `unitPriceHT` decimal(5,2) not null,
    `unitPriceTTC` decimal(5,2) not null,
    `description` text not null,
    `stock` int default null
);

