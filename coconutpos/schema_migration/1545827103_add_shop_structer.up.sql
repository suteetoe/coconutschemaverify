
CREATE TABLE shop (
	roworder serial NOT NULL ,
	shop_code character varying (25) NOT NULL DEFAULT '',
	owner_email character varying (255) NOT NULL DEFAULT '',
	shop_name character varying (255) NOT NULL DEFAULT '',
	company_code character varying (100) NOT NULL DEFAULT '',
	shop_name_en character varying (255) DEFAULT '',
	shop_address character varying (500) DEFAULT '',
	tel_direct character varying (100) DEFAULT '',
	tel_call_center character varying (100) DEFAULT '',
	email character varying (100) DEFAULT '',
	line_id character varying (100) DEFAULT '',
	shop_url character varying (20) DEFAULT '',
	facebook character varying (100) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE shop_location (
	roworder serial NOT NULL ,
	shop_code character varying (25) NOT NULL DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE opening_hours (
	roworder serial NOT NULL ,
	shop_code character varying (25) NOT NULL DEFAULT '',
	day_key character varying (3) NOT NULL DEFAULT '',
	start_time character varying (5) DEFAULT '',
	end_time character varying (5) DEFAULT '',
	line_number smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);