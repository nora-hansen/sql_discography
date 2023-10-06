CREATE TABLE IF NOT EXISTS `SONGS`
    (
        `ID` CHAR(6) NOT NULL,
        `SONG_TITLE` VARCHAR(32) NOT NULL,
        `COMPOSER` VARCHAR(32),
        `PROJ_DATE` DATE,
        `LAST_EXP` DATE,
        `DAW` VARCHAR(16)
        `ALBUM_ID` CHAR(6),
        `IS_REMIX` BOOLEAN,
        `IS_REMAKE` BOOLEAN,
        `OG_ID` CHAR(6),
        `RELEASE_ID`CHAR(6),
    PRIMARY KEY ( `ID` )
    );

CREATE TABLE IF NOT EXISTS `VOCALISTS`
    (
        `ID` CHAR(6),
        `NAME` VARCHAR(32),
        `SOFTWARE` VARCHAR(32),
        `IS_AI` BOOLEAN,
        `VOICE_PROVIDER` VARCHAR(32)
    PRIMARY KEY ( `ID` )
    )

CREATE TABLE IF NOT EXISTS `ALBUMS`
    (
        `ID` CHAR(6),
        `TITLE` VARCHAR(32),
        `RELEASE_DATE` DATE,
        `RELEASE_ID` CHAR(6)
    PRIMARY KEY ( `ID` )
    )

CREATE TABLE IF NOT EXISTS `SONG_ALBUM`
    (
        `ID` CHAR(6),
        `ALBUM_ID` CHAR(6),
        `SONG_ID` CHAR(6)
    PRIMARY KEY ( `ID` )
    )