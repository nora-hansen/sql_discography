# SQL Discography
A database of my songs :)

## Tables
### songs
It has songs

#### Columns
- ID (Primary key)
- Song Title
- Composer
- Project Date (When was the project file first created?)
- Last Export (Audio file)
- DAW
- Is Remix
- Is Remake
- Cover Art (URL)
- Original ID (For Remake/Remix)
- Release ID (Foreign key)
- Album ID (Foreign key)

### vocalists
Vocalists in use

#### Columns
- ID (Primary key)
- Name
- Software
- Is AI (Eg. Synthesizer V Pro, CeVIO AI, VOCALOID6, DiffSinger ... )
- Voice Provider

### albums
Albums

#### Columns
- ID (Primary key)
- Title
- Release Date
- Cover art
- Release ID (Foreign key)

### song_album
Songs that are in an album

#### Columns
- ID (Primary key)
- Album ID (Foreign key)
- Song ID (Foreign key)

### song_vocalist
Vocalists featured in a song

#### Columns
- ID (Primary key)
- Song ID (Foreign key)
- Vocalist ID (Foreign key)

