CREATE TABLE IF NOT EXISTS `SONGS`
    (
        `SONG_ID` CHAR(6) NOT NULL,
        `SONG_TITLE` VARCHAR(32) NOT NULL,
        `COMPOSER` VARCHAR(32),
        `PROJ_DATE` DATE,
        `LAST_EXP` DATE,
        `DAW` VARCHAR(16),
        `IS_REMIX` BOOLEAN,
        `IS_REMAKE` BOOLEAN,
        `COVER_ART` VARCHAR(2000),
        `OG_ID` CHAR(6),
        `RELEASE_ID`CHAR(6),
        `ALBUM_ID` CHAR(6),
    PRIMARY KEY ( `ID` )
    );

CREATE TABLE IF NOT EXISTS `VOCALISTS`
    (
        `VOCALIST_ID` CHAR(6) NOT NULL,
        `NAME` VARCHAR(32),
        `SOFTWARE` VARCHAR(32),
        `IS_AI` BOOLEAN,
        `VOICE_PROVIDER` VARCHAR(32),
    PRIMARY KEY ( `ID` )
    );

CREATE TABLE IF NOT EXISTS `ALBUMS`
    (
        `ALBUM_ID` CHAR(6) NOT NULL,
        `TITLE` VARCHAR(32),
        `RELEASE_DATE` DATE,
        `COVER_ART` VARCHAR(256),
        `RELEASE_ID` CHAR(6),
    PRIMARY KEY ( `ID` )
    );

CREATE TABLE IF NOT EXISTS `SONG_ALBUM`
    (
        `ID` CHAR(6) NOT NULL,
        `ALBUM_ID` CHAR(6) NOT NULL,
        `SONG_ID` CHAR(6) NOT NULL,
    PRIMARY KEY ( `ID` ),
    FOREIGN KEY ( `ALBUM_ID` ) REFERENCES `ALBUMS` ( `ALBUM_ID` )
        ON DELETE CASCADE,
    FOREIGN KEY ( `SONG_ID` ) REFERENCES `SONGS` ( `SONG_ID` )
        ON DELETE CASCADE
    );

CREATE TABLE IF NOT EXISTS `SONG_VOCALIST`
    (
        `ID` CHAR(6) NOT NULL,
        `SONG_ID` CHAR(6) NOT NULL,
        `VOCALIST_ID` CHAR(6) NOT NULL,
    PRIMARY KEY ( `ID` ),
    FOREIGN KEY ( `SONG_ID` ) REFERENCES `SONGS` ( `SONG_ID` )
        ON DELETE CASCADE,
    FOREIGN KEY ( `VOCALIST_ID` ) REFERENCES `VOCALISTS` ( `VOCALIST_ID` )
        ON DELETE CASCADE
    );

INSERT INTO SONGS VALUES('S0001', 'gem', 'noriaki', 2022-03-12, 2023-03-09, 'Logic Pro', 0, 0, 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3ad7e4c4-2b92-4129-a8f4-c7ce2a902309/dfq3q8r-f197ebc7-9700-4507-a9cb-65fde5113ca5.png/v1/fill/w_1192,h_670,q_70,strp/gem_remaster_art_by_ukitchen_dfq3q8r-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzIwIiwicGF0aCI6IlwvZlwvM2FkN2U0YzQtMmI5Mi00MTI5LWE4ZjQtYzdjZTJhOTAyMzA5XC9kZnEzcThyLWYxOTdlYmM3LTk3MDAtNDUwNy1hOWNiLTY1ZmRlNTExM2NhNS5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.8eFz8aEgXyfoxp2c5ORSCP6VYk_JGFgnNG4jqr9mRVE', '', '', '');
INSERT INTO SONGS VALUES('S0002', 'gem_stone', 'noriaki', 2022-09-03, 2023-10-07, 'Logic Pro', 1, 0, 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3ad7e4c4-2b92-4129-a8f4-c7ce2a902309/dfq330e-ba9df035-88e5-4e4a-8cd6-12f88cd5051b.png/v1/fill/w_1131,h_707,q_70,strp/gem_stone_art_by_ukitchen_dfq330e-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAwIiwicGF0aCI6IlwvZlwvM2FkN2U0YzQtMmI5Mi00MTI5LWE4ZjQtYzdjZTJhOTAyMzA5XC9kZnEzMzBlLWJhOWRmMDM1LTg4ZTUtNGU0YS04Y2Q2LTEyZjg4Y2Q1MDUxYi5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.9masGna-SRT8aIhSunIi5_5m2VD_bh42z2yUfzp8FEQ', 'S0001', '', '');
INSERT INTO SONGS VALUES('S0003', 'sudo', 'noriaki', 2022-01-16, 2023-04-13, 'Logic Pro', 0, 1, '', '', '', '');
INSERT INTO SONGS VALUES('S0004', 'trash', 'noriaki', 2023-01-16, 2023-01-17, 'Logic Pro', 0, 0, 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/3ad7e4c4-2b92-4129-a8f4-c7ce2a902309/dfn7eay-96eb1c55-ad47-4598-9e36-df3949c5f006.png/v1/fill/w_1131,h_707,q_70,strp/len_has_left_the_planet_by_ukitchen_dfn7eay-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODAwIiwicGF0aCI6IlwvZlwvM2FkN2U0YzQtMmI5Mi00MTI5LWE4ZjQtYzdjZTJhOTAyMzA5XC9kZm43ZWF5LTk2ZWIxYzU1LWFkNDctNDU5OC05ZTM2LWRmMzk0OWM1ZjAwNi5wbmciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.BP-LTE0K5hnaQ9i38xaeJrvqIgSJt3U4Q7MiUkyhMZQ', '', '', '');

INSERT INTO VOCALIST VALUES('V0001', 'Rotten.ST', 'ChipSpeech', 0, '');
INSERT INTO VOCALIST VALUES('V0002', 'Yuma', 'Synthesizer V', 1, '');
INSERT INTO VOCALIST VALUES('V0003', 'Terminal 99', 'ChipSpeech', 0, '');
INSERT INTO VOCALIST VALUES('V0004', 'Kagamine Len', 'VOCALOID', 0, 'Asami Shimoda');

INSERT INTO SONG_VOCALIST VALUES ('SV0001', 'S0004', 'V0004');
INSERT INTO SONG_VOCALIST VALUES ('SV0002', 'S0001', 'V0001');
INSERT INTO SONG_VOCALIST VALUES ('SV0003', 'S0002', 'V0002');
INSERT INTO SONG_VOCALIST VALUES ('SV0004', 'S0003', 'V0003');