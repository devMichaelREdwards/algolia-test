DROP TABLE IF EXISTS guns;

CREATE TABLE guns (
    id INT AUTO_INCREMENT PRIMARY KEY,
    model varchar(512),
    caliber varchar(512),
    barrel_length INT,
    barrel_length_unit varchar(100),
    type varchar(512),
    badass_description TEXT,
    img VARCHAR(512)
);

INSERT INTO guns (model, caliber, barrel_length, barrel_length_unit, type, badass_description, img) VALUES
("BK-133", "12ga", 12, "Long AF", "Buckshot", "Tis a big shot gun", "https://static.wikia.nocookie.net/dayz_gamepedia/images/5/5c/MP-133-Shotgun.png/revision/latest/scale-to-width-down/256?cb=20210210190104"),
("BK-43", "12ga", 8, "Long AF", "Buckshot", "Tis another big shot gun", "https://static.wikia.nocookie.net/dayz_gamepedia/images/c/c7/Izh43Shotgun.png/revision/latest/scale-to-width-down/256?cb=20210210185835"),
("Viaga", "12ga", 10, "Looks like it kills people", "Buckshot", "Tis a big shot gun", "https://static.wikia.nocookie.net/dayz_gamepedia/images/c/c8/Vaiga.png/revision/latest/scale-to-width-down/256?cb=20220220185225"),
("Bizon", ".380 ACP", 8, "Long AF", "Submachine", "It shoots kinda fast", "https://static.wikia.nocookie.net/dayz_gamepedia/images/a/af/PP19.png/revision/latest/scale-to-width-down/251?cb=20220127132305"),
("CR-61 Skorpion", ".380 ACP", 5, "Long AF", "Submachine", "It shoots kinda fast", "https://static.wikia.nocookie.net/dayz_gamepedia/images/6/63/VZ61Scorpion.png/revision/latest/scale-to-width-down/222?cb=20220518204508"),
("SG5-K", "9x19mm", 12, "Long AF", "Submachine", "It shoots kinda fast", "https://static.wikia.nocookie.net/dayz_gamepedia/images/f/fc/MP5-K.png/revision/latest/scale-to-width-down/158?cb=20220221011343"),
("USG-45", ".45 ACP Rounds", 12, "Long AF", "Submachine", "It shoots kinda fast", "https://static.wikia.nocookie.net/dayz_gamepedia/images/d/d7/UMP45.png/revision/latest/scale-to-width-down/153?cb=20220221002354"),
("AUR A1", "5.56x45mm", 12, "Long AF", "Automatic", "It shoots very fast", "https://static.wikia.nocookie.net/dayz_gamepedia/images/0/0f/AUGShort.png/revision/latest/scale-to-width-down/173?cb=20211104175243"),
("AUR AX", "5.56x45mm", 12, "Long AF", "Automatic", "It shoots very fast", "https://static.wikia.nocookie.net/dayz_gamepedia/images/d/dc/AUG.png/revision/latest/scale-to-width-down/233?cb=20211104182427"),
("KA-101", "5.56x45mm", 12, "Long AF", "Automatic", "It shoots very fast", "https://static.wikia.nocookie.net/dayz_gamepedia/images/f/f2/AK101.png/revision/latest/scale-to-width-down/251?cb=20210207040122")
