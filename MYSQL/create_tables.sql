CREATE TABLE Bars(
    name VARCHAR(255),
    addr VARCHAR(255),
    owner VARCHAR(255),
    PRIMARY KEY (name)
);
CREATE TABLE Drinkers(
    drinkername VARCHAR(255),
    addr VARCHAR(255),
    hobby VARCHAR(100),
    barname_frequents VARCHAR(255),
    PRIMARY KEY (drinkername, addr)
);
CREATE TABLE Beers(
    name VARCHAR(255),
    brewer VARCHAR(255),
    alcohol float,
    PRIMARY KEY(name)
);
CREATE TABLE Favorites(
    drinkername VARCHAR(255),
    drinkeraddr VARCHAR(255),
    barname VARCHAR(255),
    season ENUM('fall','winter','spring','summer'),
    beername VARCHAR(255),
    PRIMARY KEY (drinkername, drinkeraddr, barname)
);
CREATE TABLE Sells(
    beername VARCHAR(255),
    barname VARCHAR(255),
    price float,
    discount float,
    PRIMARY KEY (barname, beername)
);
CREATE TABLE Drinks(
    drinkername VARCHAR(255),
    drinkeraddr VARCHAR(255),
    rating ENUM('1','2','3','4','5'),
    beername VARCHAR(255),
    PRIMARY KEY(drinkeraddr, drinkername, beername)
);