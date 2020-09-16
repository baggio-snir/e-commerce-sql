
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
    `article` char(10) not null,
    `basePriceHT` decimal(5,2) not null,
    `basePriceTTC` decimal(5,2) not null,
    `percentDiscount` smallint default null,
    `fixedDiscountHT` decimal(5,2) default null,
    `fixedDiscountTTC` decimal(5,2) default null;
);

create table `paiments` (
    `panier` int not null,
    `datePay` datetime not null,
    `totalPriceHT` decimal(10,2) not null,
    `totalPriceTTC` decimal(10,2) not null
);

create table `paiment_articles` (
    `panier` int not null,
    `article` char(10) not null,
    `priceHT` decimal(5,2) not null,
    `priceTTC` decimal(5,2) not null,
    `basePriceHT` decimal(5,2) not null,
    `basePriceTTC` decimal(5,2) not null,
    `percentDiscount` smallint default null,
    `fixedDiscountHT` decimal(5,2) default null,
    `fixedDiscountTTC` decimal(5,2) default null
);

create table `discounts` (
    `article` char(10) not null,
    `dateStart` datetime not null,
    `dateEnd` datetime not null,
    `maxArticles` int default null,
    `percentDiscount` smallint default null,
    `fixedDiscountHT` decimal(5,2) default null,
    `fixedDiscountTTC` decimal(5,2) default null
);
