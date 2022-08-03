CREATE TABLE if not exists genre_lists (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(15) NOT NULL
);

CREATE TABLE if not exists artist_lists (
	id SERIAL PRIMARY KEY,    
	name VARCHAR(30),
	genre_lists_id INTEGER REFERENCES genre_lists(id)
); 


CREATE TABLE if not exists album_lists (
	id SERIAL PRIMARY KEY,                                                                                                 
	artist_lists_id INTEGER REFERENCES artist_lists(id)
	album_name VARCHAR(40) NOT NULL,
	release_data DATE
);


CREATE TABLE if not exists track_lists (
	id SERIAL PRIMARY KEY,  
	album_lists_id INTEGER REFERENCES album_lisst(id),
	track_name VARCHAR(30) NOT NULL,
	track_duration INTEGER CHECK (track_duration > 0)
);


