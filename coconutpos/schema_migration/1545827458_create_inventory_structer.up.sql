CREATE TABLE inventory (
    roworder serial NOT NULL ,
    code character varying (30) NOT NULL DEFAULT '',
    name character varying (255) NOT NULL DEFAULT '',
    unit_standard character varying (30) NOT NULL DEFAULT '',
    material_type integer NOT NULL DEFAULT 0 ,
    fix_branch smallint DEFAULT 0 ,
    has_sub_item smallint DEFAULT 0 ,
    short_name character varying (100) DEFAULT '',
    sys_guid uuid DEFAULT uuid_generate_v4(),
    last_update timestamp without time zone 
);

CREATE TABLE inventory_barcode (
	roworder serial NOT NULL ,
	ic_code character varying (30) NOT NULL DEFAULT '',
	unit_code character varying (30) NOT NULL DEFAULT '',
	barcode character varying (25) NOT NULL DEFAULT '',
	line_number smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE inventory_category (
	roworder serial NOT NULL ,
	ic_code character varying (255) DEFAULT '',
	category_code character varying (255) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE inventory_option (
	roworder serial NOT NULL ,
	ic_code character varying (30) NOT NULL DEFAULT '',
	option_name character varying (255) NOT NULL DEFAULT '',
	line_number smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4(),
	last_update timestamp without time zone 
);

CREATE TABLE inventory_price (
	roworder serial NOT NULL ,
	ic_code character varying (30) DEFAULT '',
	unit_code character varying (30) DEFAULT '',
	short_code character varying (30) DEFAULT '',
	price numeric DEFAULT 0.0 ,
	line_number smallint DEFAULT 0 ,
	img_guid character varying (50) DEFAULT '',
	main_unit smallint DEFAULT 0 ,
	purchase_unit smallint DEFAULT 0 ,
	sale_unit smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE inventory_sale_time (
	roworder serial NOT NULL ,
	shop_code character varying (25) NOT NULL DEFAULT '',
	ic_code character varying (25) NOT NULL DEFAULT '',
	day_key character varying (3) NOT NULL DEFAULT '',
	start_time character varying (5) DEFAULT '',
	end_time character varying (5) DEFAULT '',
	line_number smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE inventory_shop (
	roworder serial NOT NULL ,
	ic_code character varying (30) NOT NULL DEFAULT '',
	shop_code character varying (25) NOT NULL DEFAULT '',
	unit_code character varying (30) DEFAULT '',
	special_price character varying (255) DEFAULT '',
	total_price numeric DEFAULT 0.0 ,
	line_number smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);
CREATE TABLE inventory_status (
	roworder serial NOT NULL ,
	ic_code character varying (30) NOT NULL DEFAULT '',
	is_sale smallint DEFAULT 0 ,
	is_not_sale smallint DEFAULT 0 ,
	is_hold_sale smallint DEFAULT 0 ,
	line_number smallint DEFAULT 0 ,
	shop_code character varying (25) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE inventory_sub (
	roworder serial NOT NULL ,
	ic_code character varying (30) NOT NULL DEFAULT '',
	unit_code character varying (30) DEFAULT '',
	price numeric DEFAULT 0.0 ,
	qty numeric DEFAULT 0.0 ,
	line_number smallint DEFAULT 0 ,
	ic_main character varying (30) NOT NULL DEFAULT '',
	level smallint DEFAULT 0 ,
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);

CREATE TABLE images (
	roworder serial NOT NULL ,
	ic_code character varying (255) DEFAULT '',
	unit_code character varying (50) DEFAULT '',
	image_file bytea ,
	image_order smallint DEFAULT 0 ,
	img_guid character varying (50) DEFAULT '',
	flag_commit smallint DEFAULT 0 ,
	image_file_m bytea ,
	image_file_s bytea ,
	cropper character varying (255) DEFAULT '',
	canvas character varying (255) DEFAULT '',
	sys_guid uuid DEFAULT uuid_generate_v4() ,
	last_update timestamp without time zone 
);