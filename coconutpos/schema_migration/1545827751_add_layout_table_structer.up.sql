
CREATE TABLE table_zone (
	roworder serial NOT NULL ,
	shop_code character varying (25) NOT NULL DEFAULT '',
	zone_name character varying (255) NOT NULL DEFAULT '',
	image_file_ipad bytea ,
	image_file_ipad_pro bytea ,
	image_file_ipad_svg bytea ,
	image_file_ipad_pro_svg bytea ,
	img_guid character varying (50) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE table_zone_attr (
	roworder serial NOT NULL ,
	parent_guid uuid DEFAULT uuid_generate_v4() ,
	name character varying (255) DEFAULT '',
	type character varying (15) DEFAULT '',
	seat smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);


