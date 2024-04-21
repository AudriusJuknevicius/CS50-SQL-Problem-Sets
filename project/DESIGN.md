# Design Document

By Audrius Juknevicius

Video overview: <URL HERE>

## Scope

In this section you should answer the following questions:

* What is the purpose of your database?

The purpose of the database is to function as a central repository for managing and organizing music and user-related data.
It enables users to explore music in different ways such as genre or artist-specific albums. Tracks can be obtained, played and added to individual playlists.

There is also functionality to engage with other users and view albums, songs and artists in various lists such as top music or favourite artist by most played album or track. In addition, you have user tracking and management.

* Which people, places, things, etc. are you including in the scope of your database?

#### Included in the database's scope is:

    - Users:
    Create user-specific account with basic information such as name and ability to add a profile picture.

    - User tracks:
    Ability to add tracks, favourite them and count the number of times a specific track has been played.

    - Tracks:
    Singular-tracks that are derived from albums. Fields include title, duration and lyrics.

    - Playlists:
    User created playlists with specific tracks to suit their music preference. Includes time created, description, an image if desired, last updated and an option to make it public.

    - Playlist-tracks:
    A sub-table that contains all of the tracks that are added into playlists. As a bonus includes track
    Order which could be utilized to shuffle music.

    - Artists:
    Table with the name of the artist, their picture and a biography field if desired.

    - Albums:
    Includes the album title, release date, genre, album cover and description.



* Which people, places, things, etc. are *outside* the scope of your database?

#### Out of scope elements include:
    -  Music Labels:
    Currently the database does not have or show any connection between artists and their labels.

    - Financial Transactions:
    Usually a music database focuses on managing information related to music and typically does not handle
    transactions.
    So there is no log or information regarding purchases, subscriptions or any types of payments.


## Functional Requirements

In this section you should answer the following questions:

* What should a user be able to do with your database?

    1. A user can register and manage their account, update their profile information and
    Login information.
    2. Discover and search for music through different means such as artist, genre, track name and another user's playlist name.
    3. Create personalised playlists, make them public or private.
    4. Listen to music, interact with different songs and shuffle playlists.
    5. View information on artists and albums such as biography and album cover or artist picture.
    6. Obtain tracks which can then be listened to and used in creating a playlist.


* What's beyond the scope of what a user should be able to do with your database?

    1. Add or delete information and data beyond their personal profile. Such as adding an artist.
    2. Be able to see private playlists or manage playlists that do not belong to them.
    3. Change and update other user profiles besides their own.


## Representation

Entities are captured in MySQL tables with the following schema. (schema.sql)


### Entities

In this section you should answer the following questions:

* Which entities will you choose to represent in your database?
* What attributes will those entities have?
* Why did you choose the types you did?
* Why did you choose the constraints you did?

#### 1. Entity "users":

    `id`
        -Specifies unique number ID for the user, therefore the datatype is INT(Integer) used to store numbers.
        -For it to be a unique number ID, "AUTO_INCREMENT" is applied which allows a unique number to be generated automatically when a new record enters the table.
        -It is also a primary key for this entity/table.

    `first_name`
        -Specifies first name of the user, as the datatype is expected to be letters and numbers, a "varchar" datatype with a limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to be filled.

    `last_name`
        -Specifies the last name of the user, as the datatype is expected to be letters and numbers, a "varchar" datatype with a limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to be filled.

    `username`
        -Specifies the username of the user, as the datatype is expected to be letters and numbers, a "varchar" datatype with a limit of 32 characters is used. This field is used to login.
        -This field has a "NOT NULL" constraint, meaning it has to be filled.
        -UNIQUE constraint was used so no two accounts can be mixed up during the login.
        -This field has a "UNIQUE" constraint, in this instance it is used so no two accounts can be mixed up during login phase, so this is checked during the registration.

    `display_name`
        -Specifies the name of the profile and account, this can be viewed by other users.
        -The datatype is expected to be letters and numbers, a "varchar" datatype with a limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to be filled.


    `email`
        -Specifies an email address that the user registered with.
        -The datatype is expected to be letters, numbers and symbols so a "varchar" datatype with a limit of 64 characters is used. The limit is increased as email addresses can be longer than 32.
        -This field has a "NOT NULL" constraint, meaning it has to be filled.
        -This field has a "UNIQUE" constraint, in this instance it is used so only one email address can be used per account and no two accounts can have the exact same one, as email is used to contact the person and also authorise variety of profile and account changes in addition to potential transactions.

    `password`
        -Specifies a secret collection of characters used to login with username and or email.
        -The datatype is expected to be letters, numbers and symbols so a "varchar" datatype with a limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to be filled. Leaving the password blank would mean anyone could access your account!

    `registration_date`
        -Specifies at what date and time the user account was registered.
        -The datatype is date and time therefore "DATETIME" is used.
        -This field has a "CURRENT_TIMESTAMP" constraint, meaning that by default it will populate the field with the current date and time upon registration.

    `date_of_birth`
        -Specifies the date of birth that the user can optionally fill out.
        -The datatype is "DATE" as days, months and years are expected to be in this field.
        -As the field is optional, no constraints are applied.

    `profile_image`
        -Optional field which is used to show an image of choice selected by the user.
        -The datatype is "MEDIUMBLOB" to hold up to 16,777,215 bytes of data. (16.7 Megabytes)
        This will be populated by an image.



#### 2. Entity "user_tracks":

    `user_id`
        -This specifies the unique number associated with a user's account.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This is also a primary key for this entity, alongside another attribute, making it a "composite primary key".
        -This is also a foreign key for this entity.

    `track_id`
        -This specifies the unique number associated with the track.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This is also a primary key for this entity, alongside another attribute, making it a "composite primary key".
        -This is also a foreign key for this entity.

    `date_added`
        -This specifies the date that the track was obtained by the user.
        -The datatype is date and time therefore "DATETIME" is used
        -This field has a "CURRENT_TIMESTAMP" constraint, meaning that by default it will populate the field with the current date and time upon obtaining the track.

    `is_favourite`
        -Specifies if a track is favourited by the user or not.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "DEFAULT" constraint. Unless no other value is specified, a default value will show which is 0 in this case. If a song gets favourited, the value will be 1.

    `play_count`
        -Specifies how many times a specific track was played by the user.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "DEFAULT" constraint. Unless no other value is specified, a default value will show which is 0 in this case.

    `track_title`
        -Specifies the name of the track.
        -The datatype "TEXT" was used as this is expected to be a string of characters.
        -This field has a "NOT NULL" constraint, meaning it has to contain a track title.
        -This field is also a foreign key to the track entity.




#### 3. Entity "tracks":

    `id`
        -Specifies a unique number associated with the track.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "AUTO_INCREMENT" which allows a unique number to be generated automatically when a new record enters the table.
        -This field is a primary key.


    `artist_id`
        -Specifies a unique number associated with the artist.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field is a foreign key.

    `artist_name`
        -Specifies the name of the artist.
        -The datatype is expected to be letters, numbers and symbols so a "varchar" datatype with a limit of 32 characters is used.
        -This field is a foreign key.

    `title`
        -Specifies the name of the track.
        -The datatype used is "varchar", it is expected that letters, numbers and symbols will be used. A limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to contain a track title.


    `duration`
        -Specifies the duration of the specific track.
        -The datatype "INT" was used, as the field is expected to be a numerical value.

    `album_id`
        -Specifies a unique number associated with the album.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "AUTO_INCREMENT" which allows a unique number to be generated automatically when a new record enters the table.
        -This field is a foreign key.

    `lyrics`
        -Specifies the lyrics of a track so a user can sing along.
        -The datatype "text" was used as this is expected to be a string of characters.
        -No constraints were used on this one as it is not necessary for the track to contain visible lyrics.

    `release_date`
        -Specifies the date at which the track was released.
        -The datatype used was "DATE" as date and time is the expected value.





#### 4. Entity "playlists":

    `playlist_id`
        -Specifies a unique number associated with the playlist.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "AUTO_INCREMENT" which allows a unique number to be generated automatically when a new record enters the table.
        -This field is a primary key.

    `playlist_name`
        -Specifies the user selected name.
        -The datatype used is "varchar", it is expected that letters, numbers and symbols will be used. A limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to contain a value.

    `playlist_image`
        -Shows a user chosen image, this is optional.
        -The datatype is "MEDIUMBLOB" to hold up to 16,777,215 bytes of data. (16.7 Megabytes)
        This will be populated by an image.


    `user_id`
        -This specifies the unique number associated with a user's account.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This is also a foreign key for this entity.

    `playlist_description`
        -Specifies a user-inputted description of the playlist, an optional field.
        -The datatype "text" was used as this is expected to be a string of characters.

    `created_at`
        -This specifies the date and time the playlist was created.
        -The datatype is date and time therefore "DATETIME" is used.
        -This field has a "DEFAULT" constraint. Unless no other value is specified, a default value will show which is "CURRENT_TIMESTAMP" in this instance.

    `last_updated`
        -This specifies the date and time the playlist was last updated or edited.
        -The datatype is date and time therefore "DATETIME" is used.
        -This field has a "DEFAULT" constraint. Unless no other value is specified, a default value will show which is "CURRENT_TIMESTAMP" in this instance.

    `public_or_private`
        -Specifies whether the playlist is private or public so other users can view and play it.
        The datatype is "ENUM", meaning this field can only be one of the pre-written values which in this case is "public" or "private.
        -This field has a "NOT NULL" constraint, meaning it has to contain a value.
        -This field has a "DEFAULT" constraint. Unless no other value is specified, a default value will show which in this case is public.




#### 5. Entity "playlist_tracks":

    `playlist_id`
        -Specifies a unique number associated with the playlist.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field is part of a composite primary key.
        -This field is also a foreign key.

    `track_id`
        -Specifies a unique number associated with the track.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field is part of a composite primary key.
        -This field is also a foreign key.

    `track_order`
        -Specifies the order of which tracks appear, depending on when they were added.
        -The datatype "INT" was used, as the field is expected to be a numerical value.




#### 6. Entity "artists":

    `artist_id`
        -Specifies a unique number associated with the artist.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "AUTO_INCREMENT" which allows a unique number to be generated automatically when a new record enters the table.
        -This field is a primary key.

    `artist_name`
        -Specifies the name of the artist.
        -The datatype used is "varchar", it is expected that letters, numbers and symbols will be used. A limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to contain a value.

    `artist_picture`
        -Shows an artist chosen image, this is optional.
        -The datatype is "MEDIUMBLOB" to hold up to 16,777,215 bytes of data. (16.7 Megabytes)
        This will be populated by an image.

    `biography`
        -Specifies a description of the artist, an optional field.
        -The datatype "text" was used as this is expected to be a string of characters.




#### 7. Entity "albums":

    `album_id`
        -Specifies a unique number associated with the album.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "AUTO_INCREMENT" which allows a unique number to be generated automatically when a new record enters the table.
        -This field is a primary key.

    `album_title`
        -Specifies the title of the album which users can utilize in their search.
        -The datatype used is "varchar", it is expected that letters, numbers and symbols will be used. A limit of 32 characters is used.
        -This field has a "NOT NULL" constraint, meaning it has to contain a value.

    `release_date`
        -Shows the date at which the album was released.
        -The datatype is "DATE" as the field is expected to be days, months and years.

    `album_cover`
        -Shows an imagine to represent the album.
        -The datatype is "MEDIUMBLOB" to hold up to 16,777,215 bytes of data. (16.7 Megabytes)
        This will be populated by an image.

    `album_genre`
        -Specifies which genre the album belongs to for example rock or pop.

    `artist_id`
        -Specifies a unique number associated with the artist.
        -The datatype "INT" was used, as the field is expected to be a numerical value.
        -This field has a "AUTO_INCREMENT" which allows a unique number to be generated automatically when a new record enters the table.
        -This field is a foreign key.

    `album_description`
        -Specifies a description of the album, an optional field.
        -The datatype "text" was used as this is expected to be a string of characters.



### Relationships

![Diagram](.jpg)

In this section you should include your entity relationship diagram and describe the relationships between the entities in your database.

## Optimizations

In this section you should answer the following questions:

* Which optimizations (e.g., indexes, views) did you create? Why?

## Limitations

In this section you should answer the following questions:

* What are the limitations of your design?
* What might your database not be able to represent very well?
