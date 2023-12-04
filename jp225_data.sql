-- MySQL Script generated by MySQL Workbench
-- Mon Dec  4 23:15:39 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema jp225_data
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema jp225_data
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jp225_data` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `jp225_data` ;

-- -----------------------------------------------------
-- Table `jp225_data`.`tblaccount`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblaccount` (
  `account_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_customer_id` INT UNSIGNED NOT NULL COMMENT 'Ma khach hang',
  `account_money` INT UNSIGNED NULL DEFAULT NULL COMMENT 'So tien nap vao',
  `account_actived_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay nap tien',
  `account_notes` TEXT NULL DEFAULT NULL,
  `account_current_money` INT UNSIGNED NULL DEFAULT NULL COMMENT 'So tien hien tai',
  `account_type` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Loai giao dich',
  PRIMARY KEY (`account_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tbladvertise`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tbladvertise` (
  `advertise_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `advertise_title` VARCHAR(300) CHARACTER SET 'utf8mb3' NOT NULL,
  `advertise_url` VARCHAR(200) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `advertise_notes` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `advertise_type` SMALLINT UNSIGNED NULL DEFAULT '0',
  `advertise_display` SMALLINT UNSIGNED NULL DEFAULT '0',
  `advertise_image` VARCHAR(200) CHARACTER SET 'utf8mb3' NOT NULL,
  PRIMARY KEY (`advertise_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 51;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblagent`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblagent` (
  `agent_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `agent_name` VARCHAR(200) NOT NULL COMMENT 'Ten dai ly',
  `agent_address` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Dia chi',
  `agent_phone` VARCHAR(45) NOT NULL COMMENT 'Dien thoai',
  `agent_email` VARCHAR(100) NOT NULL COMMENT 'Hop thu',
  `agent_website` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Website',
  `agent_map` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Ban do duong di',
  `agent_notes` TEXT NULL DEFAULT NULL COMMENT 'Ghi chu',
  `agent_created_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay tao (ngay tham gia)',
  `agent_last_modified` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay sua chua thong tin',
  `agent_manager_id` INT UNSIGNED NULL DEFAULT NULL COMMENT 'ID nguoi quan ly',
  `agent_manager_name` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Ten dang nhap nguoi quan ly',
  `agent_enable` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi hay khong?',
  `agent_delete` TINYINT(1) NULL DEFAULT NULL COMMENT 'Xac nhan xoa?',
  `agent_boss` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Nguoi quan ly dai ly',
  `agent_boss_mobile` VARCHAR(100) NULL DEFAULT NULL COMMENT 'So di dong nguoi quan ly',
  `agent_pass` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Mat khau',
  `agent_image` VARCHAR(100) NULL DEFAULT NULL,
  `agent_area_id` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Khu vuc',
  `agent_tax_code` VARCHAR(45) NULL DEFAULT NULL,
  `agent_city_id` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Tinh thanh',
  PRIMARY KEY (`agent_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 111
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblarticle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblarticle` (
  `article_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `article_title` VARCHAR(300) CHARACTER SET 'utf8mb3' NOT NULL,
  `article_summary` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_content` LONGTEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_created_date` VARCHAR(150) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_last_modified` VARCHAR(150) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_image` VARCHAR(200) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_category_id` SMALLINT UNSIGNED NOT NULL,
  `article_section_id` SMALLINT UNSIGNED NOT NULL,
  `article_visited` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `article_author_name` VARCHAR(100) CHARACTER SET 'utf8mb3' NOT NULL,
  `article_enable` TINYINT(1) NULL DEFAULT NULL,
  `article_url_link` VARCHAR(300) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_tag` VARCHAR(300) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_title_en` VARCHAR(300) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Tieu de tieng Anh',
  `article_summary_en` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Tom tat tieng Anh',
  `article_content_en` LONGTEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Noi dung tieng Anh',
  `article_tag_en` VARCHAR(300) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Tu khoa tim kiem tieng Anh',
  `article_fee` INT UNSIGNED NULL DEFAULT NULL,
  `article_isfee` TINYINT(1) NULL DEFAULT NULL,
  `article_delete` TINYINT(1) NULL DEFAULT '0',
  `article_deleted_date` VARCHAR(150) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_restored_date` VARCHAR(150) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_modified_author_name` VARCHAR(100) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `article_author_permission` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `article_source` VARCHAR(100) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Nguon tham khao',
  `article_language` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `article_focus` TINYINT(1) NULL DEFAULT NULL,
  `article_type` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `article_forhome` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 208;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblarticle_extends`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblarticle_extends` (
  `ae_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ae_text200_1` VARCHAR(200) NULL DEFAULT NULL,
  `ae_text200_2` VARCHAR(200) NULL DEFAULT NULL,
  `ae_text200_3` VARCHAR(200) NULL DEFAULT NULL,
  `ae_text200_4` VARCHAR(200) NULL DEFAULT NULL,
  `ae_text200_5` VARCHAR(200) NULL DEFAULT NULL,
  `ae_byte_1` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `ae_byte_2` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `ae_byte_3` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `ae_byte_4` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `ae_byte_5` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `ae_short_1` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `ae_short_2` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `ae_int_1` INT UNSIGNED NULL DEFAULT NULL,
  `ae_int_2` INT UNSIGNED NULL DEFAULT NULL,
  `ae_text_1` TEXT NULL DEFAULT NULL,
  `ae_text_2` TEXT NULL DEFAULT NULL,
  `ae_longtext` LONGTEXT NULL DEFAULT NULL,
  `ae_article_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`ae_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblcalendar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblcalendar` (
  `calendar_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `calendar_title` VARCHAR(300) NULL DEFAULT NULL COMMENT 'Tieu de',
  `calendar_created_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay tao lich',
  `calendar_firstdateofweek` VARCHAR(300) NULL DEFAULT NULL COMMENT 'Duong lich',
  `calendar_firstdateofweek_lunar` VARCHAR(300) NULL DEFAULT NULL COMMENT 'Am lich',
  `calendar_mon_1` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_mon_2` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_mon_3` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_tue_1` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_tue_2` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_tue_3` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_wed_1` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_wed_2` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_wed_3` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_thu_1` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_thu_2` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_thu_3` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_fri_1` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_fri_2` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_fri_3` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_sat_1` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_sat_2` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_sat_3` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_sun_1` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_sun_2` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_sun_3` VARCHAR(300) NULL DEFAULT NULL,
  `calendar_notes_mon` TEXT NULL DEFAULT NULL,
  `calendar_notes_tue` TEXT NULL DEFAULT NULL,
  `calendar_notes_wed` TEXT NULL DEFAULT NULL,
  `calendar_notes_thu` TEXT NULL DEFAULT NULL,
  `calendar_notes_fri` TEXT NULL DEFAULT NULL,
  `calendar_notes_sat` TEXT NULL DEFAULT NULL,
  `calendar_notes_sun` TEXT NULL DEFAULT NULL,
  `calendar_notes` TEXT NULL DEFAULT NULL,
  `calendar_priority` TINYINT(1) NULL DEFAULT NULL COMMENT 'Ngay uu tien',
  `calendar_user_name` VARCHAR(45) NULL DEFAULT NULL,
  `calendar_visited` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`calendar_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblcategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblcategory` (
  `category_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(200) NOT NULL,
  `category_section_id` SMALLINT UNSIGNED NOT NULL,
  `category_notes` TEXT NULL DEFAULT NULL,
  `category_created_date` VARCHAR(50) NULL DEFAULT NULL,
  `category_created_author_id` INT UNSIGNED NULL DEFAULT NULL,
  `category_last_modified` VARCHAR(50) NULL DEFAULT NULL,
  `category_manager_id` INT UNSIGNED NULL DEFAULT NULL,
  `category_enable` TINYINT(1) NULL DEFAULT NULL,
  `category_delete` TINYINT(1) NULL DEFAULT NULL,
  `category_image` VARCHAR(200) NULL DEFAULT NULL,
  `category_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'The loai tieng Anh',
  `category_language` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 51
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblcomment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblcomment` (
  `comment_id` INT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Ma binh luan',
  `comment_created_date` VARCHAR(45) NOT NULL COMMENT 'Ngay binh luan san pham',
  `comment_title` VARCHAR(500) NULL DEFAULT NULL COMMENT 'Tieu de',
  `comment_content` TEXT NULL DEFAULT NULL COMMENT 'Noi dung ',
  `comment_enabled` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi phia Browser',
  `comment_type_id` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Loai binh luan (bai viet, san pham)',
  `comment_user_phone` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Dien thoai nguoi binh luan',
  `comment_user_fullname` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ten day du nguoi binh luan',
  `comment_user_email` VARCHAR(45) NOT NULL COMMENT 'Hop thu',
  `comment_content_intro` TEXT NULL DEFAULT NULL COMMENT 'Noi dung binh luan duoc chinh sua de gioi thieu len browser',
  `comment_notes` TEXT NULL DEFAULT NULL COMMENT 'Cac ghi chu khac',
  `comment_for_name` VARCHAR(500) NULL DEFAULT NULL COMMENT 'Ten san pham duoc binh luan',
  `comment_for_id` VARCHAR(45) NULL DEFAULT NULL COMMENT 'ID cua San phan ve bai viet',
  PRIMARY KEY USING BTREE (`comment_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblcomputer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblcomputer` (
  `computer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `computer_product_code` VARCHAR(45) NOT NULL,
  `computer_manufacture` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_model` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_os` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_cpu` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_cpu_speed` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_cache` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_chipset` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_graphic_memory` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_card_interface` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_card_network` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_ram` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_max_ram` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_ram_category` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_bus` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_wifi` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_card_sound` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_sound_category` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_hdd` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_hdd_interface` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_fdd` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_monitor` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_monitor_interface` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_monitor_resolution` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_monitor_category` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_monitor_size` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `computer_power` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`computer_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblcustomer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblcustomer` (
  `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_fullname` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_address` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_phone` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_mobile` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_office` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_jobarea` VARCHAR(300) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_notes` TEXT CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_email` VARCHAR(200) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_identity_card` VARCHAR(100) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'CMND',
  `customer_username` VARCHAR(45) CHARACTER SET 'utf8mb3' NOT NULL,
  `customer_password` VARCHAR(45) CHARACTER SET 'utf8mb3' NOT NULL,
  `customer_type_id` SMALLINT UNSIGNED NULL DEFAULT '0',
  `customer_logined` INT UNSIGNED NULL DEFAULT NULL COMMENT 'So lan dang nhap',
  `customer_created_date` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Ngay tao tai khoan',
  `customer_modified_date` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL COMMENT 'Ngay sua chua',
  `customer_isactive` TINYINT(1) NULL DEFAULT NULL COMMENT 'Khoa hay khong',
  `customer_code` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_company` VARCHAR(200) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  `customer_product_id` INT UNSIGNED NULL DEFAULT NULL,
  `customer_articleextends_id` INT UNSIGNED NULL DEFAULT NULL,
  `customer_ip` VARCHAR(45) CHARACTER SET 'utf8mb3' NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblfeedback`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblfeedback` (
  `feedback_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `feedback_title` VARCHAR(200) NULL DEFAULT NULL,
  `feedback_content` TEXT NOT NULL,
  `feedback_fullname` VARCHAR(100) NOT NULL,
  `feedback_address` VARCHAR(200) NULL DEFAULT NULL,
  `feedback_email` VARCHAR(100) NOT NULL,
  `feedback_phone` VARCHAR(45) NULL DEFAULT NULL,
  `feedback_product_id` INT UNSIGNED NULL DEFAULT '0',
  `feedback_created_date` VARCHAR(50) NOT NULL,
  `feedback_view` TINYINT(1) NULL DEFAULT NULL,
  `feedback_company` VARCHAR(200) NULL DEFAULT NULL,
  `feedback_intro` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`feedback_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 87
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblinterior`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblinterior` (
  `interior_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `interior_product_code` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ma san pham',
  `interior_manufacture` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Hang san xuat',
  `interior_model` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Kieu dang',
  `interior_size` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Kich thuoc',
  `interior_stuff` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Nguyen lieu, chat lieu',
  `interior_origin` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Xuat xu',
  `interior_construct` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Cau tao',
  `interior_color` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Mau sac',
  PRIMARY KEY (`interior_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tbllabel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tbllabel` (
  `label_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `label_title` VARCHAR(200) NULL DEFAULT NULL,
  `label_infors` TEXT NULL DEFAULT NULL,
  `label_infors_en` TEXT NULL DEFAULT NULL,
  `label_notes` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`label_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tbllog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tbllog` (
  `log_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_name` TEXT NOT NULL,
  `log_user_permission` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `log_date` VARCHAR(45) NULL DEFAULT NULL,
  `log_user_name` VARCHAR(45) NULL DEFAULT NULL,
  `log_action` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `log_position` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4461
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblorder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblorder` (
  `order_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_article_id` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Bai viet duoc doc',
  `order_customer_id` VARCHAR(45) NOT NULL,
  `order_created_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay doc',
  PRIMARY KEY (`order_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblpattern`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblpattern` (
  `pattern_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pattern_title` VARCHAR(500) NOT NULL COMMENT 'Tieu de mau thiet ke',
  `pattern_summary` TEXT NULL DEFAULT NULL COMMENT 'Ban mo ta tom tat mau',
  `pattern_detail` LONGTEXT NULL DEFAULT NULL COMMENT 'Ban mo ta chi tiet mau',
  `pattern_image` VARCHAR(800) NULL DEFAULT NULL COMMENT 'Hinh anh chuan',
  `pattern_image1` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Hinh anh phu 1',
  `pattern_image2` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Hinh anh phu 2',
  `pattern_image3` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Hinh anh phu 3',
  `pattern_created_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay cap nhat mau',
  `pattern_last_modified` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay chinh sua mau',
  `pattern_author_name` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ten tac gia cap nhat mau',
  `pattern_author_name_comment` VARCHAR(500) NULL DEFAULT NULL COMMENT 'Ten tac gia Binh luan mau',
  `pattern_comment` TEXT NULL DEFAULT NULL COMMENT 'Noi dung binh luan',
  `pattern_star` VARCHAR(300) NULL DEFAULT NULL COMMENT 'Xep thu hang mau (1-5 sao)',
  `pattern_size` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Kich thuoc mau',
  `pattern_ps_id` SMALLINT UNSIGNED NOT NULL COMMENT 'He san pham cua mau',
  `pattern_pg_id` SMALLINT UNSIGNED NOT NULL COMMENT 'Nhom san pham cua mau',
  `pattern_pc_id` SMALLINT UNSIGNED NOT NULL COMMENT 'Loai san pham cua mau',
  `pattern_code` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ma cua mau',
  `pattern_user_view` TEXT NULL DEFAULT NULL COMMENT 'Nhung ai da xem mau',
  `pattern_visited` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `pattern_approved` TINYINT NULL DEFAULT NULL COMMENT 'Phe duyet',
  `pattern_approved_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay duyet',
  `pattern_approved_name` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Nguoi duyet',
  `pattern_user_permis` SMALLINT NOT NULL COMMENT 'Quyen nguoi tao',
  `pattern_is_new_comment` TINYINT(1) NULL DEFAULT '0' COMMENT 'Co binh luan moi',
  `pattern_new_comment_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay binh luan',
  PRIMARY KEY (`pattern_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 523
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblpc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblpc` (
  `pc_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pc_name` VARCHAR(200) NOT NULL,
  `pc_pg_id` INT UNSIGNED NOT NULL,
  `pc_ps_id` SMALLINT UNSIGNED NOT NULL,
  `pc_manager_id` INT UNSIGNED NULL DEFAULT NULL,
  `pc_notes` TEXT NULL DEFAULT NULL,
  `pc_delete` TINYINT(1) NULL DEFAULT NULL,
  `pc_deleted_date` VARCHAR(45) NULL DEFAULT NULL,
  `pc_deleted_author` VARCHAR(50) NULL DEFAULT NULL,
  `pc_modified_date` VARCHAR(45) NULL DEFAULT NULL,
  `pc_created_date` VARCHAR(45) NULL DEFAULT NULL,
  `pc_image` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Anh minh hoa cho the loai',
  `pc_enable` TINYINT UNSIGNED NULL DEFAULT NULL COMMENT 'Hien thi hay khong',
  `pc_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Ten The loai san pham tieng Anh',
  `pc_created_author_id` INT UNSIGNED NULL DEFAULT '0',
  `pc_language` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`pc_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblpg`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblpg` (
  `pg_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pg_name` VARCHAR(200) NOT NULL,
  `pg_ps_id` SMALLINT UNSIGNED NOT NULL,
  `pg_manager_id` INT UNSIGNED NULL DEFAULT NULL,
  `pg_notes` TEXT NULL DEFAULT NULL,
  `pg_delete` TINYINT(1) NULL DEFAULT NULL,
  `pg_deleted_date` VARCHAR(45) NULL DEFAULT NULL,
  `pg_deleted_author` VARCHAR(50) NULL DEFAULT NULL,
  `pg_modified_date` VARCHAR(45) NULL DEFAULT NULL,
  `pg_created_date` VARCHAR(45) NULL DEFAULT NULL,
  `pg_enable` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi hay khong',
  `pg_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Ten Nhom san pham tieng Anh',
  `pg_created_author_id` INT UNSIGNED NULL DEFAULT '0',
  `pg_language` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`pg_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblproduct`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblproduct` (
  `product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(300) NOT NULL COMMENT 'Ten san pham',
  `product_image` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Anh san pham',
  `product_price` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Gia san pham',
  `product_discount_price` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Gia chiet khau',
  `product_enable` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi san pham',
  `product_delete` TINYINT(1) NULL DEFAULT NULL COMMENT 'Danh dau xoa san pham',
  `product_visited` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Luot xem san pham',
  `product_total` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'So luong trong kho',
  `product_manager_id` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Nguoi cap nhat',
  `product_intro` TEXT NULL DEFAULT NULL COMMENT 'Gioi thieu chung',
  `product_notes` TEXT NULL DEFAULT NULL COMMENT 'Ghi chu',
  `product_code` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ma quan ly cua san pham',
  `product_created_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay cap nhat',
  `product_modified_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay sua',
  `product_pc_id` SMALLINT UNSIGNED NOT NULL COMMENT 'Loai san pham',
  `product_pg_id` SMALLINT UNSIGNED NOT NULL COMMENT 'Nhom san pham',
  `product_ps_id` SMALLINT UNSIGNED NOT NULL COMMENT 'He san pham',
  `product_is_detail` TINYINT(1) NULL DEFAULT NULL COMMENT 'Da duoc cap nhat chi tiet chua?',
  `product_deleted_date` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay xoa',
  `product_deleted_author` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Nguoi xoa',
  `product_promotion_price` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Gia khuyen mai',
  `product_sold` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'So luong da ban',
  `product_best_seller` TINYINT(1) NULL DEFAULT NULL COMMENT 'Ban chay?',
  `product_promotion` TINYINT(1) NULL DEFAULT NULL COMMENT 'Khuyen mai',
  `product_price_calc_description` SMALLINT UNSIGNED NULL DEFAULT NULL COMMENT 'Cach tinh gia',
  `product_size` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Kich thuoc',
  `product_name_en` VARCHAR(300) NULL DEFAULT NULL COMMENT 'Ten san pham tieng Anh',
  `product_customer_id` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Ma khach hang',
  `product_perspective_id` TINYINT UNSIGNED NULL DEFAULT NULL COMMENT 'Phoi canh: noi that, ngoai that',
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 1587
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblproductcategory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblproductcategory` (
  `pc_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pc_name` VARCHAR(200) NOT NULL,
  `pc_pg_id` INT UNSIGNED NOT NULL,
  `pc_ps_id` SMALLINT UNSIGNED NOT NULL,
  `pc_manager_id` INT UNSIGNED NULL DEFAULT NULL,
  `pc_notes` TEXT NULL DEFAULT NULL,
  `pc_delete` TINYINT(1) NULL DEFAULT NULL,
  `pc_deleted_date` VARCHAR(45) NULL DEFAULT NULL,
  `pc_deleted_author` VARCHAR(50) NULL DEFAULT NULL,
  `pc_modified_date` VARCHAR(45) NULL DEFAULT NULL,
  `pc_created_date` VARCHAR(45) NULL DEFAULT NULL,
  `pc_image` VARCHAR(100) NULL DEFAULT NULL COMMENT 'Anh minh hoa cho the loai',
  `pc_enable` TINYINT UNSIGNED NULL DEFAULT NULL COMMENT 'Hien thi hay khong',
  `pc_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Ten The loai san pham tieng Anh',
  `pc_created_author_id` INT UNSIGNED NULL DEFAULT '0',
  PRIMARY KEY (`pc_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblproductgroup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblproductgroup` (
  `pg_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pg_name` VARCHAR(200) NOT NULL,
  `pg_ps_id` SMALLINT UNSIGNED NOT NULL,
  `pg_manager_id` INT UNSIGNED NULL DEFAULT NULL,
  `pg_notes` TEXT NULL DEFAULT NULL,
  `pg_delete` TINYINT(1) NULL DEFAULT NULL,
  `pg_deleted_date` VARCHAR(45) NULL DEFAULT NULL,
  `pg_deleted_author` VARCHAR(50) NULL DEFAULT NULL,
  `pg_modified_date` VARCHAR(45) NULL DEFAULT NULL,
  `pg_created_date` VARCHAR(45) NULL DEFAULT NULL,
  `pg_enable` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi hay khong',
  `pg_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Ten Nhom san pham tieng Anh',
  `pg_created_author_id` INT UNSIGNED NULL DEFAULT '0',
  PRIMARY KEY (`pg_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblproductsystem`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblproductsystem` (
  `ps_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ps_name` VARCHAR(200) NOT NULL,
  `ps_manager_id` INT UNSIGNED NULL DEFAULT NULL,
  `ps_notes` TEXT NULL DEFAULT NULL,
  `ps_delete` TINYINT(1) NULL DEFAULT NULL,
  `ps_created_date` VARCHAR(45) NULL DEFAULT NULL,
  `ps_deleted_date` VARCHAR(45) NULL DEFAULT NULL,
  `ps_modified_date` VARCHAR(45) NULL DEFAULT NULL,
  `ps_deleted_author` VARCHAR(50) NULL DEFAULT NULL,
  `ps_table` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Chi tiet cac san pham trong he duoc luu vao bang nay',
  `ps_enable` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi hay khong',
  `ps_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Ten He san pham tieng Anh',
  `ps_created_author_id` INT UNSIGNED NULL DEFAULT '0',
  PRIMARY KEY (`ps_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblps`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblps` (
  `ps_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ps_name` VARCHAR(200) NOT NULL,
  `ps_manager_id` INT UNSIGNED NULL DEFAULT NULL,
  `ps_notes` TEXT NULL DEFAULT NULL,
  `ps_delete` TINYINT(1) NULL DEFAULT NULL,
  `ps_created_date` VARCHAR(45) NULL DEFAULT NULL,
  `ps_deleted_date` VARCHAR(45) NULL DEFAULT NULL,
  `ps_modified_date` VARCHAR(45) NULL DEFAULT NULL,
  `ps_deleted_author` VARCHAR(50) NULL DEFAULT NULL,
  `ps_table` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Chi tiet cac san pham trong he duoc luu vao bang nay',
  `ps_enable` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi hay khong',
  `ps_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Ten He san pham tieng Anh',
  `ps_created_author_id` INT UNSIGNED NULL DEFAULT '0',
  `ps_language` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`ps_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblsection`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblsection` (
  `section_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Dinh danh',
  `section_name` VARCHAR(200) NOT NULL COMMENT 'Ten chuyen muc',
  `section_notes` TEXT NULL DEFAULT NULL COMMENT 'Ghi chu tong hop',
  `section_created_date` VARCHAR(50) NULL DEFAULT NULL COMMENT 'Ngay tao Chuyen muc - (Cap nhat 24/05/2011)',
  `section_manager_id` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Nguoi quan ly',
  `section_enable` TINYINT(1) NULL DEFAULT NULL COMMENT 'Hien thi tren Site hay khong?',
  `section_delete` TINYINT(1) NULL DEFAULT NULL COMMENT 'Danh dau xoa',
  `section_last_modified` VARCHAR(50) NULL DEFAULT NULL COMMENT 'Ngay sua chua Chuyen muc',
  `section_created_author_id` INT UNSIGNED NULL DEFAULT NULL COMMENT 'Nguoi tao ra Chuyen muc',
  `section_name_en` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Chuyen muc tieng Anh',
  `section_language` SMALLINT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`section_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 18
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblstatistic`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblstatistic` (
  `statistic_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `statistic_current_date` VARCHAR(45) NOT NULL COMMENT 'Ngay hien tai',
  `statistic_visited` INT UNSIGNED NULL DEFAULT NULL COMMENT 'So luot truy cap',
  PRIMARY KEY (`statistic_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2676
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jp225_data`.`tbluser`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tbluser` (
  `user_id` INT UNSIGNED NOT NULL,
  `user_name` VARCHAR(100) NOT NULL,
  `user_pass` VARCHAR(100) NOT NULL,
  `user_fullname` VARCHAR(45) NULL DEFAULT NULL,
  `user_birthday` VARCHAR(45) NULL DEFAULT NULL,
  `user_mobilephone` VARCHAR(45) NULL DEFAULT NULL,
  `user_homephone` VARCHAR(45) NULL DEFAULT NULL,
  `user_officephone` VARCHAR(45) NULL DEFAULT NULL,
  `user_email` VARCHAR(100) NOT NULL,
  `user_address` VARCHAR(500) NULL DEFAULT NULL,
  `user_jobarea` VARCHAR(500) NULL DEFAULT NULL,
  `user_job` VARCHAR(500) NULL DEFAULT NULL,
  `user_position` VARCHAR(500) NULL DEFAULT NULL,
  `user_applyyear` VARCHAR(200) NULL DEFAULT NULL COMMENT 'Nam lam viec, hoac la so nam lam viec',
  `user_permission` SMALLINT UNSIGNED NULL DEFAULT NULL,
  `user_notes` TEXT NULL DEFAULT NULL,
  `user_roles` VARCHAR(200) NULL DEFAULT NULL,
  `user_logined` SMALLINT UNSIGNED NULL DEFAULT '0',
  `user_created_date` VARCHAR(45) NOT NULL COMMENT 'Ngay tao',
  `user_last_modified` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay sua',
  `user_last_logined` VARCHAR(45) NULL DEFAULT NULL COMMENT 'Ngay dang nhap',
  `user_parent_id` INT NOT NULL COMMENT 'Nguoi tao ra tai khoan',
  `user_actions` TINYINT UNSIGNED NULL DEFAULT '0' COMMENT 'Duoc thuc hien nhung cong viec gi (add, edit, del, comment)',
  `user_trash_id` INT(10) UNSIGNED ZEROFILL NULL DEFAULT '0000000000',
  PRIMARY KEY (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `jp225_data`.`tblvalue`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jp225_data`.`tblvalue` (
  `value_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `value_1` VARCHAR(200) NULL DEFAULT NULL,
  `value_2` VARCHAR(200) NULL DEFAULT NULL,
  `value_3` VARCHAR(200) NULL DEFAULT NULL,
  `value_4` VARCHAR(200) NULL DEFAULT NULL,
  `value_5` VARCHAR(200) NULL DEFAULT NULL,
  `value_6` VARCHAR(200) NULL DEFAULT NULL,
  `value_7` VARCHAR(200) NULL DEFAULT NULL,
  `value_8` VARCHAR(200) NULL DEFAULT NULL,
  `value_9` VARCHAR(200) NULL DEFAULT NULL,
  `value_10` VARCHAR(200) NULL DEFAULT NULL,
  `value_11` VARCHAR(500) NULL DEFAULT NULL,
  `value_12` VARCHAR(500) NULL DEFAULT NULL,
  `value_13` VARCHAR(500) NULL DEFAULT NULL,
  `value_14` VARCHAR(500) NULL DEFAULT NULL,
  `value_15` VARCHAR(500) NULL DEFAULT NULL,
  `value_16` VARCHAR(500) NULL DEFAULT NULL,
  `value_17` VARCHAR(500) NULL DEFAULT NULL,
  `value_18` VARCHAR(500) NULL DEFAULT NULL,
  `value_19` VARCHAR(500) NULL DEFAULT NULL,
  `value_20` VARCHAR(500) NULL DEFAULT NULL,
  `value_label_id` SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (`value_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;