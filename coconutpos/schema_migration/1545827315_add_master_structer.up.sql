CREATE TABLE trans_delete (
	roworder serial NOT NULL ,
	table_name character varying (150) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	create_datetime timestamp without time zone 
);


CREATE TABLE web_pages (
	id serial NOT NULL ,
	code character varying (255) DEFAULT '',
	name character varying (255) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone ,
	sort smallint DEFAULT 0 
);

CREATE TABLE invite_join (
	roworder serial NOT NULL ,
	email character varying (50) NOT NULL DEFAULT '',
	company_code character varying (100) NOT NULL DEFAULT '',
	inv_guid character varying (50) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE member (
	roworder serial NOT NULL ,
	code character varying (25) NOT NULL DEFAULT '',
	name character varying (255) NOT NULL DEFAULT '',
	address character varying (500) DEFAULT '',
	tel character varying (100) DEFAULT '',
	email character varying (100) DEFAULT '',
	line_id character varying (100) DEFAULT '',
	facebook character varying (100) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE employee (
	roworder serial NOT NULL ,
	email character varying (25) NOT NULL DEFAULT '',
	company_code character varying (100) NOT NULL DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE device_setting (
    roworder serial NOT NULL ,
    code character varying (100) NOT NULL DEFAULT '',
    name_1 character varying (255) NOT NULL DEFAULT '',
    device_type character varying (100) NOT NULL DEFAULT '',
    device_platform character varying (100) DEFAULT '',
    status integer NOT NULL DEFAULT 0 ,
    shop_code character varying (25) DEFAULT '',
    sys_guid uuid DEFAULT uuid_generate_v4() ,
    last_update timestamp without time zone 
);

CREATE TABLE category (
	roworder serial NOT NULL ,
	name_1 character varying (255) DEFAULT '',
	sort_order smallint DEFAULT 0 ,
	detail character varying (255) DEFAULT '',
	color character varying (100) DEFAULT '',
	img_guid character varying (50) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);