prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_default_workspace_id=>8990639871888038
);
end;
/
prompt  WORKSPACE 8990639871888038
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   05:58 Sunday June 2, 2019
--   Exported By:     SYSDBA
--   Export Type:     Workspace Export
--   Version:         5.1.4.00.08
--   Instance ID:     220142175577279
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_050100
 
begin
    wwv_flow_api.set_security_group_id(p_security_group_id=>8990639871888038);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace ECLASS...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 8990874993888086
 ,p_provisioning_company_id => 8990639871888038
 ,p_short_name => 'ECLASS'
 ,p_display_name => 'ECLASS'
 ,p_first_schema_provisioned => 'ECLASS'
 ,p_company_schemas => 'ECLASS'
 ,p_ws_schema => 'ECLASS'
 ,p_expire_fnd_user_accounts => 'N'
 ,p_fnd_user_max_login_failures => 15
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_websheet_dev_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'ECLASS'
 ,p_path_prefix => 'ECLASS'
 ,p_files_version => 1
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '8990538654888038',
  p_user_name                    => 'SYSDBA',
  p_first_name                   => 'NikosMin',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'rockerac_dc@yahoo.gr',
  p_web_password                 => 'D624768026754BD54F192B1631387C286A2C34E2',
  p_web_password_format          => '5;2;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'ECLASS',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('201904290032','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_websheet_dev_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
----------------
--App Builder Preferences
--
----------------
--Click Count Logs
--
----------------
--csv data loading
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_flow_api.create_password_history (
    p_id => 11250122865951694,
    p_user_id => 8990538654888038,
    p_password => 'D624768026754BD54F192B1631387C286A2C34E2');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 10670152661499349,
    p_user_id => 8990538654888038,
    p_password => 'D624768026754BD54F192B1631387C286A2C34E2');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 11140142168006745,
    p_user_id => 8990538654888038,
    p_password => 'AB4879A390F9D88BA52B24E69ADB2E16D0AE531A');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 8990939896888092,
    p_user_id => 8990538654888038,
    p_password => 'EECA7559CE9F740A4F3CBC2ECE3DF4C6C66B3A59');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 9009578788911398,
    p_user_id => 8990538654888038,
    p_password => 'D624768026754BD54F192B1631387C286A2C34E2');
end;
/
begin
  wwv_flow_api.create_password_history (
    p_id => 9770543771562907,
    p_user_id => 8990538654888038,
    p_password => 'AB4879A390F9D88BA52B24E69ADB2E16D0AE531A');
end;
/
----------------
--preferences
--
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9300156624494396,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P12_W9295384945494097',
    p_attribute_value => '9299607301494395____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9313990588569365,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P14_W9309157669568918',
    p_attribute_value => '9313460986569364____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9341339904451430,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P16_W9336186696451065',
    p_attribute_value => '9340863226451429____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9370478000460999,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P18_W9357422910460130',
    p_attribute_value => '9369983179460998____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9381358463476321,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P20_W9377707800476029',
    p_attribute_value => '9380813843476320____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9395492555485674,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P22_W9390210751485210',
    p_attribute_value => '9394991526485673____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9405518302503114,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P24_W9402311901502682',
    p_attribute_value => '9405084268503114____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9418565332531434,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P26_W9414979040531088',
    p_attribute_value => '9418051974531434____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9428630918545752,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P28_W9425440162545460',
    p_attribute_value => '9428153250545751____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10252923702465617,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P31_W10022117134595120',
    p_attribute_value => '10252404265465616____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9446794902557919,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P31_W9439528474557658',
    p_attribute_value => '9446272115557919____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9151201433295134,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P3_W9148365961294511',
    p_attribute_value => '9150760672295133____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10049009560719960,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P59_W10041687187691534',
    p_attribute_value => '10046750918691912____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9216806636980667,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P5_W18350281805274304',
    p_attribute_value => '18352676516274926____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10117424790705655,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P67_W10112617767705234',
    p_attribute_value => '10116905101705654_N___');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9265535979840613,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P6_W8936085472726146',
    p_attribute_value => '9265027259840613____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9257616581797604,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P6_W9245277730797060',
    p_attribute_value => '9257174413797603____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9519428143744938,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P6_W9260933982813527',
    p_attribute_value => '9509918568564055____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10170845400532514,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P70_W10158017033532169',
    p_attribute_value => '10170302445532513____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10220406825126717,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P76_W10207683824125487',
    p_attribute_value => '10219971913126716____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11274286955423371,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P76_W11112875419090645',
    p_attribute_value => '11273702863423371____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9286827466196464,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P9_W9282471078196008',
    p_attribute_value => '9286342137196463____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9801069905680510,
    p_user_id => 'MINAID',
    p_preference_name => 'FSP_IR_104_P9_W9796215338679263',
    p_attribute_value => '9800521902680509____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9818535521763806,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P12_W9812930594763070',
    p_attribute_value => '9818005530763805____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9849737685200574,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P14_W9836921530199473',
    p_attribute_value => '9849250621200573____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9863665690296750,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P24_W9859233226296398',
    p_attribute_value => '9863138355296749____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9885096425624728,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P30_W9879849872624404',
    p_attribute_value => '9884590913624727____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10370297318352355,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P31_W10022117134595120',
    p_attribute_value => '10252404265465616____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10370076742352355,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P31_W9439528474557658',
    p_attribute_value => '9446272115557919____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9151462754297187,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P3_W9148365961294511',
    p_attribute_value => '9150760672295133____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10369497504327121,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P42_W19795445583880789',
    p_attribute_value => '19802189224881050____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10369600474327122,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P42_W20384002112920130',
    p_attribute_value => '20614289243790626____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9904613334669783,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P42_W9897351484669065',
    p_attribute_value => '9904187109669782____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9229798290694324,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P5_W18350281805274304',
    p_attribute_value => '18352676516274926____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10125256446568979,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P67_W10112617767705234',
    p_attribute_value => '10116905101705654____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9803578773743844,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P6_W9245277730797060',
    p_attribute_value => '9257174413797603____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10341771332501354,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P76_W10207683824125487',
    p_attribute_value => '10219971913126716____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11283848067685742,
    p_user_id => 'SECRETARIAT',
    p_preference_name => 'FSP_IR_104_P76_W11112875419090645',
    p_attribute_value => '11273702863423371____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9519932599753695,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P14_W9309157669568918',
    p_attribute_value => '9313460986569364____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10731418237019396,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P31_W10022117134595120',
    p_attribute_value => '10252404265465616____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10731274042019395,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P31_W9439528474557658',
    p_attribute_value => '9446272115557919____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9502322730489750,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P33_W9497107727488992',
    p_attribute_value => '9501821619489749____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9533283857086554,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P33_W9504533742515511',
    p_attribute_value => '9532757323086554____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9647247269119199,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P39_W18768897517286222',
    p_attribute_value => '18771292228286844____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9503204265495276,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P3_W9148365961294511',
    p_attribute_value => '9150760672295133____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10698381566441335,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P41_W19831806780735453',
    p_attribute_value => '19834201491736075____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9918199176816394,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P44_W9913710720815639',
    p_attribute_value => '9917660254816394____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10729360779984082,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P46_W41048764291745257',
    p_attribute_value => '41055507932745518____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10729568835984083,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P46_W41643228661787925',
    p_attribute_value => '41873515792658421____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9936458950904651,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P46_W9929211494904013',
    p_attribute_value => '9935952595904650____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10828475494325646,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P48_W21613858862995487',
    p_attribute_value => '21647887582621618____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9951214395965518,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P48_W9946013837965111',
    p_attribute_value => '9950728137965517____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9981562760163380,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P50_W9968773975162868',
    p_attribute_value => '9981062028163380____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10005159983264781,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P53_W9999812531261712',
    p_attribute_value => '10004631153264779____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10019936270555095,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P57_W10014235980548069',
    p_attribute_value => '10019436002555094____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10758715009363852,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P57_W10329392440982433',
    p_attribute_value => '10758284932363851____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10703597290544732,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P5_W18350281805274304',
    p_attribute_value => '18352676516274926____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10121296405800437,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P67_W10112617767705234',
    p_attribute_value => '10116905101705654____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10032007999625093,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P6_W10020670172595105',
    p_attribute_value => '10031555534625093____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9503491710496082,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P6_W9245277730797060',
    p_attribute_value => '9257174413797603____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9510419514564056,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P6_W9260933982813527',
    p_attribute_value => '9509918568564055____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9599108796771407,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P6_W9507166312515537',
    p_attribute_value => '9598682790771407____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10027606280608695,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P6_W9725681595568125',
    p_attribute_value => '10027192992608695____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10730887999012848,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P74_W30332610571766161',
    p_attribute_value => '30339354212766422____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10731040808012849,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P74_W30921167100805502',
    p_attribute_value => '31151454231675998____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10345583994989835,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P76_W10207683824125487',
    p_attribute_value => '10219971913126716____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10712576642901960,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P80_W19870422423738070',
    p_attribute_value => '19882319106738613____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10713127449901963,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P80_W19886078675754537',
    p_attribute_value => '20135063261505065____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10712772387901961,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P80_W20350826288509135',
    p_attribute_value => '20652337685549705____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10712951400901962,
    p_user_id => 'STUDENT',
    p_preference_name => 'FSP_IR_104_P80_W20645814865536115',
    p_attribute_value => '20656700227566103____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9325863852435059,
    p_user_id => 'SYSDBA',
    p_preference_name => 'APEX_IG_660073452414686901_CURRENT_REPORT',
    p_attribute_value => '660079397159689022:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9131754805523778,
    p_user_id => 'SYSDBA',
    p_preference_name => 'APEX_IG_712080000591813402_CURRENT_REPORT',
    p_attribute_value => '712386498335634625:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10181208704614552,
    p_user_id => 'SYSDBA',
    p_preference_name => 'F4000_1157687726908338238_SPLITTER_STATE',
    p_attribute_value => '200:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10118524137723673,
    p_user_id => 'SYSDBA',
    p_preference_name => 'F4000_203904827661009901_SPLITTER_STATE',
    p_attribute_value => '309:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10181116220614551,
    p_user_id => 'SYSDBA',
    p_preference_name => 'F4000_203906404237009921_SPLITTER_STATE',
    p_attribute_value => '290:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9315902028721167,
    p_user_id => 'SYSDBA',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '371:false');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9064846816924690,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '104');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10355748416318756,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4000_P194_R224505023496694888_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10355842108321658,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4000_P195_R225787614827384691_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11301122527086947,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4000_P267_R22486830752876187_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9010239466915432,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4000_P3002_R381690145721203187_SORT',
    p_attribute_value => 'fsp_sort_5_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9785002637542865,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4000_P34_R77549119545304597_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11151408746935300,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4000_P796_R185991323167292111_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11151563694948760,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4000_P797_R186034418786574670_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9092497609934342,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4500_P1220_R11177418830226625_SORT',
    p_attribute_value => 'fsp_sort_8');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9096395902934370,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4500_P1225_R164053306541529880_SORT',
    p_attribute_value => 'fsp_sort_1_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10706049080645514,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4500_P2102_R5737432600960966_SORT',
    p_attribute_value => 'fsp_sort_2_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10706121133647194,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP4500_P2155_R15607221124933219_SORT',
    p_attribute_value => 'fsp_sort_3_desc');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9165598471307200,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_105_P18_W2561650394670572682',
    p_attribute_value => '2561652288475572687____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9165284400305952,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_105_P4_W2484317997553772353',
    p_attribute_value => '2484318681060772360____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9010075264913690,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9064731743924679,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11300822977086730,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P260_W40585608941890825',
    p_attribute_value => '40587517034894377____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11301081702086944,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P267_W925260893554540223',
    p_attribute_value => '941041546743949140____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9802639771692492,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P287_W47869516939800889',
    p_attribute_value => '47870618297805517____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11300667662081595,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4003_W632908938554265910',
    p_attribute_value => '632910390117265918____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9228219354563112,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4050_W10642116325440827',
    p_attribute_value => '10643624462441172____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9227869026562966,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P405_W3852329031687921',
    p_attribute_value => '3853503855690337____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9228498376567193,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4070_W47949429235486335',
    p_attribute_value => '47951124794493113____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10275933608790750,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P40_W48117227188266087',
    p_attribute_value => '48118623144274016____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11141200624686715,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4100_W3727618522871356',
    p_attribute_value => '3728530690872449____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11098694377690148,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4101_W47836204953827708',
    p_attribute_value => '47837809399835130____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9128468877501998,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4110_W1548412223182178',
    p_attribute_value => '1550029190194632____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11298500151985325,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4207_W47814307723191364',
    p_attribute_value => '47815210532192150____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10860412239792259,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4400_W27796519609844319',
    p_attribute_value => '27798220762844327____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11299870358031063,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4445_W14886206368621919',
    p_attribute_value => '14887631485621929____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11300453401081203,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P4910_W3738700462051133',
    p_attribute_value => '3741124531126093____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9802419098692352,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P546_W30205316146531602',
    p_attribute_value => '30206031208532453____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9116745095937100,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4000_P801_W47918412797645641',
    p_attribute_value => '47921608032702994____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9068921290931036,
    p_user_id => 'SYSDBA',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9143973961055169,
    p_user_id => 'SYSDBA',
    p_preference_name => 'PD_PE_CODE_EDITOR_DLG_W',
    p_attribute_value => '1576');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10181412234620281,
    p_user_id => 'SYSDBA',
    p_preference_name => 'PD_TAB_LAYOUT_2',
    p_attribute_value => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10181581652620282,
    p_user_id => 'SYSDBA',
    p_preference_name => 'PD_TAB_LAYOUT_3',
    p_attribute_value => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10181396047619945,
    p_user_id => 'SYSDBA',
    p_preference_name => 'PD_TWO_COLUMN_MODE',
    p_attribute_value => 'N');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9096270053934363,
    p_user_id => 'SYSDBA',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9064692751924673,
    p_user_id => 'SYSDBA',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9784941833542861,
    p_user_id => 'SYSDBA',
    p_preference_name => 'PERSISTENT_ITEM_P34_ROWS',
    p_attribute_value => '');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9146768159294503,
    p_user_id => 'SYSDBA',
    p_preference_name => 'WIZARD_SQL_SOURCE_TYPE',
    p_attribute_value => 'QUERY');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10414021487515031,
    p_user_id => 'TEACHER',
    p_preference_name => 'APEX_IG_10398791349514559_CURRENT_REPORT',
    p_attribute_value => '10399685436514563:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10414119988515034,
    p_user_id => 'TEACHER',
    p_preference_name => 'APEX_IG_10406536882514569_CURRENT_REPORT',
    p_attribute_value => '10407403737514569:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10430431895708850,
    p_user_id => 'TEACHER',
    p_preference_name => 'APEX_IG_10415752452708554_CURRENT_REPORT',
    p_attribute_value => '10416644619708554:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10430594748708851,
    p_user_id => 'TEACHER',
    p_preference_name => 'APEX_IG_10422922811708557_CURRENT_REPORT',
    p_attribute_value => '10423851087708557:GRID');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9168680167618396,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P3_W9148365961294511',
    p_attribute_value => '9150760672295133____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10558822886930790,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P42_W19795445583880789',
    p_attribute_value => '19802189224881050____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10559059164930791,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P42_W20384002112920130',
    p_attribute_value => '20614289243790626____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10082615298030706,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P50_W9968773975162868',
    p_attribute_value => '9981062028163380____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 11296508290813502,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P53_W9999812531261712',
    p_attribute_value => '10004631153264779____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10047279403691913,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P59_W10041687187691534',
    p_attribute_value => '10046750918691912____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10454507524956046,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P59_W10450436717955755',
    p_attribute_value => '10454061928956045____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10470316871968350,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P60_W10464607681965010',
    p_attribute_value => '10469858840968349____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10063910792958730,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P61_W10058780763958350',
    p_attribute_value => '10063473821958729____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10824032795297145,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P61_W10789546122671014',
    p_attribute_value => '10823574842297145____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10081499335020305,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P63_W10075583787019798',
    p_attribute_value => '10080957830020305____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10392700501622117,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P67_W10112617767705234',
    p_attribute_value => '10116905101705654____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10048260189717216,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P6_W10020670172595105',
    p_attribute_value => '10031555534625093____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10047894972717214,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P6_W9245277730797060',
    p_attribute_value => '9257174413797603____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10048488156717217,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P6_W9260933982813527',
    p_attribute_value => '9509918568564055____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10048658668717217,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P6_W9507166312515537',
    p_attribute_value => '9598682790771407____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10048094466717216,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P6_W9725681595568125',
    p_attribute_value => '10027192992608695____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10485833470043834,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P70_W10479815550036049',
    p_attribute_value => '10485308687043832____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10506731853127569,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P72_W10500345769126592',
    p_attribute_value => '10506273343127568____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10558494222892632,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P74_W30332610571766161',
    p_attribute_value => '30339354212766422____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10558650044892633,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P74_W30921167100805502',
    p_attribute_value => '31151454231675998____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10393756008643958,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P76_W10207683824125487',
    p_attribute_value => '10219971913126716____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10648449696941540,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P80_W19870422423738070',
    p_attribute_value => '19882319106738613____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10649031890941543,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P80_W19886078675754537',
    p_attribute_value => '20135063261505065____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10649220029941544,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P80_W20132311005456547',
    p_attribute_value => '20223827483712417____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10648627872941542,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P80_W20350826288509135',
    p_attribute_value => '20652337685549705____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10648824354941542,
    p_user_id => 'TEACHER',
    p_preference_name => 'FSP_IR_104_P80_W20645814865536115',
    p_attribute_value => '20656700227566103____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9782249860425674,
    p_user_id => 'TESTAKIS',
    p_preference_name => 'FSP_IR_104_P3_W9148365961294511',
    p_attribute_value => '9150760672295133____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10710862535921994,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P33_W9497107727488992',
    p_attribute_value => '9501821619489749____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10711074860921996,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P33_W9504533742515511',
    p_attribute_value => '9532757323086554____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10708718078824518,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P3_W9148365961294511',
    p_attribute_value => '9150760672295133____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10709144474860087,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P41_W19831806780735453',
    p_attribute_value => '19834201491736075____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10710657136921510,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P44_W9913710720815639',
    p_attribute_value => '9917660254816394____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10709350384866609,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P5_W18350281805274304',
    p_attribute_value => '18352676516274926____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10708110756823476,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P6_W10020670172595105',
    p_attribute_value => '10031555534625093____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10707799563823475,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P6_W9245277730797060',
    p_attribute_value => '9257174413797603____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10708319031823477,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P6_W9260933982813527',
    p_attribute_value => '9509918568564055____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10708579737823477,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P6_W9507166312515537',
    p_attribute_value => '9598682790771407____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 10707929500823476,
    p_user_id => 'TESTQUIZ',
    p_preference_name => 'FSP_IR_104_P6_W9725681595568125',
    p_attribute_value => '10027192992608695____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9780582969357166,
    p_user_id => 'TESTSTUDENT1',
    p_preference_name => 'FSP_IR_104_P33_W9497107727488992',
    p_attribute_value => '9501821619489749____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9780753548357168,
    p_user_id => 'TESTSTUDENT1',
    p_preference_name => 'FSP_IR_104_P33_W9504533742515511',
    p_attribute_value => '9532757323086554____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9780947422358998,
    p_user_id => 'TESTSTUDENT1',
    p_preference_name => 'FSP_IR_104_P3_W9148365961294511',
    p_attribute_value => '9150760672295133____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9781540841396358,
    p_user_id => 'TESTSTUDENT1',
    p_preference_name => 'FSP_IR_104_P6_W9245277730797060',
    p_attribute_value => '9257174413797603____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9781791813396359,
    p_user_id => 'TESTSTUDENT1',
    p_preference_name => 'FSP_IR_104_P6_W9260933982813527',
    p_attribute_value => '9509918568564055____');
end;
/
begin
  wwv_flow_api.create_preferences$ (
    p_id => 9781940355396359,
    p_user_id => 'TESTSTUDENT1',
    p_preference_name => 'FSP_IR_104_P6_W9507166312515537',
    p_attribute_value => '9598682790771407____');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '0D0A435245415445205441424C452055534552530D0A2820555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A2020555345524E414D45095641524348415228343529094E4F54204E554C4C2C0D0A202050415353574F52442009564152';
wwv_flow_api.g_varchar2_table(2) := '4348415228343529094E4F54204E554C4C2C0D0A2020454D41494C0909564152434841522832353529094E4F54204E554C4C2C0D0A202046554C4C4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A202050484F4E4509094E554D';
wwv_flow_api.g_varchar2_table(3) := '4245522C0D0A20204445504152544D454E545F4E414D4520564152434841522832353529094E4F54204E554C4C2C0D0A202049535F5359535F41444D494E20204E554D424552283229200944454641554C5420302C0D0A202049535F5745425F41444D49';
wwv_flow_api.g_varchar2_table(4) := '4E20204E554D424552283229200944454641554C5420302C0D0A202049535F54454143484552202020204E554D424552283229200944454641554C5420302C0D0A202049535F41435449564520094E554D424552283229200944454641554C5420312C0D';
wwv_flow_api.g_varchar2_table(5) := '0A202049535F4F4E4C494E4520094E554D4245522832292C0D0A20204E54465F454E41424C4544094E554D424552283229200944454641554C5420312C0D0A2020444154455F4352454154454409444154452C0D0A2020434F554E545259095641524348';
wwv_flow_api.g_varchar2_table(6) := '415228323535292C0D0A20204349545909095641524348415228323535292C0D0A2020534B5950455F4E414D45095641524348415228323535292C0D0A20204C494E4B4544494E095641524348415228323535292C0D0A20204445534352495054494F4E';
wwv_flow_api.g_varchar2_table(7) := '095641524348415228323535292C0D0A2020444F420909444154452C0D0A20204F4646494345095641524348415228323535292C0D0A20204F46464943455F484F555253095641524348415228323535292C0D0A20205449544C45090956415243484152';
wwv_flow_api.g_varchar2_table(8) := '28323535292C0D0A2020414D5F4E554D424552094E554D4245522C090D0A202050484F544F0909424C4F422C0D0A2020434F4E53545241494E542009504B5F555345525F4944205052494D415259204B45592028555345525F4944292C0D0A2020434F4E';
wwv_flow_api.g_varchar2_table(9) := '53545241494E54200955534552535F434F4E20554E495155452028555345524E414D45292C0D0A2020434F4E53545241494E54200955534552535F434F4E3220554E495155452028454D41494C292C0D0A2020434F4E53545241494E5420095553455253';
wwv_flow_api.g_varchar2_table(10) := '5F434F4E3320554E495155452028414D5F4E554D424552290D0A293B0D0A0D0A4352454154452053455155454E434520555345525F4944205354415254205749544820313B0D0A0D0A435245415445205441424C45204445504152544D454E540D0A2820';
wwv_flow_api.g_varchar2_table(11) := '4445504152544D454E545F494409094E554D42455209094E4F54204E554C4C2C0D0A20204445504152544D454E545F4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A20204445534352495054494F4E0956415243484152283235';
wwv_flow_api.g_varchar2_table(12) := '35292C0D0A2020434F4E53545241494E5420504B5F4445504152544D454E545F4944205052494D415259204B455920284445504152544D454E545F4944292C0D0A2020434F4E53545241494E54204445504152544D454E545F434F4E20554E4951554509';
wwv_flow_api.g_varchar2_table(13) := '284445504152544D454E545F4E414D45290D0A293B0D0A0D0A4352454154452053455155454E4345204445504152544D454E545F4944205354415254205749544820313B0D0A0D0A435245415445205441424C45204556454E540D0A28204556454E545F';
wwv_flow_api.g_varchar2_table(14) := '4944094E554D42455209094E4F54204E554C4C2C0D0A20204556454E545F4E414D4520202020564152434841522832353529094E4F54204E554C4C2C0D0A20204445534352495054494F4E095641524348415228323535292C0D0A202053544152545F44';
wwv_flow_api.g_varchar2_table(15) := '415445094441544509094E4F54204E554C4C2C0D0A2020454E445F44415445094441544509094E4F54204E554C4C2C0D0A20204556454E545F5354415455532020564152434841522832353529094E4F54204E554C4C2C0D0A2020504C41434509095641';
wwv_flow_api.g_varchar2_table(16) := '52434841522832353529094E4F54204E554C4C2C0D0A202050484F544F0909424C4F422C0D0A2020555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A2020555345525F4352454154454409564152434841522832353529094E4F54204E';
wwv_flow_api.g_varchar2_table(17) := '554C4C2C0D0A20204C4553534F4E5F4E414D45095641524348415228323535292C0D0A20204445504152544D454E545F4E414D45205641524348415228323535292C0D0A2020434F4E53545241494E5420504B5F4556454E545F4944205052494D415259';
wwv_flow_api.g_varchar2_table(18) := '204B455920284556454E545F4944290D0A293B0D0A0D0A4352454154452053455155454E4345204556454E545F4944205354415254205749544820313B0D0A0D0A435245415445205441424C4520414E4E4F554E43454D454E540D0A2820414E4E4F554E';
wwv_flow_api.g_varchar2_table(19) := '43454D454E545F4944204E554D424552094E4F54204E554C4C2C0D0A2020414E4E4F554E43454D454E545F4E414D4520564152434841522832353529204E4F54204E554C4C2C0D0A20204445534352495054494F4E09564152434841522832353529094E';
wwv_flow_api.g_varchar2_table(20) := '4F54204E554C4C2C0D0A2020555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A2020555345525F4352454154454409564152434841522832353529094E4F54204E554C4C2C0D0A20204C4553534F4E5F4E414D45095641524348415228';
wwv_flow_api.g_varchar2_table(21) := '323535292C0D0A20204445504152544D454E545F4E414D45205641524348415228323535292C0D0A434F4E53545241494E5420504B5F414E4E4F554E43454D454E545F4944205052494D415259204B45592028414E4E4F554E43454D454E545F4944290D';
wwv_flow_api.g_varchar2_table(22) := '0A293B0D0A0D0A4352454154452053455155454E434520414E4E4F554E43454D454E545F4944205354415254205749544820313B0D0A0D0A435245415445205441424C45204C4553534F4E0D0A28204C4553534F4E5F4944094E554D42455209094E4F54';
wwv_flow_api.g_varchar2_table(23) := '204E554C4C2C0D0A20204C4553534F4E5F4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A20204445534352495054494F4E09564152434841522832353529094E4F54204E554C4C2C0D0A20204C4553534F4E5F44415445094441';
wwv_flow_api.g_varchar2_table(24) := '544509094E4F54204E554C4C2C0D0A20204445504152544D454E545F4E414D4520564152434841522832353529094E4F54204E554C4C2C0D0A202054454143484552095641524348415228323535292C0D0A434F4E53545241494E5420504B5F4C455353';
wwv_flow_api.g_varchar2_table(25) := '4F4E5F4944205052494D415259204B455920284C4553534F4E5F4944292C0D0A434F4E53545241494E54204C4553534F4E5F434F4E20554E4951554520284C4553534F4E5F4E414D45290D0A293B0D0A0D0A4352454154452053455155454E4345204C45';
wwv_flow_api.g_varchar2_table(26) := '53534F4E5F4944205354415254205749544820313B0D0A0D0A435245415445205441424C452041535349474E4D454E540D0A282041535349474E4D454E545F4944094E554D42455209094E4F54204E554C4C2C0D0A202041535349474E4D454E545F4E41';
wwv_flow_api.g_varchar2_table(27) := '4D4520564152434841522832353529094E4F54204E554C4C2C0D0A20204445534352495054494F4E09564152434841522832353529094E4F54204E554C4C2C0D0A202053544152545F44415445094441544509094E4F54204E554C4C2C0D0A2020454E44';
wwv_flow_api.g_varchar2_table(28) := '5F44415445094441544509094E4F54204E554C4C2C0D0A202041535349474E4D454E545F53544154555320564152434841522832353529204E4F54204E554C4C2C0D0A20204C4553534F4E5F4E414D4509564152434841522832353529094E4F54204E55';
wwv_flow_api.g_varchar2_table(29) := '4C4C2C0D0A434F4E53545241494E5420504B5F41535349474E4D454E545F4944205052494D415259204B4559202841535349474E4D454E545F4944290D0A293B0D0A0D0A4352454154452053455155454E43452041535349474E4D454E545F4944205354';
wwv_flow_api.g_varchar2_table(30) := '415254205749544820313B0D0A0D0A435245415445205441424C45205355424D495353494F4E0D0A28205355424D495353494F4E5F4944094E554D42455209094E4F54204E554C4C2C0D0A202041535349474E4D454E545F4944204E554D42455209094E';
wwv_flow_api.g_varchar2_table(31) := '4F54204E554C4C2C0D0A202041535349474E4D454E545F4E414D4520564152434841522832353529094E4F54204E554C4C2C0D0A202053545544454E545F4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A2020414D5F4E554D42';
wwv_flow_api.g_varchar2_table(32) := '4552094E554D42455209094E4F54204E554C4C2C0D0A202046494C455F5355424D495454454420424C4F422C0D0A2020475241444509094E554D4245522C0D0A434F4E53545241494E5420504B5F5355424D495353494F4E5F4944205052494D41525920';
wwv_flow_api.g_varchar2_table(33) := '4B455920285355424D495353494F4E5F4944290D0A293B0D0A0D0A4352454154452053455155454E4345205355424D495353494F4E5F4944205354415254205749544820313B0D0A0D0A435245415445205441424C45204C4553534F4E5F53545544454E';
wwv_flow_api.g_varchar2_table(34) := '540D0A28204C4553534F4E5F53545544454E545F4944204E554D424552094E4F54204E554C4C2C0D0A202053545544454E545F4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A2020414D5F4E554D424552094E554D4245520909';
wwv_flow_api.g_varchar2_table(35) := '4E4F54204E554C4C2C0D0A20204C4553534F4E5F4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A2020475241444509094E554D4245522C0D0A434F4E53545241494E5420504B5F4C4553534F4E5F53545544454E545F49442050';
wwv_flow_api.g_varchar2_table(36) := '52494D415259204B455920284C4553534F4E5F53545544454E545F4944290D0A293B0D0A0D0A4352454154452053455155454E4345204C4553534F4E5F53545544454E545F4944205354415254205749544820313B0D0A0D0A435245415445205441424C';
wwv_flow_api.g_varchar2_table(37) := '4520555345525F4C414E47554147450D0A2820555345525F4C414E47554147455F4944204E554D424552094E4F54204E554C4C2C0D0A2020555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A20204C414E475541474509564152434841';
wwv_flow_api.g_varchar2_table(38) := '522832353529094E4F54204E554C4C2C0D0A434F4E53545241494E5420504B5F555345525F4C414E47554147455F4944205052494D415259204B45592028555345525F4C414E47554147455F4944290D0A293B0D0A0D0A4352454154452053455155454E';
wwv_flow_api.g_varchar2_table(39) := '434520555345525F4C414E47554147455F4944205354415254205749544820313B0D0A0D0A435245415445205441424C4520555345525F4556454E54530D0A2820555345525F4556454E54535F4944204E554D42455209094E4F54204E554C4C2C0D0A20';
wwv_flow_api.g_varchar2_table(40) := '204556454E545F4944094E554D42455209094E4F54204E554C4C2C0D0A20204556454E545F4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A2020555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A202046554C';
wwv_flow_api.g_varchar2_table(41) := '4C4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A202049535F41434345505445442020205641524348415228323535292C0D0A434F4E53545241494E5420504B5F555345525F4556454E54535F4944205052494D415259204B45';
wwv_flow_api.g_varchar2_table(42) := '592028555345525F4556454E54535F4944290D0A293B0D0A0D0A4352454154452053455155454E434520555345525F4556454E54535F4944205354415254205749544820313B0D0A0D0A435245415445205441424C45204D455353414745530D0A28204D';
wwv_flow_api.g_varchar2_table(43) := '455353414745535F4944204E554D42455209094E4F54204E554C4C2C0D0A2020555345525F49445F312020204E554D42455209094E4F54204E554C4C2C0D0A202046554C4C4E414D455F31202056415243484152283235352920094E4F54204E554C4C2C';
wwv_flow_api.g_varchar2_table(44) := '0D0A2020555345525F49445F322020204E554D42455209094E4F54204E554C4C2C0D0A202046554C4C4E414D455F32202056415243484152283235352920094E4F54204E554C4C2C0D0A20204D4553534147452020202020564152434841522832353529';
wwv_flow_api.g_varchar2_table(45) := '20094E4F54204E554C4C2C0D0A434F4E53545241494E5420504B5F4D455353414745535F4944205052494D415259204B455920284D455353414745535F4944290D0A293B0D0A0D0A4352454154452053455155454E4345204D455353414745535F494420';
wwv_flow_api.g_varchar2_table(46) := '5354415254205749544820313B0D0A0D0A435245415445205441424C4520534B494C4C530D0A2820534B494C4C535F4944094E554D42455209094E4F54204E554C4C2C0D0A2020534B494C4C5F4E414D450956415243484152283235352920094E4F5420';
wwv_flow_api.g_varchar2_table(47) := '4E554C4C2C0D0A434F4E53545241494E5420504B5F534B494C4C535F4944205052494D415259204B45592028534B494C4C535F4944290D0A293B0D0A0D0A4352454154452053455155454E434520534B494C4C535F494420535441525420574954482031';
wwv_flow_api.g_varchar2_table(48) := '3B0D0A0D0A435245415445205441424C4520555345525F534B494C4C530D0A2820555345525F534B494C4C535F4944204E554D42455209094E4F54204E554C4C2C0D0A2020555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A2020534B';
wwv_flow_api.g_varchar2_table(49) := '494C4C5F4E414D4509564152434841522832353529094E4F54204E554C4C2C0D0A2020425553494E4553535F4152454120564152434841522832353529094E4F54204E554C4C2C0D0A434F4E53545241494E5420504B5F555345525F534B494C4C535F49';
wwv_flow_api.g_varchar2_table(50) := '44205052494D415259204B45592028555345525F534B494C4C535F4944290D0A293B0D0A0D0A4352454154452053455155454E434520555345525F534B494C4C535F4944205354415254205749544820313B0D0A0D0A435245415445205441424C452055';
wwv_flow_api.g_varchar2_table(51) := '5345525F454455434154494F4E0D0A2820555345525F454455434154494F4E5F4944204E554D424552094E4F54204E554C4C2C0D0A2020555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A2020454455434154494F4E09564152434841';
wwv_flow_api.g_varchar2_table(52) := '522832353529094E4F54204E554C4C2C0D0A434F4E53545241494E5420504B5F555345525F454455434154494F4E5F4944205052494D415259204B45592028555345525F454455434154494F4E5F4944290D0A293B0D0A0D0A4352454154452053455155';
wwv_flow_api.g_varchar2_table(53) := '454E434520555345525F454455434154494F4E5F4944205354415254205749544820313B0D0A0D0A435245415445205441424C4520465249454E44530D0A2820465249454E44535F4944204E554D42455209094E4F54204E554C4C2C0D0A202055534552';
wwv_flow_api.g_varchar2_table(54) := '5F49445F312020204E554D42455209094E4F54204E554C4C2C0D0A202046554C4C4E414D455F31202056415243484152283235352920094E4F54204E554C4C2C0D0A2020555345525F49445F322020204E554D42455209094E4F54204E554C4C2C0D0A20';
wwv_flow_api.g_varchar2_table(55) := '2046554C4C4E414D455F32202056415243484152283235352920094E4F54204E554C4C2C0D0A434F4E53545241494E5420504B5F465249454E44535F4944205052494D415259204B45592028465249454E44535F4944290D0A293B0D0A0D0A4352454154';
wwv_flow_api.g_varchar2_table(56) := '452053455155454E434520465249454E44535F4944205354415254205749544820313B0D0A0D0A435245415445205441424C4520465249454E445F524551554553540D0A2820465249454E445F524551554553545F4944204E554D424552094E4F54204E';
wwv_flow_api.g_varchar2_table(57) := '554C4C2C0D0A2020555345525F49445F312020204E554D42455209094E4F54204E554C4C2C0D0A202046554C4C4E414D455F31202056415243484152283235352920094E4F54204E554C4C2C0D0A2020555345525F49445F322020204E554D4245520909';
wwv_flow_api.g_varchar2_table(58) := '4E4F54204E554C4C2C0D0A202046554C4C4E414D455F32202056415243484152283235352920094E4F54204E554C4C2C0D0A202049535F4143434550544544205641524348415228323535292C0D0A434F4E53545241494E5420504B5F465249454E445F';
wwv_flow_api.g_varchar2_table(59) := '524551554553545F4944205052494D415259204B45592028465249454E445F524551554553545F4944290D0A293B0D0A0D0A4352454154452053455155454E434520465249454E445F524551554553545F4944205354415254205749544820313B0D0A0D';
wwv_flow_api.g_varchar2_table(60) := '0A435245415445205441424C4520534B494C4C5F524551554553540D0A2820534B494C4C5F524551554553545F4944204E554D424552094E4F54204E554C4C2C0D0A2020555345525F49442020204E554D42455209094E4F54204E554C4C2C0D0A202046';
wwv_flow_api.g_varchar2_table(61) := '554C4C4E414D45202056415243484152283235352920094E4F54204E554C4C2C0D0A20205355474745535445445F534B494C4C20564152434841522832353529094E4F54204E554C4C2C0D0A2020425553494E4553535F41524541202020564152434841';
wwv_flow_api.g_varchar2_table(62) := '522832353529094E4F54204E554C4C2C0D0A202049535F414343455054454420202020205641524348415228323535292C0D0A434F4E53545241494E5420504B5F534B494C4C5F524551554553545F4944205052494D415259204B45592028534B494C4C';
wwv_flow_api.g_varchar2_table(63) := '5F524551554553545F4944290D0A293B0D0A0D0A4352454154452053455155454E434520534B494C4C5F524551554553545F4944205354415254205749544820313B0D0A0D0A435245415445205441424C4520414E4E4F554E43454D454E545F434F4D4D';
wwv_flow_api.g_varchar2_table(64) := '454E54530D0A2820414E4E4F554E43454D454E545F434F4D4D454E54535F4944204E554D424552094E4F54204E554C4C2C0D0A2020555345525F49442020204E554D4245520909094E4F54204E554C4C2C0D0A202046554C4C4E414D4520205641524348';
wwv_flow_api.g_varchar2_table(65) := '415228323535292009094E4F54204E554C4C2C0D0A2020414E4E4F554E43454D454E545F4944204E554D42455209094E4F54204E554C4C2C0D0A2020434F4D4D454E544649454C44095641524348415228323535292009094E4F54204E554C4C2C0D0A43';
wwv_flow_api.g_varchar2_table(66) := '4F4E53545241494E5420504B5F414E4E4F554E43454D454E545F434F4D4D454E54535F4944205052494D415259204B45592028414E4E4F554E43454D454E545F434F4D4D454E54535F4944290D0A293B0D0A0D0A4352454154452053455155454E434520';
wwv_flow_api.g_varchar2_table(67) := '414E4E4F554E43454D454E545F434F4D4D454E54535F4944205354415254205749544820313B0D0A0D0A0D0A';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 9069093324932177,
    p_flow_id => 4500,
    p_name => '9069093324932177/DB_CREATE.txt',
    p_pathid => null,
    p_filename => 'DB_CREATE.txt',
    p_title => 'DB_CREATE.txt',
    p_mime_type => 'text/plain',
    p_dad_charset => 'ascii',
    p_created_by => 'SYSDBA',
    p_created_on => to_date('201808182149','YYYYMMDDHH24MI'),
    p_updated_by => 'SYSDBA',
    p_updated_on => to_date('201808182149','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072496512934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 3
    ,p_src_line_number => 32
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072683580934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 6
    ,p_src_line_number => 34
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073497399934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 9
    ,p_src_line_number => 42
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073617311934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 12
    ,p_src_line_number => 44
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075252839934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 15
    ,p_src_line_number => 60
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075423230934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 18
    ,p_src_line_number => 62
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076576565934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 21
    ,p_src_line_number => 73
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076776643934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 24
    ,p_src_line_number => 75
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077841183934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 27
    ,p_src_line_number => 86
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078040412934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 30
    ,p_src_line_number => 88
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079169945934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 33
    ,p_src_line_number => 99
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079393803934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 36
    ,p_src_line_number => 101
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080406873934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 39
    ,p_src_line_number => 112
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080677699934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 42
    ,p_src_line_number => 114
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081510087934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 45
    ,p_src_line_number => 123
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081794132934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 48
    ,p_src_line_number => 125
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082494972934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 51
    ,p_src_line_number => 132
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082690544934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 54
    ,p_src_line_number => 134
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083619418934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 57
    ,p_src_line_number => 144
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083803578934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 60
    ,p_src_line_number => 146
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084825331934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 63
    ,p_src_line_number => 156
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085006887934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 66
    ,p_src_line_number => 158
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085656204934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 69
    ,p_src_line_number => 164
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085828215934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 72
    ,p_src_line_number => 166
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086664641934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 75
    ,p_src_line_number => 174
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086879627934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 78
    ,p_src_line_number => 176
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087580622934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 81
    ,p_src_line_number => 183
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087773752934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 84
    ,p_src_line_number => 185
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088635651934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 87
    ,p_src_line_number => 194
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088896755934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 90
    ,p_src_line_number => 196
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089821956934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 93
    ,p_src_line_number => 206
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090073676934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 96
    ,p_src_line_number => 208
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091060863934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 99
    ,p_src_line_number => 218
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091240120934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 102
    ,p_src_line_number => 220
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9092180390934216
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 105
    ,p_src_line_number => 229
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9092341721934216
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 108
    ,p_src_line_number => 231
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9069398933934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 2
    ,p_offset => 3
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE USERS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9069424752934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 3
    ,p_offset => 23
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9069592263934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 4
    ,p_offset => 52
    ,p_length => 33
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USERNAME	VARCHAR(45)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9069672409934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 5
    ,p_offset => 86
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  PASSWORD 	VARCHAR(45)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9069788724934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 6
    ,p_offset => 121
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  EMAIL		VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9069858579934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 7
    ,p_offset => 154
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9069965579934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 8
    ,p_offset => 189
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  PHONE		NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070008438934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 9
    ,p_offset => 207
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DEPARTMENT_NAME VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070126510934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 10
    ,p_offset => 249
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_SYS_ADMIN  NUMBER(2) 	DEFAULT 0, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070209374934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 11
    ,p_offset => 288
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_WEB_ADMIN  NUMBER(2) 	DEFAULT 0, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070399099934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 12
    ,p_offset => 327
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_TEACHER    NUMBER(2) 	DEFAULT 0, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070416112934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 13
    ,p_offset => 366
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_ACTIVE 	NUMBER(2) 	DEFAULT 1, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070548792934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 14
    ,p_offset => 402
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_ONLINE 	NUMBER(2), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070644960934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 15
    ,p_offset => 427
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  NTF_ENABLED	NUMBER(2) 	DEFAULT 1, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070799218934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 16
    ,p_offset => 464
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DATE_CREATED	DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070856111934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 17
    ,p_offset => 486
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  COUNTRY	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9070952487934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 18
    ,p_offset => 511
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CITY		VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071004890934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 19
    ,p_offset => 534
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  SKYPE_NAME	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071181333934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 20
    ,p_offset => 562
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LINKEDIN	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071295393934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 21
    ,p_offset => 588
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DESCRIPTION	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071357375934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 22
    ,p_offset => 617
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DOB		DATE, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071498160934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 23
    ,p_offset => 631
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  OFFICE	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071567777934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 24
    ,p_offset => 655
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  OFFICE_HOURS	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071661569934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 25
    ,p_offset => 685
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  TITLE		VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071750772934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 26
    ,p_offset => 709
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  AM_NUMBER	NUMBER,	 '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071874166934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 27
    ,p_offset => 731
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  PHOTO		BLOB, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9071951108934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 28
    ,p_offset => 747
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT 	PK_USER_ID PRIMARY KEY (USER_ID), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072067536934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 29
    ,p_offset => 796
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT 	USERS_CON UNIQUE (USERNAME), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072188344934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 30
    ,p_offset => 840
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT 	USERS_CON2 UNIQUE (EMAIL), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072241396934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 31
    ,p_offset => 882
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT 	USERS_CON3 UNIQUE (AM_NUMBER) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072397306934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 2
    ,p_src_line_number => 32
    ,p_offset => 927
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072594547934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 5
    ,p_src_line_number => 34
    ,p_offset => 933
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE USER_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072748483934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 8
    ,p_src_line_number => 36
    ,p_offset => 974
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE DEPARTMENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072899108934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 8
    ,p_src_line_number => 37
    ,p_offset => 999
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( DEPARTMENT_ID		NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9072943408934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 8
    ,p_src_line_number => 38
    ,p_offset => 1035
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DEPARTMENT_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073051701934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 8
    ,p_src_line_number => 39
    ,p_offset => 1077
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DESCRIPTION	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073194836934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 8
    ,p_src_line_number => 40
    ,p_offset => 1106
    ,p_length => 59
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT PK_DEPARTMENT_ID PRIMARY KEY (DEPARTMENT_ID), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073224142934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 8
    ,p_src_line_number => 41
    ,p_offset => 1166
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT DEPARTMENT_CON UNIQUE	(DEPARTMENT_NAME) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073328087934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 8
    ,p_src_line_number => 42
    ,p_offset => 1220
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073599233934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 11
    ,p_src_line_number => 44
    ,p_offset => 1226
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE DEPARTMENT_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073730972934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 46
    ,p_offset => 1273
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE EVENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073840961934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 47
    ,p_offset => 1293
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( EVENT_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9073995531934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 48
    ,p_offset => 1323
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  EVENT_NAME    VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074053103934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 49
    ,p_offset => 1363
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DESCRIPTION	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074130343934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 50
    ,p_offset => 1392
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  START_DATE	DATE		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074269122934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 51
    ,p_offset => 1422
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  END_DATE	DATE		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074319333934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 52
    ,p_offset => 1450
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  EVENT_STATUS  VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074448182934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 53
    ,p_offset => 1490
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  PLACE		VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074572383934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 54
    ,p_offset => 1523
    ,p_length => 15
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  PHOTO		BLOB, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074630652934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 55
    ,p_offset => 1539
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074784403934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 56
    ,p_offset => 1568
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_CREATED	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074809725934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 57
    ,p_offset => 1607
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LESSON_NAME	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9074917795934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 58
    ,p_offset => 1636
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DEPARTMENT_NAME VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075077984934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 59
    ,p_offset => 1669
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT PK_EVENT_ID PRIMARY KEY (EVENT_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075195289934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 14
    ,p_src_line_number => 60
    ,p_offset => 1718
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075353366934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 17
    ,p_src_line_number => 62
    ,p_offset => 1724
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE EVENT_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075511198934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 64
    ,p_offset => 1766
    ,p_length => 26
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE ANNOUNCEMENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075656759934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 65
    ,p_offset => 1793
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( ANNOUNCEMENT_ID NUMBER	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075762338934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 66
    ,p_offset => 1829
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  ANNOUNCEMENT_NAME VARCHAR(255) NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075831585934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 67
    ,p_offset => 1873
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DESCRIPTION	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9075905921934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 68
    ,p_offset => 1911
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076026016934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 69
    ,p_offset => 1940
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_CREATED	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076100847934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 70
    ,p_offset => 1979
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LESSON_NAME	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076261016934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 71
    ,p_offset => 2008
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DEPARTMENT_NAME VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076338041934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 72
    ,p_offset => 2041
    ,p_length => 60
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_ANNOUNCEMENT_ID PRIMARY KEY (ANNOUNCEMENT_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076428738934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 20
    ,p_src_line_number => 73
    ,p_offset => 2102
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076681426934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 23
    ,p_src_line_number => 75
    ,p_offset => 2108
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE ANNOUNCEMENT_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076826863934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 77
    ,p_offset => 2157
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE LESSON '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9076945247934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 78
    ,p_offset => 2178
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( LESSON_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077079510934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 79
    ,p_offset => 2209
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LESSON_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077191267934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 80
    ,p_offset => 2247
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DESCRIPTION	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077233666934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 81
    ,p_offset => 2285
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LESSON_DATE	DATE		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077300286934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 82
    ,p_offset => 2316
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DEPARTMENT_NAME VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077486564934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 83
    ,p_offset => 2358
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  TEACHER	VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077596700934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 84
    ,p_offset => 2383
    ,p_length => 49
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_LESSON_ID PRIMARY KEY (LESSON_ID), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077662402934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 85
    ,p_offset => 2433
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT LESSON_CON UNIQUE (LESSON_NAME) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077738031934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 26
    ,p_src_line_number => 86
    ,p_offset => 2477
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9077950005934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 29
    ,p_src_line_number => 88
    ,p_offset => 2483
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE LESSON_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078145645934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 90
    ,p_offset => 2526
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE ASSIGNMENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078225604934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 91
    ,p_offset => 2551
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( ASSIGNMENT_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078383267934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 92
    ,p_offset => 2586
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  ASSIGNMENT_NAME VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078426554934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 93
    ,p_offset => 2628
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  DESCRIPTION	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078529004934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 94
    ,p_offset => 2666
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  START_DATE	DATE		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078672223934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 95
    ,p_offset => 2696
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  END_DATE	DATE		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078741444934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 96
    ,p_offset => 2724
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  ASSIGNMENT_STATUS VARCHAR(255) NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078825102934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 97
    ,p_offset => 2768
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LESSON_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9078965155934214
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 98
    ,p_offset => 2806
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_ASSIGNMENT_ID PRIMARY KEY (ASSIGNMENT_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079047994934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 32
    ,p_src_line_number => 99
    ,p_offset => 2863
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079218063934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 35
    ,p_src_line_number => 101
    ,p_offset => 2869
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE ASSIGNMENT_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079459295934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 103
    ,p_offset => 2916
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE SUBMISSION '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079572787934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 104
    ,p_offset => 2941
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( SUBMISSION_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079656900934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 105
    ,p_offset => 2976
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  ASSIGNMENT_ID NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079734952934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 106
    ,p_offset => 3011
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  ASSIGNMENT_NAME VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079822052934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 107
    ,p_offset => 3053
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  STUDENT_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9079983557934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 108
    ,p_offset => 3092
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  AM_NUMBER	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080005030934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 109
    ,p_offset => 3123
    ,p_length => 23
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FILE_SUBMITTED BLOB, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080101155934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 110
    ,p_offset => 3147
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  GRADE		NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080260591934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 111
    ,p_offset => 3165
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_SUBMISSION_ID PRIMARY KEY (SUBMISSION_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080334226934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 38
    ,p_src_line_number => 112
    ,p_offset => 3222
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080517779934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 41
    ,p_src_line_number => 114
    ,p_offset => 3228
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE SUBMISSION_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080778929934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 116
    ,p_offset => 3275
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE LESSON_STUDENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080852808934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 117
    ,p_offset => 3304
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( LESSON_STUDENT_ID NUMBER	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9080930199934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 118
    ,p_offset => 3342
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  STUDENT_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081093545934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 119
    ,p_offset => 3381
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  AM_NUMBER	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081106034934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 120
    ,p_offset => 3412
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LESSON_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081261863934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 121
    ,p_offset => 3450
    ,p_length => 17
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  GRADE		NUMBER, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081376391934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 122
    ,p_offset => 3468
    ,p_length => 64
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_LESSON_STUDENT_ID PRIMARY KEY (LESSON_STUDENT_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081422639934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 44
    ,p_src_line_number => 123
    ,p_offset => 3533
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081652791934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 47
    ,p_src_line_number => 125
    ,p_offset => 3539
    ,p_length => 46
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE LESSON_STUDENT_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081825106934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 50
    ,p_src_line_number => 127
    ,p_offset => 3590
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE USER_LANGUAGE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9081982560934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 50
    ,p_src_line_number => 128
    ,p_offset => 3618
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( USER_LANGUAGE_ID NUMBER	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082082095934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 50
    ,p_src_line_number => 129
    ,p_offset => 3655
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082103078934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 50
    ,p_src_line_number => 130
    ,p_offset => 3684
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LANGUAGE	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082212943934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 50
    ,p_src_line_number => 131
    ,p_offset => 3719
    ,p_length => 62
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_USER_LANGUAGE_ID PRIMARY KEY (USER_LANGUAGE_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082377235934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 50
    ,p_src_line_number => 132
    ,p_offset => 3782
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082586442934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 53
    ,p_src_line_number => 134
    ,p_offset => 3788
    ,p_length => 45
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE USER_LANGUAGE_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082708785934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 136
    ,p_offset => 3838
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE USER_EVENTS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082806119934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 137
    ,p_offset => 3864
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( USER_EVENTS_ID NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9082975402934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 138
    ,p_offset => 3900
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  EVENT_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083041928934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 139
    ,p_offset => 3930
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  EVENT_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083156374934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 140
    ,p_offset => 3967
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083297990934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 141
    ,p_offset => 3996
    ,p_length => 34
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083317855934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 142
    ,p_offset => 4031
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_ACCEPTED   VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083452337934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 143
    ,p_offset => 4062
    ,p_length => 58
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_USER_EVENTS_ID PRIMARY KEY (USER_EVENTS_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083565397934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 56
    ,p_src_line_number => 144
    ,p_offset => 4121
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083731496934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 59
    ,p_src_line_number => 146
    ,p_offset => 4127
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE USER_EVENTS_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9083905351934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 148
    ,p_offset => 4175
    ,p_length => 22
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE MESSAGES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084004435934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 149
    ,p_offset => 4198
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( MESSAGES_ID NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084114181934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 150
    ,p_offset => 4231
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID_1   NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084240806934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 151
    ,p_offset => 4264
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME_1  VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084340330934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 152
    ,p_offset => 4303
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID_2   NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084402574934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 153
    ,p_offset => 4336
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME_2  VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084511203934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 154
    ,p_offset => 4375
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  MESSAGE     VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084686004934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 155
    ,p_offset => 4414
    ,p_length => 52
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_MESSAGES_ID PRIMARY KEY (MESSAGES_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084716656934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 62
    ,p_src_line_number => 156
    ,p_offset => 4467
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9084983944934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 65
    ,p_src_line_number => 158
    ,p_offset => 4473
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE MESSAGES_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085144846934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 68
    ,p_src_line_number => 160
    ,p_offset => 4518
    ,p_length => 20
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE SKILLS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085273239934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 68
    ,p_src_line_number => 161
    ,p_offset => 4539
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( SKILLS_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085309315934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 68
    ,p_src_line_number => 162
    ,p_offset => 4570
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  SKILL_NAME	VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085424406934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 68
    ,p_src_line_number => 163
    ,p_offset => 4608
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_SKILLS_ID PRIMARY KEY (SKILLS_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085551163934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 68
    ,p_src_line_number => 164
    ,p_offset => 4657
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085734492934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 71
    ,p_src_line_number => 166
    ,p_offset => 4663
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE SKILLS_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9085969858934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 74
    ,p_src_line_number => 168
    ,p_offset => 4706
    ,p_length => 25
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE USER_SKILLS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086019860934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 74
    ,p_src_line_number => 169
    ,p_offset => 4732
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( USER_SKILLS_ID NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086102756934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 74
    ,p_src_line_number => 170
    ,p_offset => 4768
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086244147934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 74
    ,p_src_line_number => 171
    ,p_offset => 4797
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  SKILL_NAME	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086366812934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 74
    ,p_src_line_number => 172
    ,p_offset => 4834
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  BUSINESS_AREA VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086424845934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 74
    ,p_src_line_number => 173
    ,p_offset => 4874
    ,p_length => 58
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_USER_SKILLS_ID PRIMARY KEY (USER_SKILLS_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086512162934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 74
    ,p_src_line_number => 174
    ,p_offset => 4933
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086703308934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 77
    ,p_src_line_number => 176
    ,p_offset => 4939
    ,p_length => 43
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE USER_SKILLS_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9086951448934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 80
    ,p_src_line_number => 178
    ,p_offset => 4987
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE USER_EDUCATION '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087013660934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 80
    ,p_src_line_number => 179
    ,p_offset => 5016
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( USER_EDUCATION_ID NUMBER	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087176902934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 80
    ,p_src_line_number => 180
    ,p_offset => 5054
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087266484934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 80
    ,p_src_line_number => 181
    ,p_offset => 5083
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  EDUCATION	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087390042934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 80
    ,p_src_line_number => 182
    ,p_offset => 5119
    ,p_length => 64
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_USER_EDUCATION_ID PRIMARY KEY (USER_EDUCATION_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087403880934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 80
    ,p_src_line_number => 183
    ,p_offset => 5184
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087615369934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 83
    ,p_src_line_number => 185
    ,p_offset => 5190
    ,p_length => 46
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE USER_EDUCATION_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087825244934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 187
    ,p_offset => 5241
    ,p_length => 21
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE FRIENDS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9087958106934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 188
    ,p_offset => 5263
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( FRIENDS_ID NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088033526934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 189
    ,p_offset => 5295
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID_1   NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088132548934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 190
    ,p_offset => 5328
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME_1  VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088278928934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 191
    ,p_offset => 5367
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID_2   NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088370676934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 192
    ,p_offset => 5400
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME_2  VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088416032934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 193
    ,p_offset => 5439
    ,p_length => 50
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_FRIENDS_ID PRIMARY KEY (FRIENDS_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088537579934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 86
    ,p_src_line_number => 194
    ,p_offset => 5490
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088719311934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 89
    ,p_src_line_number => 196
    ,p_offset => 5496
    ,p_length => 39
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE FRIENDS_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9088938174934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 198
    ,p_offset => 5540
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE FRIEND_REQUEST '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089001944934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 199
    ,p_offset => 5569
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( FRIEND_REQUEST_ID NUMBER	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089177130934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 200
    ,p_offset => 5607
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID_1   NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089236349934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 201
    ,p_offset => 5640
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME_1  VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089351494934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 202
    ,p_offset => 5679
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID_2   NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089498721934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 203
    ,p_offset => 5712
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME_2  VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089502125934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 204
    ,p_offset => 5751
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_ACCEPTED VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089650169934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 205
    ,p_offset => 5780
    ,p_length => 64
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_FRIEND_REQUEST_ID PRIMARY KEY (FRIEND_REQUEST_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089769812934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 92
    ,p_src_line_number => 206
    ,p_offset => 5845
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9089998269934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 95
    ,p_src_line_number => 208
    ,p_offset => 5851
    ,p_length => 46
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE FRIEND_REQUEST_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090118644934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 210
    ,p_offset => 5902
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE SKILL_REQUEST '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090218059934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 211
    ,p_offset => 5930
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( SKILL_REQUEST_ID NUMBER	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090302205934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 212
    ,p_offset => 5967
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID   NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090471290934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 213
    ,p_offset => 5998
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME  VARCHAR(255) 	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090544831934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 214
    ,p_offset => 6035
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  SUGGESTED_SKILL VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090652681934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 215
    ,p_offset => 6077
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  BUSINESS_AREA   VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090789209934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 216
    ,p_offset => 6119
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  IS_ACCEPTED     VARCHAR(255), '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090858171934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 217
    ,p_offset => 6152
    ,p_length => 62
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_SKILL_REQUEST_ID PRIMARY KEY (SKILL_REQUEST_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9090995275934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 98
    ,p_src_line_number => 218
    ,p_offset => 6215
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091170417934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 101
    ,p_src_line_number => 220
    ,p_offset => 6221
    ,p_length => 45
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE SKILL_REQUEST_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091303202934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 222
    ,p_offset => 6271
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE ANNOUNCEMENT_COMMENTS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091451650934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 223
    ,p_offset => 6307
    ,p_length => 44
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( ANNOUNCEMENT_COMMENTS_ID NUMBER	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091509325934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 224
    ,p_offset => 6352
    ,p_length => 31
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID   NUMBER			NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091633731934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 225
    ,p_offset => 6384
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FULLNAME  VARCHAR(255) 		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091742613934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 226
    ,p_offset => 6422
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  ANNOUNCEMENT_ID NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091850115934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 227
    ,p_offset => 6459
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  COMMENTFIELD	VARCHAR(255) 		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9091985953934215
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 228
    ,p_offset => 6500
    ,p_length => 78
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CONSTRAINT PK_ANNOUNCEMENT_COMMENTS_ID PRIMARY KEY (ANNOUNCEMENT_COMMENTS_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9092064358934216
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 104
    ,p_src_line_number => 229
    ,p_offset => 6579
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9092210416934216
    ,p_file_id => 9069093324932177
    ,p_stmt_number => 107
    ,p_src_line_number => 231
    ,p_offset => 6585
    ,p_length => 53
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE ANNOUNCEMENT_COMMENTS_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 9092538567934342,
    p_file_id => 9069093324932177,
    p_job_id => null,
    p_run_by => 'SYSDBA',
    p_run_as => 'ECLASS',
    p_started => to_date('201808182149','YYYYMMDDHH24MI'),
    p_start_time => 17934344,
    p_ended => to_date('201808182149','YYYYMMDDHH24MI'),
    p_end_time => 17934363,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9092604659934344
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 1
    ,p_stmt_num => 2
 ,p_stmt_text => 
'CREATE TABLE USERS ( USER_ID	NUMBER		NOT NULL,   USERNAME	VARCHAR(45)	NOT NULL,   PASSWORD 	VARCHAR(45)	NOT NULL,   EMAIL		VARCHAR(255)	NOT NULL,   FULLNAME	VARCHAR(255)	NOT NULL,   PHONE		NUMBER,   DEPARTMENT_NAME VARCHAR(255)	NOT NULL,   IS_SYS_ADMIN  NUMBER(2) 	DEFAULT 0,   IS_WEB_ADMIN  NUMBER(2) 	DEFAULT 0,   IS_TEACHER    NUMBER(2) 	DEFAULT 0,   IS_ACTIVE 	NUMBER(2) 	DEFAULT 1,   IS_ONLINE 	'||
'NUMBER(2),   NTF_ENABLED	NUMBER(2) 	DEFAULT 1,   DATE_CREATED	DATE,   COUNTRY	VARCHAR(255),   CITY		VARCHAR(255),   SKYPE_NAME	VARCHAR(255),   LINKEDIN	VARCHAR(255),   DESCRIPTION	VARCHAR(255),   DOB		DATE,   OFFICE	VARCHAR(255),   OFFICE_HOURS	VARCHAR(255),   TITLE		VARCHAR(255),   AM_NUMBER	NUMBER,	   PHOTO		BLOB,   CONSTRAINT 	PK_USER_ID PRIMARY KEY (USER_ID),   CONSTRAINT 	USERS_CON UNIQUE (US'||
'ERNAME),   CONSTRAINT 	USERS_CON2 UNIQUE (EMAIL),   CONSTRAINT 	USERS_CON3 UNIQUE (AM_NUMBER) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934344
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934347
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9092784589934347
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 2
    ,p_stmt_num => 5
 ,p_stmt_text => 
'CREATE SEQUENCE USER_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934347
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934347
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9092823464934347
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 3
    ,p_stmt_num => 8
 ,p_stmt_text => 
'CREATE TABLE DEPARTMENT ( DEPARTMENT_ID		NUMBER		NOT NULL,   DEPARTMENT_NAME	VARCHAR(255)	NOT NULL,   DESCRIPTION	VARCHAR(255),   CONSTRAINT PK_DEPARTMENT_ID PRIMARY KEY (DEPARTMENT_ID),   CONSTRAINT DEPARTMENT_CON UNIQUE	(DEPARTMENT_NAME) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934347
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934349
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9092932312934349
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 4
    ,p_stmt_num => 11
 ,p_stmt_text => 
'CREATE SEQUENCE DEPARTMENT_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934349
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934349
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093074383934349
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 5
    ,p_stmt_num => 14
 ,p_stmt_text => 
'CREATE TABLE EVENT ( EVENT_ID	NUMBER		NOT NULL,   EVENT_NAME    VARCHAR(255)	NOT NULL,   DESCRIPTION	VARCHAR(255),   START_DATE	DATE		NOT NULL,   END_DATE	DATE		NOT NULL,   EVENT_STATUS  VARCHAR(255)	NOT NULL,   PLACE		VARCHAR(255)	NOT NULL,   PHOTO		BLOB,   USER_ID	NUMBER		NOT NULL,   USER_CREATED	VARCHAR(255)	NOT NULL,   LESSON_NAME	VARCHAR(255),   DEPARTMENT_NAME VARCHAR(255),   CONSTRAINT PK_E'||
'VENT_ID PRIMARY KEY (EVENT_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934349
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934350
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093174439934350
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 6
    ,p_stmt_num => 17
 ,p_stmt_text => 
'CREATE SEQUENCE EVENT_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934350
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934350
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093285013934350
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 7
    ,p_stmt_num => 20
 ,p_stmt_text => 
'CREATE TABLE ANNOUNCEMENT ( ANNOUNCEMENT_ID NUMBER	NOT NULL,   ANNOUNCEMENT_NAME VARCHAR(255) NOT NULL,   DESCRIPTION	VARCHAR(255)	NOT NULL,   USER_ID	NUMBER		NOT NULL,   USER_CREATED	VARCHAR(255)	NOT NULL,   LESSON_NAME	VARCHAR(255),   DEPARTMENT_NAME VARCHAR(255), CONSTRAINT PK_ANNOUNCEMENT_ID PRIMARY KEY (ANNOUNCEMENT_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934350
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934351
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093382349934351
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 8
    ,p_stmt_num => 23
 ,p_stmt_text => 
'CREATE SEQUENCE ANNOUNCEMENT_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934351
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934351
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093415859934351
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 9
    ,p_stmt_num => 26
 ,p_stmt_text => 
'CREATE TABLE LESSON ( LESSON_ID	NUMBER		NOT NULL,   LESSON_NAME	VARCHAR(255)	NOT NULL,   DESCRIPTION	VARCHAR(255)	NOT NULL,   LESSON_DATE	DATE		NOT NULL,   DEPARTMENT_NAME VARCHAR(255)	NOT NULL,   TEACHER	VARCHAR(255), CONSTRAINT PK_LESSON_ID PRIMARY KEY (LESSON_ID), CONSTRAINT LESSON_CON UNIQUE (LESSON_NAME) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934351
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934352
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093544369934352
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 10
    ,p_stmt_num => 29
 ,p_stmt_text => 
'CREATE SEQUENCE LESSON_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934352
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934352
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093627496934352
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 11
    ,p_stmt_num => 32
 ,p_stmt_text => 
'CREATE TABLE ASSIGNMENT ( ASSIGNMENT_ID	NUMBER		NOT NULL,   ASSIGNMENT_NAME VARCHAR(255)	NOT NULL,   DESCRIPTION	VARCHAR(255)	NOT NULL,   START_DATE	DATE		NOT NULL,   END_DATE	DATE		NOT NULL,   ASSIGNMENT_STATUS VARCHAR(255) NOT NULL,   LESSON_NAME	VARCHAR(255)	NOT NULL, CONSTRAINT PK_ASSIGNMENT_ID PRIMARY KEY (ASSIGNMENT_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934352
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934353
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093762474934353
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 12
    ,p_stmt_num => 35
 ,p_stmt_text => 
'CREATE SEQUENCE ASSIGNMENT_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934353
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934353
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093832562934353
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 13
    ,p_stmt_num => 38
 ,p_stmt_text => 
'CREATE TABLE SUBMISSION ( SUBMISSION_ID	NUMBER		NOT NULL,   ASSIGNMENT_ID NUMBER		NOT NULL,   ASSIGNMENT_NAME VARCHAR(255)	NOT NULL,   STUDENT_NAME	VARCHAR(255)	NOT NULL,   AM_NUMBER	NUMBER		NOT NULL,   FILE_SUBMITTED BLOB,   GRADE		NUMBER, CONSTRAINT PK_SUBMISSION_ID PRIMARY KEY (SUBMISSION_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934353
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934354
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9093923262934354
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 14
    ,p_stmt_num => 41
 ,p_stmt_text => 
'CREATE SEQUENCE SUBMISSION_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934354
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934354
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094035695934354
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 15
    ,p_stmt_num => 44
 ,p_stmt_text => 
'CREATE TABLE LESSON_STUDENT ( LESSON_STUDENT_ID NUMBER	NOT NULL,   STUDENT_NAME	VARCHAR(255)	NOT NULL,   AM_NUMBER	NUMBER		NOT NULL,   LESSON_NAME	VARCHAR(255)	NOT NULL,   GRADE		NUMBER, CONSTRAINT PK_LESSON_STUDENT_ID PRIMARY KEY (LESSON_STUDENT_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934354
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934355
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094192347934355
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 16
    ,p_stmt_num => 47
 ,p_stmt_text => 
'CREATE SEQUENCE LESSON_STUDENT_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934355
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934355
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094224739934355
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 17
    ,p_stmt_num => 50
 ,p_stmt_text => 
'CREATE TABLE USER_LANGUAGE ( USER_LANGUAGE_ID NUMBER	NOT NULL,   USER_ID	NUMBER		NOT NULL,   LANGUAGE	VARCHAR(255)	NOT NULL, CONSTRAINT PK_USER_LANGUAGE_ID PRIMARY KEY (USER_LANGUAGE_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934355
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934356
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094331315934356
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 18
    ,p_stmt_num => 53
 ,p_stmt_text => 
'CREATE SEQUENCE USER_LANGUAGE_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934356
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934356
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094495860934356
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 19
    ,p_stmt_num => 56
 ,p_stmt_text => 
'CREATE TABLE USER_EVENTS ( USER_EVENTS_ID NUMBER		NOT NULL,   EVENT_ID	NUMBER		NOT NULL,   EVENT_NAME	VARCHAR(255)	NOT NULL,   USER_ID	NUMBER		NOT NULL,   FULLNAME	VARCHAR(255)	NOT NULL,   IS_ACCEPTED   VARCHAR(255), CONSTRAINT PK_USER_EVENTS_ID PRIMARY KEY (USER_EVENTS_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934356
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934357
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094596813934357
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 20
    ,p_stmt_num => 59
 ,p_stmt_text => 
'CREATE SEQUENCE USER_EVENTS_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934357
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934357
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094680541934357
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 21
    ,p_stmt_num => 62
 ,p_stmt_text => 
'CREATE TABLE MESSAGES ( MESSAGES_ID NUMBER		NOT NULL,   USER_ID_1   NUMBER		NOT NULL,   FULLNAME_1  VARCHAR(255) 	NOT NULL,   USER_ID_2   NUMBER		NOT NULL,   FULLNAME_2  VARCHAR(255) 	NOT NULL,   MESSAGE     VARCHAR(255) 	NOT NULL, CONSTRAINT PK_MESSAGES_ID PRIMARY KEY (MESSAGES_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934357
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934357
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094725265934357
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 22
    ,p_stmt_num => 65
 ,p_stmt_text => 
'CREATE SEQUENCE MESSAGES_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934358
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934358
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094822847934358
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 23
    ,p_stmt_num => 68
 ,p_stmt_text => 
'CREATE TABLE SKILLS ( SKILLS_ID	NUMBER		NOT NULL,   SKILL_NAME	VARCHAR(255) 	NOT NULL, CONSTRAINT PK_SKILLS_ID PRIMARY KEY (SKILLS_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934358
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934358
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9094938167934358
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 24
    ,p_stmt_num => 71
 ,p_stmt_text => 
'CREATE SEQUENCE SKILLS_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934358
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934358
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095052664934358
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 25
    ,p_stmt_num => 74
 ,p_stmt_text => 
'CREATE TABLE USER_SKILLS ( USER_SKILLS_ID NUMBER		NOT NULL,   USER_ID	NUMBER		NOT NULL,   SKILL_NAME	VARCHAR(255)	NOT NULL,   BUSINESS_AREA VARCHAR(255)	NOT NULL, CONSTRAINT PK_USER_SKILLS_ID PRIMARY KEY (USER_SKILLS_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934358
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934359
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095101525934359
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 26
    ,p_stmt_num => 77
 ,p_stmt_text => 
'CREATE SEQUENCE USER_SKILLS_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934359
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934359
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095252595934359
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 27
    ,p_stmt_num => 80
 ,p_stmt_text => 
'CREATE TABLE USER_EDUCATION ( USER_EDUCATION_ID NUMBER	NOT NULL,   USER_ID	NUMBER		NOT NULL,   EDUCATION	VARCHAR(255)	NOT NULL, CONSTRAINT PK_USER_EDUCATION_ID PRIMARY KEY (USER_EDUCATION_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934359
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934360
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095382285934360
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 28
    ,p_stmt_num => 83
 ,p_stmt_text => 
'CREATE SEQUENCE USER_EDUCATION_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934360
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934360
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095431652934360
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 29
    ,p_stmt_num => 86
 ,p_stmt_text => 
'CREATE TABLE FRIENDS ( FRIENDS_ID NUMBER		NOT NULL,   USER_ID_1   NUMBER		NOT NULL,   FULLNAME_1  VARCHAR(255) 	NOT NULL,   USER_ID_2   NUMBER		NOT NULL,   FULLNAME_2  VARCHAR(255) 	NOT NULL, CONSTRAINT PK_FRIENDS_ID PRIMARY KEY (FRIENDS_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934360
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934360
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095544837934360
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 30
    ,p_stmt_num => 89
 ,p_stmt_text => 
'CREATE SEQUENCE FRIENDS_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934360
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934361
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095621122934361
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 31
    ,p_stmt_num => 92
 ,p_stmt_text => 
'CREATE TABLE FRIEND_REQUEST ( FRIEND_REQUEST_ID NUMBER	NOT NULL,   USER_ID_1   NUMBER		NOT NULL,   FULLNAME_1  VARCHAR(255) 	NOT NULL,   USER_ID_2   NUMBER		NOT NULL,   FULLNAME_2  VARCHAR(255) 	NOT NULL,   IS_ACCEPTED VARCHAR(255), CONSTRAINT PK_FRIEND_REQUEST_ID PRIMARY KEY (FRIEND_REQUEST_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934361
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934361
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095755061934361
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 32
    ,p_stmt_num => 95
 ,p_stmt_text => 
'CREATE SEQUENCE FRIEND_REQUEST_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934361
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934361
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095863252934361
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 33
    ,p_stmt_num => 98
 ,p_stmt_text => 
'CREATE TABLE SKILL_REQUEST ( SKILL_REQUEST_ID NUMBER	NOT NULL,   USER_ID   NUMBER		NOT NULL,   FULLNAME  VARCHAR(255) 	NOT NULL,   SUGGESTED_SKILL VARCHAR(255)	NOT NULL,   BUSINESS_AREA   VARCHAR(255)	NOT NULL,   IS_ACCEPTED     VARCHAR(255), CONSTRAINT PK_SKILL_REQUEST_ID PRIMARY KEY (SKILL_REQUEST_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934362
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934362
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9095988283934362
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 34
    ,p_stmt_num => 101
 ,p_stmt_text => 
'CREATE SEQUENCE SKILL_REQUEST_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934362
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934362
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9096075863934362
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 35
    ,p_stmt_num => 104
 ,p_stmt_text => 
'CREATE TABLE ANNOUNCEMENT_COMMENTS ( ANNOUNCEMENT_COMMENTS_ID NUMBER	NOT NULL,   USER_ID   NUMBER			NOT NULL,   FULLNAME  VARCHAR(255) 		NOT NULL,   ANNOUNCEMENT_ID NUMBER		NOT NULL,   COMMENTFIELD	VARCHAR(255) 		NOT NULL, CONSTRAINT PK_ANNOUNCEMENT_COMMENTS_ID PRIMARY KEY (ANNOUNCEMENT_COMMENTS_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934362
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934363
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9096150858934363
    ,p_result_id => 9092538567934342
    ,p_file_id => 9069093324932177
    ,p_seq_id => 36
    ,p_stmt_num => 107
 ,p_stmt_text => 
'CREATE SEQUENCE ANNOUNCEMENT_COMMENTS_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934363
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934363
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '494E5345525420494E544F2055534552530D0A202028555345524E414D452C2050415353574F52442C20454D41494C2C2046554C4C4E414D452C4445504152544D454E545F4E414D452C49535F5359535F41444D494E2C49535F5745425F41444D494E2C';
wwv_flow_api.g_varchar2_table(2) := '49535F54454143484552290D0A202056414C5545532028274D494E414944272C2731323330272C27726F636B657261635F6463407961686F6F2E6772272C274E696B6F73204D696E6169646973272C274E6F6E65272C2731272C2731272C273127293B0D';
wwv_flow_api.g_varchar2_table(3) := '0A0D0A494E5345525420494E544F2055534552530D0A202028555345524E414D452C2050415353574F52442C20454D41494C2C2046554C4C4E414D452C4445504152544D454E545F4E414D452C49535F5359535F41444D494E2C49535F5745425F41444D';
wwv_flow_api.g_varchar2_table(4) := '494E2C49535F54454143484552290D0A202056414C5545532028275345435245544152494154272C2731323330272C27726F636B657261636463407961686F6F2E6772272C275345435245544152494154272C274E6F6E65272C2730272C2731272C2731';
wwv_flow_api.g_varchar2_table(5) := '27293B0D0A0D0A494E5345525420494E544F2055534552530D0A202028555345524E414D452C2050415353574F52442C20454D41494C2C2046554C4C4E414D452C4445504152544D454E545F4E414D452C49535F5359535F41444D494E2C49535F574542';
wwv_flow_api.g_varchar2_table(6) := '5F41444D494E2C49535F54454143484552290D0A202056414C55455320282754454143484552272C2731323330272C27726F636B65725F61636463407961686F6F2E6772272C2754454143484552272C274E6F6E65272C2730272C2730272C273127293B';
wwv_flow_api.g_varchar2_table(7) := '0D0A0D0A494E5345525420494E544F2055534552530D0A202028555345524E414D452C2050415353574F52442C20454D41494C2C2046554C4C4E414D452C4445504152544D454E545F4E414D452C49535F5359535F41444D494E2C49535F5745425F4144';
wwv_flow_api.g_varchar2_table(8) := '4D494E2C49535F54454143484552290D0A202056414C55455320282753545544454E54272C2731323330272C27726F636B65725F616364666463407961686F6F2E6772272C2753545544454E54272C274E6F6E65272C2730272C2730272C273027293B0D';
wwv_flow_api.g_varchar2_table(9) := '0A0D0A2020';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 9069220165933803,
    p_flow_id => 4500,
    p_name => '9069220165933803/DB_INSERT.txt',
    p_pathid => null,
    p_filename => 'DB_INSERT.txt',
    p_title => 'DB_INSERT.txt',
    p_mime_type => 'text/plain',
    p_dad_charset => 'ascii',
    p_created_by => 'SYSDBA',
    p_created_on => to_date('201808182149','YYYYMMDDHH24MI'),
    p_updated_by => 'SYSDBA',
    p_updated_on => to_date('201808182149','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9114806141935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 2
    ,p_src_line_number => 3
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115233947935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 5
    ,p_src_line_number => 7
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115689179935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 8
    ,p_src_line_number => 11
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9116066247935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 11
    ,p_src_line_number => 15
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9114514788935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO USERS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9114643344935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 20
    ,p_length => 93
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9114788122935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 114
    ,p_length => 85
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  VALUES (''MINAID'',''1230'',''rockerac_dc@yahoo.gr'',''Nikos Minaidis'',''None'',''1'',''1'',''1'')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9114900128935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 4
    ,p_src_line_number => 5
    ,p_offset => 204
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO USERS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115047232935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 4
    ,p_src_line_number => 6
    ,p_offset => 223
    ,p_length => 93
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115196539935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 4
    ,p_src_line_number => 7
    ,p_offset => 317
    ,p_length => 86
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  VALUES (''SECRETARIAT'',''1230'',''rockeracdc@yahoo.gr'',''SECRETARIAT'',''None'',''0'',''1'',''1'')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115340234935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 7
    ,p_src_line_number => 9
    ,p_offset => 408
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO USERS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115460513935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 7
    ,p_src_line_number => 10
    ,p_offset => 427
    ,p_length => 93
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115545545935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 7
    ,p_src_line_number => 11
    ,p_offset => 521
    ,p_length => 79
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  VALUES (''TEACHER'',''1230'',''rocker_acdc@yahoo.gr'',''TEACHER'',''None'',''0'',''0'',''1'')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115734415935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 10
    ,p_src_line_number => 13
    ,p_offset => 605
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO USERS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115892798935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 10
    ,p_src_line_number => 14
    ,p_offset => 624
    ,p_length => 93
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9115952357935263
    ,p_file_id => 9069220165933803
    ,p_stmt_number => 10
    ,p_src_line_number => 15
    ,p_offset => 718
    ,p_length => 81
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  VALUES (''STUDENT'',''1230'',''rocker_acdfdc@yahoo.gr'',''STUDENT'',''None'',''0'',''0'',''0'')'
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 9116175218935381,
    p_file_id => 9069220165933803,
    p_job_id => null,
    p_run_by => 'SYSDBA',
    p_run_as => 'ECLASS',
    p_started => to_date('201808182149','YYYYMMDDHH24MI'),
    p_start_time => 17935381,
    p_ended => to_date('201808182149','YYYYMMDDHH24MI'),
    p_end_time => 17935382,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9116241685935381
    ,p_result_id => 9116175218935381
    ,p_file_id => 9069220165933803
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'INSERT INTO USERS   (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER)   VALUES (''MINAID'',''1230'',''rockerac_dc@yahoo.gr'',''Nikos Minaidis'',''None'',''1'',''1'',''1'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17935381
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17935382
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9116358850935382
    ,p_result_id => 9116175218935381
    ,p_file_id => 9069220165933803
    ,p_seq_id => 2
    ,p_stmt_num => 4
 ,p_stmt_text => 
'INSERT INTO USERS   (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER)   VALUES (''SECRETARIAT'',''1230'',''rockeracdc@yahoo.gr'',''SECRETARIAT'',''None'',''0'',''1'',''1'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17935382
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17935382
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9116481249935382
    ,p_result_id => 9116175218935381
    ,p_file_id => 9069220165933803
    ,p_seq_id => 3
    ,p_stmt_num => 7
 ,p_stmt_text => 
'INSERT INTO USERS   (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER)   VALUES (''TEACHER'',''1230'',''rocker_acdc@yahoo.gr'',''TEACHER'',''None'',''0'',''0'',''1'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17935382
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17935382
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9116566165935382
    ,p_result_id => 9116175218935381
    ,p_file_id => 9069220165933803
    ,p_seq_id => 4
    ,p_stmt_num => 10
 ,p_stmt_text => 
'INSERT INTO USERS   (USERNAME, PASSWORD, EMAIL, FULLNAME,DEPARTMENT_NAME,IS_SYS_ADMIN,IS_WEB_ADMIN,IS_TEACHER)   VALUES (''STUDENT'',''1230'',''rocker_acdfdc@yahoo.gr'',''STUDENT'',''None'',''0'',''0'',''0'')'
    ,p_result_size => 0
    ,p_result_rows => 1
    ,p_msg => '1 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17935382
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17935382
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '0D0A0D0A435245415445205441424C45205155495A310D0A28205155495A315F4944094E554D42455209094E4F54204E554C4C2C0D0A20205155455354494F4E3109564152434841522832353529094E4F54204E554C4C2C0D0A20205155455354494F4E';
wwv_flow_api.g_varchar2_table(2) := '3209564152434841522832353529094E4F54204E554C4C2C0D0A20205155455354494F4E3309564152434841522832353529094E4F54204E554C4C2C0D0A2020555345525F4944094E554D42455209094E4F54204E554C4C2C0D0A2020464C414709094E';
wwv_flow_api.g_varchar2_table(3) := '554D4245522C09090D0A2020434F4E53545241494E5420504B5F5155495A315F4944205052494D415259204B455920285155495A315F4944290D0A293B0D0A0D0A4352454154452053455155454E4345205155495A315F49442053544152542057495448';
wwv_flow_api.g_varchar2_table(4) := '20313B0D0A0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F5155495A3120200D0A20206265666F726520696E73657274206F6E205155495A3120202020202020202020202020200D0A2020666F72206561636820726F';
wwv_flow_api.g_varchar2_table(5) := '77200D0A626567696E20200D0A20206966203A4E45572E5155495A315F4944206973206E756C6C207468656E0D0A2020202073656C656374205155495A315F49442E6E65787476616C20696E746F203A4E45572E5155495A315F49442066726F6D206475';
wwv_flow_api.g_varchar2_table(6) := '616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 9117428378420822,
    p_flow_id => 4500,
    p_name => '9117428378420822/QUIZ.txt',
    p_pathid => null,
    p_filename => 'QUIZ.txt',
    p_title => 'QUIZ.txt',
    p_mime_type => 'text/plain',
    p_dad_charset => 'ascii',
    p_created_by => 'SYSDBA',
    p_created_on => to_date('201808182310','YYYYMMDDHH24MI'),
    p_updated_by => 'SYSDBA',
    p_updated_on => to_date('201808182310','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118499492421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 4
    ,p_src_line_number => 11
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118650256421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 7
    ,p_src_line_number => 13
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9119506989421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 11
    ,p_src_line_number => 24
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9117521929421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 3
    ,p_offset => 5
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE QUIZ1 '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9117661101421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 4
    ,p_offset => 25
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '( QUIZ1_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9117775112421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 5
    ,p_offset => 55
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  QUESTION1	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9117854014421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 6
    ,p_offset => 91
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  QUESTION2	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9117952390421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 7
    ,p_offset => 127
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  QUESTION3	VARCHAR(255)	NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118008746421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 8
    ,p_offset => 163
    ,p_length => 28
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  USER_ID	NUMBER		NOT NULL, '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118170596421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 9
    ,p_offset => 192
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FLAG		NUMBER,		 '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118240806421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 10
    ,p_offset => 211
    ,p_length => 48
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  CONSTRAINT PK_QUIZ1_ID PRIMARY KEY (QUIZ1_ID) '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118332305421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 3
    ,p_src_line_number => 11
    ,p_offset => 260
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118595754421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 6
    ,p_src_line_number => 13
    ,p_offset => 266
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE SEQUENCE QUIZ1_ID START WITH 1'
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118738529421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 16
    ,p_offset => 310
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_QUIZ1   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118862968421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 17
    ,p_offset => 348
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on QUIZ1               '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9118955137421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 18
    ,p_offset => 388
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9119040434421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 19
    ,p_offset => 405
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9119129204421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 20
    ,p_offset => 414
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.QUIZ1_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9119295881421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 21
    ,p_offset => 447
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select QUIZ1_ID.nextval into :NEW.QUIZ1_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9119319361421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 22
    ,p_offset => 506
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9119444703421203
    ,p_file_id => 9117428378420822
    ,p_stmt_number => 10
    ,p_src_line_number => 23
    ,p_offset => 517
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 9119613078421304,
    p_file_id => 9117428378420822,
    p_job_id => null,
    p_run_by => 'SYSDBA',
    p_run_as => 'ECLASS',
    p_started => to_date('201808182310','YYYYMMDDHH24MI'),
    p_start_time => 18421304,
    p_ended => to_date('201808182310','YYYYMMDDHH24MI'),
    p_end_time => 18421306,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9119771090421304
    ,p_result_id => 9119613078421304
    ,p_file_id => 9117428378420822
    ,p_seq_id => 1
    ,p_stmt_num => 3
 ,p_stmt_text => 
'CREATE TABLE QUIZ1 ( QUIZ1_ID	NUMBER		NOT NULL,   QUESTION1	VARCHAR(255)	NOT NULL,   QUESTION2	VARCHAR(255)	NOT NULL,   QUESTION3	VARCHAR(255)	NOT NULL,   USER_ID	NUMBER		NOT NULL,   FLAG		NUMBER,		   CONSTRAINT PK_QUIZ1_ID PRIMARY KEY (QUIZ1_ID) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182310','YYYYMMDDHH24MI')
    ,p_start_time => 18421304
    ,p_ended => to_date('201808182310','YYYYMMDDHH24MI')
    ,p_end_time => 18421305
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182310','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9119855479421305
    ,p_result_id => 9119613078421304
    ,p_file_id => 9117428378420822
    ,p_seq_id => 2
    ,p_stmt_num => 6
 ,p_stmt_text => 
'CREATE SEQUENCE QUIZ1_ID START WITH 1'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Sequence created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182310','YYYYMMDDHH24MI')
    ,p_start_time => 18421305
    ,p_ended => to_date('201808182310','YYYYMMDDHH24MI')
    ,p_end_time => 18421306
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182310','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9119965327421306
    ,p_result_id => 9119613078421304
    ,p_file_id => 9117428378420822
    ,p_seq_id => 3
    ,p_stmt_num => 10
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_QUIZ1     before insert on QUIZ1                 for each row  begin     if :NEW.QUIZ1_ID is null then     select QUIZ1_ID.nextval into :NEW.QUIZ1_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182310','YYYYMMDDHH24MI')
    ,p_start_time => 18421306
    ,p_ended => to_date('201808182310','YYYYMMDDHH24MI')
    ,p_end_time => 18421306
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182310','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '435245415445204F52205245504C41434520747269676765722042495F555345525320200D0A20206265666F726520696E73657274206F6E20555345525320202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E';
wwv_flow_api.g_varchar2_table(2) := '20200D0A20206966203A4E45572E555345525F4944206973206E756C6C207468656E0D0A2020202073656C65637420555345525F49442E6E65787476616C20696E746F203A4E45572E555345525F49442066726F6D206475616C3B0D0A2020656E642069';
wwv_flow_api.g_varchar2_table(3) := '663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F4445504152544D454E54200D0A20206265666F726520696E73657274206F6E204445504152544D454E54202020202020202020202020200D';
wwv_flow_api.g_varchar2_table(4) := '0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E4445504152544D454E545F4944206973206E756C6C207468656E0D0A2020202073656C656374204445504152544D454E545F49442E6E65787476616C20696E';
wwv_flow_api.g_varchar2_table(5) := '746F203A4E45572E4445504152544D454E545F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F4556454E54200D0A2020626566';
wwv_flow_api.g_varchar2_table(6) := '6F726520696E73657274206F6E204556454E5420202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E4556454E545F4944206973206E756C6C207468656E0D0A202020207365';
wwv_flow_api.g_varchar2_table(7) := '6C656374204556454E545F49442E6E65787476616C20696E746F203A4E45572E4556454E545F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A0D0A435245415445204F52205245504C414345207472696767';
wwv_flow_api.g_varchar2_table(8) := '65722042495F414E4E4F554E43454D454E540D0A20206265666F726520696E73657274206F6E20414E4E4F554E43454D454E54202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45';
wwv_flow_api.g_varchar2_table(9) := '572E414E4E4F554E43454D454E545F4944206973206E756C6C207468656E0D0A2020202073656C65637420414E4E4F554E43454D454E545F49442E6E65787476616C20696E746F203A4E45572E414E4E4F554E43454D454E545F49442066726F6D206475';
wwv_flow_api.g_varchar2_table(10) := '616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F4C4553534F4E0D0A20206265666F726520696E73657274206F6E204C4553534F4E2020202020202020202020';
wwv_flow_api.g_varchar2_table(11) := '20200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E4C4553534F4E5F4944206973206E756C6C207468656E0D0A2020202073656C656374204C4553534F4E5F49442E6E65787476616C20696E746F203A4E';
wwv_flow_api.g_varchar2_table(12) := '45572E4C4553534F4E5F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F41535349474E4D454E540D0A20206265666F726520696E73';
wwv_flow_api.g_varchar2_table(13) := '657274206F6E2041535349474E4D454E54202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E41535349474E4D454E545F4944206973206E756C6C207468656E0D0A20202020';
wwv_flow_api.g_varchar2_table(14) := '73656C6563742041535349474E4D454E545F49442E6E65787476616C20696E746F203A4E45572E41535349474E4D454E545F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F5220524550';
wwv_flow_api.g_varchar2_table(15) := '4C41434520747269676765722042495F5355424D495353494F4E0D0A20206265666F726520696E73657274206F6E205355424D495353494F4E202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A2020';
wwv_flow_api.g_varchar2_table(16) := '6966203A4E45572E5355424D495353494F4E5F4944206973206E756C6C207468656E0D0A2020202073656C656374205355424D495353494F4E5F49442E6E65787476616C20696E746F203A4E45572E5355424D495353494F4E5F49442066726F6D206475';
wwv_flow_api.g_varchar2_table(17) := '616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F4C4553534F4E5F53545544454E540D0A20206265666F726520696E73657274206F6E204C4553534F4E5F5354';
wwv_flow_api.g_varchar2_table(18) := '5544454E54202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E4C4553534F4E5F53545544454E545F4944206973206E756C6C207468656E0D0A2020202073656C656374204C';
wwv_flow_api.g_varchar2_table(19) := '4553534F4E5F53545544454E545F49442E6E65787476616C20696E746F203A4E45572E4C4553534F4E5F53545544454E545F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A0D0A435245415445204F522052';
wwv_flow_api.g_varchar2_table(20) := '45504C41434520747269676765722042495F555345525F4C414E47554147450D0A20206265666F726520696E73657274206F6E20555345525F4C414E4755414745202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567';
wwv_flow_api.g_varchar2_table(21) := '696E20200D0A20206966203A4E45572E555345525F4C414E47554147455F4944206973206E756C6C207468656E0D0A2020202073656C65637420555345525F4C414E47554147455F49442E6E65787476616C20696E746F203A4E45572E555345525F4C41';
wwv_flow_api.g_varchar2_table(22) := '4E47554147455F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F555345525F4556454E54530D0A20206265666F726520696E736572';
wwv_flow_api.g_varchar2_table(23) := '74206F6E20555345525F4556454E5453202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E555345525F4556454E54535F4944206973206E756C6C207468656E0D0A20202020';
wwv_flow_api.g_varchar2_table(24) := '73656C65637420555345525F4556454E54535F49442E6E65787476616C20696E746F203A4E45572E555345525F4556454E54535F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F522052';
wwv_flow_api.g_varchar2_table(25) := '45504C41434520747269676765722042495F4D455353414745530D0A20206265666F726520696E73657274206F6E204D45535341474553202020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966';
wwv_flow_api.g_varchar2_table(26) := '203A4E45572E4D455353414745535F4944206973206E756C6C207468656E0D0A2020202073656C656374204D455353414745535F49442E6E65787476616C20696E746F203A4E45572E4D455353414745535F49442066726F6D206475616C3B0D0A202065';
wwv_flow_api.g_varchar2_table(27) := '6E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F534B494C4C530D0A20206265666F726520696E73657274206F6E20534B494C4C53202020202020202020202020200D0A2020666F';
wwv_flow_api.g_varchar2_table(28) := '72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E534B494C4C535F4944206973206E756C6C207468656E0D0A2020202073656C65637420534B494C4C535F49442E6E65787476616C20696E746F203A4E45572E534B494C4C';
wwv_flow_api.g_varchar2_table(29) := '535F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F555345525F534B494C4C530D0A20206265666F726520696E73657274206F6E20';
wwv_flow_api.g_varchar2_table(30) := '555345525F534B494C4C532020202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E555345525F534B494C4C535F4944206973206E756C6C207468656E0D0A2020202073656C656374';
wwv_flow_api.g_varchar2_table(31) := '20555345525F534B494C4C535F49442E6E65787476616C20696E746F203A4E45572E555345525F534B494C4C535F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C414345';
wwv_flow_api.g_varchar2_table(32) := '20747269676765722042495F555345525F454455434154494F4E0D0A20206265666F726520696E73657274206F6E20555345525F454455434154494F4E20202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A';
wwv_flow_api.g_varchar2_table(33) := '20206966203A4E45572E555345525F454455434154494F4E5F4944206973206E756C6C207468656E0D0A2020202073656C65637420555345525F454455434154494F4E5F49442E6E65787476616C20696E746F203A4E45572E555345525F454455434154';
wwv_flow_api.g_varchar2_table(34) := '494F4E5F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F465249454E44530D0A20206265666F726520696E73657274206F6E204652';
wwv_flow_api.g_varchar2_table(35) := '49454E4453202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E465249454E44535F4944206973206E756C6C207468656E0D0A2020202073656C65637420465249454E44535F49442E';
wwv_flow_api.g_varchar2_table(36) := '6E65787476616C20696E746F203A4E45572E465249454E44535F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F465249454E445F52';
wwv_flow_api.g_varchar2_table(37) := '4551554553540D0A20206265666F726520696E73657274206F6E20465249454E445F52455155455354202020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E465249454E445F52455155';
wwv_flow_api.g_varchar2_table(38) := '4553545F4944206973206E756C6C207468656E0D0A2020202073656C65637420465249454E445F524551554553545F49442E6E65787476616C20696E746F203A4E45572E465249454E445F524551554553545F49442066726F6D206475616C3B0D0A2020';
wwv_flow_api.g_varchar2_table(39) := '656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C41434520747269676765722042495F534B494C4C5F524551554553540D0A20206265666F726520696E73657274206F6E20534B494C4C5F5245515545535420202020';
wwv_flow_api.g_varchar2_table(40) := '2020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D0A20206966203A4E45572E534B494C4C5F524551554553545F4944206973206E756C6C207468656E0D0A2020202073656C65637420534B494C4C5F524551554553545F';
wwv_flow_api.g_varchar2_table(41) := '49442E6E65787476616C20696E746F203A4E45572E534B494C4C5F524551554553545F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A435245415445204F52205245504C4143452074726967676572204249';
wwv_flow_api.g_varchar2_table(42) := '5F414E4E4F554E43454D454E545F434F4D4D454E54530D0A20206265666F726520696E73657274206F6E20414E4E4F554E43454D454E545F434F4D4D454E54532020202020202020200D0A2020666F72206561636820726F77200D0A626567696E20200D';
wwv_flow_api.g_varchar2_table(43) := '0A20206966203A4E45572E414E4E4F554E43454D454E545F434F4D4D454E54535F4944206973206E756C6C207468656E0D0A2020202073656C65637420414E4E4F554E43454D454E545F434F4D4D454E54535F49442E6E65787476616C20696E746F203A';
wwv_flow_api.g_varchar2_table(44) := '4E45572E414E4E4F554E43454D454E545F434F4D4D454E54535F49442066726F6D206475616C3B0D0A2020656E642069663B0D0A656E643B0D0A2F0D0A0D0A0D0A0D0A';
end;
/
begin
  wwv_flow_api.create_script (
    p_id => 9069143354933037,
    p_flow_id => 4500,
    p_name => '9069143354933037/TRIGGERS.txt',
    p_pathid => null,
    p_filename => 'TRIGGERS.txt',
    p_title => 'TRIGGERS.txt',
    p_mime_type => 'text/plain',
    p_dad_charset => 'ascii',
    p_created_by => 'SYSDBA',
    p_created_on => to_date('201808182149','YYYYMMDDHH24MI'),
    p_updated_by => 'SYSDBA',
    p_updated_on => to_date('201808182149','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_api.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097219800934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 2
    ,p_src_line_number => 9
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098181188934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 5
    ,p_src_line_number => 19
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099017964934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 9
    ,p_src_line_number => 30
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099951988934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 13
    ,p_src_line_number => 41
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100841013934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 16
    ,p_src_line_number => 51
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101738619934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 19
    ,p_src_line_number => 61
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102662217934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 22
    ,p_src_line_number => 71
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103524196934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 25
    ,p_src_line_number => 81
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104414334934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 29
    ,p_src_line_number => 92
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105318216934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 32
    ,p_src_line_number => 102
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106257033934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 35
    ,p_src_line_number => 112
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107150417934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 38
    ,p_src_line_number => 122
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108071543934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 41
    ,p_src_line_number => 132
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108985704934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 44
    ,p_src_line_number => 142
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109881207934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 47
    ,p_src_line_number => 152
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110798462934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 50
    ,p_src_line_number => 162
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111635299934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 53
    ,p_src_line_number => 172
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9112536665934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 56
    ,p_src_line_number => 182
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9096454700934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_USERS   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9096520636934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 39
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on USERS               '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9096692602934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 79
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9096784481934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 96
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9096877478934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 105
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.USER_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9096981161934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 137
    ,p_length => 56
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select USER_ID.nextval into :NEW.USER_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097079722934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 194
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097143086934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 205
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097322823934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 11
    ,p_offset => 216
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_DEPARTMENT  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097419099934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 12
    ,p_offset => 258
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on DEPARTMENT              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097595238934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 13
    ,p_offset => 302
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097652086934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 14
    ,p_offset => 319
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097768721934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 15
    ,p_offset => 328
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.DEPARTMENT_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097802668934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 16
    ,p_offset => 366
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select DEPARTMENT_ID.nextval into :NEW.DEPARTMENT_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9097915507934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 17
    ,p_offset => 435
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098083324934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 4
    ,p_src_line_number => 18
    ,p_offset => 446
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098254778934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 22
    ,p_offset => 459
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_EVENT  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098350392934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 23
    ,p_offset => 496
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on EVENT               '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098462894934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 24
    ,p_offset => 536
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098570827934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 25
    ,p_offset => 553
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098698583934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 26
    ,p_offset => 562
    ,p_length => 32
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.EVENT_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098724859934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 27
    ,p_offset => 595
    ,p_length => 58
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select EVENT_ID.nextval into :NEW.EVENT_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098802643934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 28
    ,p_offset => 654
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9098977040934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 8
    ,p_src_line_number => 29
    ,p_offset => 665
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099112474934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 33
    ,p_offset => 678
    ,p_length => 42
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_ANNOUNCEMENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099285442934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 34
    ,p_offset => 721
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on ANNOUNCEMENT              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099307325934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 35
    ,p_offset => 767
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099460691934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 36
    ,p_offset => 784
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099535604934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 37
    ,p_offset => 793
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.ANNOUNCEMENT_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099617771934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 38
    ,p_offset => 833
    ,p_length => 72
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select ANNOUNCEMENT_ID.nextval into :NEW.ANNOUNCEMENT_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099700070934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 39
    ,p_offset => 906
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9099898598934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 12
    ,p_src_line_number => 40
    ,p_offset => 917
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100018157934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 43
    ,p_offset => 928
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_LESSON '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100146291934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 44
    ,p_offset => 965
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on LESSON              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100256636934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 45
    ,p_offset => 1005
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100352343934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 46
    ,p_offset => 1022
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100487039934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 47
    ,p_offset => 1031
    ,p_length => 33
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.LESSON_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100550900934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 48
    ,p_offset => 1065
    ,p_length => 60
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select LESSON_ID.nextval into :NEW.LESSON_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100667579934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 49
    ,p_offset => 1126
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100783632934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 15
    ,p_src_line_number => 50
    ,p_offset => 1137
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9100988439934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 53
    ,p_offset => 1148
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_ASSIGNMENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101071385934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 54
    ,p_offset => 1189
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on ASSIGNMENT              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101109128934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 55
    ,p_offset => 1233
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101265769934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 56
    ,p_offset => 1250
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101392222934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 57
    ,p_offset => 1259
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.ASSIGNMENT_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101403527934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 58
    ,p_offset => 1297
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select ASSIGNMENT_ID.nextval into :NEW.ASSIGNMENT_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101500217934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 59
    ,p_offset => 1366
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101667452934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 18
    ,p_src_line_number => 60
    ,p_offset => 1377
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101847098934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 63
    ,p_offset => 1388
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_SUBMISSION '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9101980619934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 64
    ,p_offset => 1429
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on SUBMISSION              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102097927934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 65
    ,p_offset => 1473
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102125265934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 66
    ,p_offset => 1490
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102277934934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 67
    ,p_offset => 1499
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.SUBMISSION_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102363214934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 68
    ,p_offset => 1537
    ,p_length => 68
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select SUBMISSION_ID.nextval into :NEW.SUBMISSION_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102468861934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 69
    ,p_offset => 1606
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102545538934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 21
    ,p_src_line_number => 70
    ,p_offset => 1617
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103203712934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 78
    ,p_offset => 1789
    ,p_length => 76
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select LESSON_STUDENT_ID.nextval into :NEW.LESSON_STUDENT_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103345599934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 79
    ,p_offset => 1866
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103461084934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 80
    ,p_offset => 1877
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102789452934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 73
    ,p_offset => 1628
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_LESSON_STUDENT '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102846556934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 74
    ,p_offset => 1673
    ,p_length => 47
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on LESSON_STUDENT              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9102906067934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 75
    ,p_offset => 1721
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103016810934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 76
    ,p_offset => 1738
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103104243934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 24
    ,p_src_line_number => 77
    ,p_offset => 1747
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.LESSON_STUDENT_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103622338934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 84
    ,p_offset => 1890
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_USER_LANGUAGE '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103764757934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 85
    ,p_offset => 1934
    ,p_length => 46
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on USER_LANGUAGE              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103851684934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 86
    ,p_offset => 1981
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9103901501934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 87
    ,p_offset => 1998
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104040606934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 88
    ,p_offset => 2007
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.USER_LANGUAGE_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104174878934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 89
    ,p_offset => 2048
    ,p_length => 74
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select USER_LANGUAGE_ID.nextval into :NEW.USER_LANGUAGE_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104259108934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 90
    ,p_offset => 2123
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104333611934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 28
    ,p_src_line_number => 91
    ,p_offset => 2134
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104555074934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 94
    ,p_offset => 2145
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_USER_EVENTS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104674749934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 95
    ,p_offset => 2187
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on USER_EVENTS              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104740287934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 96
    ,p_offset => 2232
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104817494934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 97
    ,p_offset => 2249
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9104901790934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 98
    ,p_offset => 2258
    ,p_length => 38
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.USER_EVENTS_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105069418934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 99
    ,p_offset => 2297
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select USER_EVENTS_ID.nextval into :NEW.USER_EVENTS_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105100203934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 100
    ,p_offset => 2368
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105211284934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 31
    ,p_src_line_number => 101
    ,p_offset => 2379
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105475179934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 104
    ,p_offset => 2390
    ,p_length => 38
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_MESSAGES '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105507137934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 105
    ,p_offset => 2429
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on MESSAGES              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105641613934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 106
    ,p_offset => 2471
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105715973934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 107
    ,p_offset => 2488
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105880646934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 108
    ,p_offset => 2497
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.MESSAGES_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9105961250934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 109
    ,p_offset => 2533
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select MESSAGES_ID.nextval into :NEW.MESSAGES_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106040896934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 110
    ,p_offset => 2598
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106149485934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 34
    ,p_src_line_number => 111
    ,p_offset => 2609
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106311910934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 114
    ,p_offset => 2620
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_SKILLS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106449285934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 115
    ,p_offset => 2657
    ,p_length => 39
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on SKILLS              '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106502325934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 116
    ,p_offset => 2697
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106613175934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 117
    ,p_offset => 2714
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106720241934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 118
    ,p_offset => 2723
    ,p_length => 33
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.SKILLS_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106889664934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 119
    ,p_offset => 2757
    ,p_length => 60
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select SKILLS_ID.nextval into :NEW.SKILLS_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9106998168934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 120
    ,p_offset => 2818
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107023934934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 37
    ,p_src_line_number => 121
    ,p_offset => 2829
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107220626934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 124
    ,p_offset => 2840
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_USER_SKILLS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107390611934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 125
    ,p_offset => 2882
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on USER_SKILLS             '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107416228934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 126
    ,p_offset => 2926
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107511398934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 127
    ,p_offset => 2943
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107676998934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 128
    ,p_offset => 2952
    ,p_length => 38
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.USER_SKILLS_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107775891934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 129
    ,p_offset => 2991
    ,p_length => 70
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select USER_SKILLS_ID.nextval into :NEW.USER_SKILLS_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107814695934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 130
    ,p_offset => 3062
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9107921225934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 40
    ,p_src_line_number => 131
    ,p_offset => 3073
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108133727934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 134
    ,p_offset => 3084
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_USER_EDUCATION '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108273113934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 135
    ,p_offset => 3129
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on USER_EDUCATION            '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108359654934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 136
    ,p_offset => 3175
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108470931934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 137
    ,p_offset => 3192
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108569312934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 138
    ,p_offset => 3201
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.USER_EDUCATION_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108619855934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 139
    ,p_offset => 3243
    ,p_length => 76
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select USER_EDUCATION_ID.nextval into :NEW.USER_EDUCATION_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108742951934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 140
    ,p_offset => 3320
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9108827676934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 43
    ,p_src_line_number => 141
    ,p_offset => 3331
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109035284934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 144
    ,p_offset => 3342
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_FRIENDS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109109815934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 145
    ,p_offset => 3380
    ,p_length => 37
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on FRIENDS           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109278313934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 146
    ,p_offset => 3418
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109345640934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 147
    ,p_offset => 3435
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109497161934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 148
    ,p_offset => 3444
    ,p_length => 34
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.FRIENDS_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109596776934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 149
    ,p_offset => 3479
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select FRIENDS_ID.nextval into :NEW.FRIENDS_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109687930934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 150
    ,p_offset => 3542
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109748166934776
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 46
    ,p_src_line_number => 151
    ,p_offset => 3553
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9109985582934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 154
    ,p_offset => 3564
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_FRIEND_REQUEST '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110061996934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 155
    ,p_offset => 3609
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on FRIEND_REQUEST           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110194238934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 156
    ,p_offset => 3654
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110234768934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 157
    ,p_offset => 3671
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110353189934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 158
    ,p_offset => 3680
    ,p_length => 41
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.FRIEND_REQUEST_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110423289934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 159
    ,p_offset => 3722
    ,p_length => 76
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select FRIEND_REQUEST_ID.nextval into :NEW.FRIEND_REQUEST_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110566584934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 160
    ,p_offset => 3799
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110623588934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 49
    ,p_src_line_number => 161
    ,p_offset => 3810
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110813194934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 164
    ,p_offset => 3821
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_SKILL_REQUEST '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9110922000934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 165
    ,p_offset => 3865
    ,p_length => 43
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on SKILL_REQUEST           '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111009100934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 166
    ,p_offset => 3909
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111117671934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 167
    ,p_offset => 3926
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111261669934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 168
    ,p_offset => 3935
    ,p_length => 40
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.SKILL_REQUEST_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111392923934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 169
    ,p_offset => 3976
    ,p_length => 74
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select SKILL_REQUEST_ID.nextval into :NEW.SKILL_REQUEST_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111475086934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 170
    ,p_offset => 4051
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111548569934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 52
    ,p_src_line_number => 171
    ,p_offset => 4062
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111796290934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 174
    ,p_offset => 4073
    ,p_length => 51
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE trigger BI_ANNOUNCEMENT_COMMENTS '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111897681934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 175
    ,p_offset => 4125
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  before insert on ANNOUNCEMENT_COMMENTS          '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9111921833934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 176
    ,p_offset => 4176
    ,p_length => 16
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  for each row  '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9112023194934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 177
    ,p_offset => 4193
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'begin   '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9112147904934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 178
    ,p_offset => 4202
    ,p_length => 48
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  if :NEW.ANNOUNCEMENT_COMMENTS_ID is null then '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9112295809934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 179
    ,p_offset => 4251
    ,p_length => 90
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    select ANNOUNCEMENT_COMMENTS_ID.nextval into :NEW.ANNOUNCEMENT_COMMENTS_ID from dual; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9112364321934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 180
    ,p_offset => 4342
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  end if; '
);
end;
/
begin
  wwv_flow_api.create_sw_stmts (
    p_id => 9112495577934777
    ,p_file_id => 9069143354933037
    ,p_stmt_number => 55
    ,p_src_line_number => 181
    ,p_offset => 4353
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'end; '
);
end;
/
begin
  wwv_flow_api.create_sw_results (
    p_id => 9112642419934907,
    p_file_id => 9069143354933037,
    p_job_id => null,
    p_run_by => 'SYSDBA',
    p_run_as => 'ECLASS',
    p_started => to_date('201808182149','YYYYMMDDHH24MI'),
    p_start_time => 17934908,
    p_ended => to_date('201808182149','YYYYMMDDHH24MI'),
    p_end_time => 17934916,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113187804934910
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 5
    ,p_stmt_num => 15
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_LESSON   before insert on LESSON                for each row  begin     if :NEW.LESSON_ID is null then     select LESSON_ID.nextval into :NEW.LESSON_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934910
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934911
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113213046934911
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 6
    ,p_stmt_num => 18
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_ASSIGNMENT   before insert on ASSIGNMENT                for each row  begin     if :NEW.ASSIGNMENT_ID is null then     select ASSIGNMENT_ID.nextval into :NEW.ASSIGNMENT_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934911
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934911
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113328603934911
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 7
    ,p_stmt_num => 21
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_SUBMISSION   before insert on SUBMISSION                for each row  begin     if :NEW.SUBMISSION_ID is null then     select SUBMISSION_ID.nextval into :NEW.SUBMISSION_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934911
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934911
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113460017934911
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 8
    ,p_stmt_num => 24
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_LESSON_STUDENT   before insert on LESSON_STUDENT                for each row  begin     if :NEW.LESSON_STUDENT_ID is null then     select LESSON_STUDENT_ID.nextval into :NEW.LESSON_STUDENT_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934911
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934912
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113535251934912
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 9
    ,p_stmt_num => 28
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_USER_LANGUAGE   before insert on USER_LANGUAGE                for each row  begin     if :NEW.USER_LANGUAGE_ID is null then     select USER_LANGUAGE_ID.nextval into :NEW.USER_LANGUAGE_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934912
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934912
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113619062934912
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 10
    ,p_stmt_num => 31
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_USER_EVENTS   before insert on USER_EVENTS                for each row  begin     if :NEW.USER_EVENTS_ID is null then     select USER_EVENTS_ID.nextval into :NEW.USER_EVENTS_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934912
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934913
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113774025934913
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 11
    ,p_stmt_num => 34
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_MESSAGES   before insert on MESSAGES                for each row  begin     if :NEW.MESSAGES_ID is null then     select MESSAGES_ID.nextval into :NEW.MESSAGES_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934913
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934913
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113880515934913
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 12
    ,p_stmt_num => 37
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_SKILLS   before insert on SKILLS                for each row  begin     if :NEW.SKILLS_ID is null then     select SKILLS_ID.nextval into :NEW.SKILLS_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934913
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934914
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113953003934914
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 13
    ,p_stmt_num => 40
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_USER_SKILLS   before insert on USER_SKILLS               for each row  begin     if :NEW.USER_SKILLS_ID is null then     select USER_SKILLS_ID.nextval into :NEW.USER_SKILLS_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934914
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934914
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9114048335934914
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 14
    ,p_stmt_num => 43
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_USER_EDUCATION   before insert on USER_EDUCATION              for each row  begin     if :NEW.USER_EDUCATION_ID is null then     select USER_EDUCATION_ID.nextval into :NEW.USER_EDUCATION_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934914
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934915
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9114177067934915
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 15
    ,p_stmt_num => 46
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_FRIENDS   before insert on FRIENDS             for each row  begin     if :NEW.FRIENDS_ID is null then     select FRIENDS_ID.nextval into :NEW.FRIENDS_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934915
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934915
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9114271763934915
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 16
    ,p_stmt_num => 49
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_FRIEND_REQUEST   before insert on FRIEND_REQUEST             for each row  begin     if :NEW.FRIEND_REQUEST_ID is null then     select FRIEND_REQUEST_ID.nextval into :NEW.FRIEND_REQUEST_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934915
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934915
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9114399415934915
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 17
    ,p_stmt_num => 52
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_SKILL_REQUEST   before insert on SKILL_REQUEST             for each row  begin     if :NEW.SKILL_REQUEST_ID is null then     select SKILL_REQUEST_ID.nextval into :NEW.SKILL_REQUEST_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934915
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934916
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9114423290934916
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 18
    ,p_stmt_num => 55
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_ANNOUNCEMENT_COMMENTS   before insert on ANNOUNCEMENT_COMMENTS            for each row  begin     if :NEW.ANNOUNCEMENT_COMMENTS_ID is null then     select ANNOUNCEMENT_COMMENTS_ID.nextval into :NEW.ANNOUNCEMENT_COMMENTS_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934916
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934916
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9112771895934908
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_USERS     before insert on USERS                 for each row  begin     if :NEW.USER_ID is null then     select USER_ID.nextval into :NEW.USER_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934908
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934909
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9112821465934909
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 2
    ,p_stmt_num => 4
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_DEPARTMENT    before insert on DEPARTMENT                for each row  begin     if :NEW.DEPARTMENT_ID is null then     select DEPARTMENT_ID.nextval into :NEW.DEPARTMENT_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934909
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934909
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9112974669934909
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 3
    ,p_stmt_num => 8
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_EVENT    before insert on EVENT                 for each row  begin     if :NEW.EVENT_ID is null then     select EVENT_ID.nextval into :NEW.EVENT_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934909
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934910
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_flow_api.create_sw_detail_results (
    p_id => 9113089641934910
    ,p_result_id => 9112642419934907
    ,p_file_id => 9069143354933037
    ,p_seq_id => 4
    ,p_stmt_num => 12
 ,p_stmt_text => 
'CREATE OR REPLACE trigger BI_ANNOUNCEMENT   before insert on ANNOUNCEMENT                for each row  begin     if :NEW.ANNOUNCEMENT_ID is null then     select ANNOUNCEMENT_ID.nextval into :NEW.ANNOUNCEMENT_ID from dual;   end if; end; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Trigger created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_start_time => 17934910
    ,p_ended => to_date('201808182149','YYYYMMDDHH24MI')
    ,p_end_time => 17934910
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('201808182149','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9407537381526415
 ,p_command => 
'alter table "SKILLS" add'||wwv_flow.LF||
'("BUSINESS_AREA" VARCHAR2(255) NOT NULL)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9407649806527274
 ,p_command => 
'alter table "SKILLS" add'||wwv_flow.LF||
'("BUSINESS_AREA" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9481574239314310
 ,p_command => 
'alter table "BUSINESS" add constraint'||wwv_flow.LF||
'"BUSINESS_CON" unique ("BUSINESS_AREA")'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808210913','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9518492214633606
 ,p_command => 
'alter table "USER_SKILLS" add constraint'||wwv_flow.LF||
'"USER_SKILLS_CON" unique ("USER_ID","SKILL_NAME")'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211006','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9518630400640395
 ,p_command => 
'truncate table "USER_SKILLS"'||wwv_flow.LF||
'/'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211007','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9518788525644009
 ,p_command => 
'alter table "USER_SKILLS" add constraint'||wwv_flow.LF||
'"USER_SKILLS_CON" unique ("USER_ID","SKILL_NAME","BUSINESS_AREA")'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211007','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9525050895858007
 ,p_command => 
'alter table "LESSON" add'||wwv_flow.LF||
'("IS_MANDATORY" VARCHAR2(55))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9560473962239500
 ,p_command => 
'alter table "USERS" modify'||wwv_flow.LF||
'("AM_NUMBER" VARCHAR2(55))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211147','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9560556712243051
 ,p_command => 
'alter table "USERS" add'||wwv_flow.LF||
'("ADDRESS" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211147','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9637053710024154
 ,p_command => 
'CREATE TABLE QUIZ3'||wwv_flow.LF||
'( QUIZ3_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  QUESTION1	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION2	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION3	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  USER_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  FLAG		VARCHAR(255),		'||wwv_flow.LF||
'  CONSTRAINT PK_QUIZ3_ID PRIMARY KEY (QUIZ3_ID)'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE SEQUENCE QUIZ3_ID START WITH 1;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE trigger BI_QUIZ3  '||wwv_flow.LF||
'  before insert on QUIZ3              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  '||
'if :NEW.QUIZ3_ID is null then'||wwv_flow.LF||
'    select QUIZ3_ID.nextval into :NEW.QUIZ3_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9637188979025087
 ,p_command => 
'CREATE TABLE QUIZ3'||wwv_flow.LF||
'( QUIZ3_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  QUESTION1	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION2	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION3	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  USER_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  FLAG		VARCHAR(255),		'||wwv_flow.LF||
'  CONSTRAINT PK_QUIZ3_ID PRIMARY KEY (QUIZ3_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9637282710025891
 ,p_command => 
'CREATE SEQUENCE QUIZ3_ID START WITH 1;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211644','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9637333188028014
 ,p_command => 
'CREATE OR REPLACE trigger BI_QUIZ3  '||wwv_flow.LF||
'  before insert on QUIZ3              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NEW.QUIZ3_ID is null then'||wwv_flow.LF||
'    select QUIZ3_ID.nextval into :NEW.QUIZ3_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808211645','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819118679808577
 ,p_command => 
'select "LESSON_ID", '||wwv_flow.LF||
'"LESSON_NAME",'||wwv_flow.LF||
'"DESCRIPTION",'||wwv_flow.LF||
'"LESSON_DATE",'||wwv_flow.LF||
'L.DEPARTMENT_NAME,'||wwv_flow.LF||
'"TEACHER",'||wwv_flow.LF||
'"BUSINESS_AREA",'||wwv_flow.LF||
'"IS_MANDATORY"'||wwv_flow.LF||
'from "#OWNER#"."LESSON" L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151349','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9850390412237066
 ,p_command => 
'select '||wwv_flow.LF||
' U.USERNAME'||wwv_flow.LF||
'from "#OWNER#"."USERS"'||wwv_flow.LF||
'WHERE DEPARTMENT_NAME IN (SELECT DEPARTMENT NAME FROM USERS WHERE :APP_USER=USERNAME)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151501','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9850427725238630
 ,p_command => 
'select '||wwv_flow.LF||
' USERNAME'||wwv_flow.LF||
'from "#OWNER#"."USERS"'||wwv_flow.LF||
'WHERE DEPARTMENT_NAME IN (SELECT DEPARTMENT NAME FROM USERS WHERE :APP_USER=USERNAME)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151501','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9850500336239570
 ,p_command => 
'select '||wwv_flow.LF||
' USERNAME'||wwv_flow.LF||
'from "#OWNER#"."USERS"'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151501','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9850600785240972
 ,p_command => 
'select '||wwv_flow.LF||
' USERNAME'||wwv_flow.LF||
'from USERS'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151501','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9850746462241891
 ,p_command => 
'select '||wwv_flow.LF||
' USERNAME'||wwv_flow.LF||
'from USERS'||wwv_flow.LF||
'WHERE DEPARTMENT_NAME IN (SELECT DEPARTMENT NAME FROM USERS WHERE :APP_USER=USERNAME)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151501','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9850842114243265
 ,p_command => 
'select '||wwv_flow.LF||
' USERNAME'||wwv_flow.LF||
'from USERS'||wwv_flow.LF||
'WHERE DEPARTMENT_NAME IN (SELECT DEPARTMENT_NAME FROM USERS WHERE :APP_USER=USERNAME)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151502','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10181821587681369
 ,p_command => 
'SElect * from user_events;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811202024','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10181986878682920
 ,p_command => 
'SElect FULLNAME from user_events;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811202025','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10182072578699389
 ,p_command => 
'SElect TRIM('':'' FROM FULLNAME) from user_events;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811202027','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819256904813762
 ,p_command => 
'select LESSON_ID, '||wwv_flow.LF||
'LESSON_NAME,'||wwv_flow.LF||
'DESCRIPTION,'||wwv_flow.LF||
'LESSON_DATE,'||wwv_flow.LF||
'L.DEPARTMENT_NAME,'||wwv_flow.LF||
'TEACHER,'||wwv_flow.LF||
'BUSINESS_AREA,'||wwv_flow.LF||
'IS_MANDATORY'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819381357816115
 ,p_command => 
'select LESSON_ID, '||wwv_flow.LF||
''||wwv_flow.LF||
'DESCRIPTION,'||wwv_flow.LF||
'LESSON_DATE,'||wwv_flow.LF||
'L.DEPARTMENT_NAME,'||wwv_flow.LF||
'TEACHER,'||wwv_flow.LF||
'BUSINESS_AREA,'||wwv_flow.LF||
'IS_MANDATORY'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819452726822824
 ,p_command => 
'SELECT * FROM USERS U WHERE :APP_USER=USERNAME'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151352','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819579829829472
 ,p_command => 
'SELECT * FROM USERS U JOIN LESSON L ON L.DEPARTMENT_NAME=U.DEPARTMENT_NAME WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819647141833225
 ,p_command => 
'SELECT LESSON_NAME FROM USERS U JOIN LESSON L ON L.DEPARTMENT_NAME=U.DEPARTMENT_NAME WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151353','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819744681836082
 ,p_command => 
'select LESSON_ID, '||wwv_flow.LF||
'LESSON_NAME,'||wwv_flow.LF||
'DESCRIPTION,'||wwv_flow.LF||
'LESSON_DATE,'||wwv_flow.LF||
'DEPARTMENT_NAME,'||wwv_flow.LF||
'TEACHER,'||wwv_flow.LF||
'BUSINESS_AREA,'||wwv_flow.LF||
'IS_MANDATORY'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151354','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819825289839534
 ,p_command => 
'select *'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151354','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9819905533841674
 ,p_command => 
'select LESSON_ID'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151355','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9820048979843750
 ,p_command => 
'select LESSON_ID,LESSON_NAME'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151355','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9820159272847996
 ,p_command => 
'select LESSON_ID, '||wwv_flow.LF||
'LESSON_NAME,'||wwv_flow.LF||
'L.DESCRIPTION,'||wwv_flow.LF||
'LESSON_DATE,'||wwv_flow.LF||
'DEPARTMENT_NAME,'||wwv_flow.LF||
'TEACHER,'||wwv_flow.LF||
'BUSINESS_AREA,'||wwv_flow.LF||
'IS_MANDATORY'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9820224714849377
 ,p_command => 
'select LESSON_ID, '||wwv_flow.LF||
'LESSON_NAME,'||wwv_flow.LF||
'L.DESCRIPTION,'||wwv_flow.LF||
'LESSON_DATE,'||wwv_flow.LF||
'L.DEPARTMENT_NAME,'||wwv_flow.LF||
'TEACHER,'||wwv_flow.LF||
'BUSINESS_AREA,'||wwv_flow.LF||
'IS_MANDATORY'||wwv_flow.LF||
'from LESSON L  join'||wwv_flow.LF||
'USERS U ON U.DEPARTMENT_NAME=L.DEPARTMENT_NAME'||wwv_flow.LF||
'WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811151356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10182179283723761
 ,p_command => 
'SElect SUBSTRING (FULLNAME,1,1) from user_events;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811202031','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10182252671752405
 ,p_command => 
'SELECT NVL(SUBSTR(FULLNAME,0,INSTR(FULLNAME,'':'')-1),FULLNAME)AS OUTPUT FROM USER_EVENTS;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811202036','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10182327526754783
 ,p_command => 
'SElect FULLNAME from user_events;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811202037','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10243052353289937
 ,p_command => 
'truncate table "USER_EVENTS"'||wwv_flow.LF||
'/'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811210935','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10284680265193144
 ,p_command => 
'alter table "MESSAGES" modify'||wwv_flow.LF||
'("MESSAGE" VARCHAR2(3000))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811212025','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10331569470002617
 ,p_command => 
'alter table "LESSON_STUDENT" modify'||wwv_flow.LF||
'("AM_NUMBER" VARCHAR2(55))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811230227','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10397212875503781
 ,p_command => 
'alter table "LESSON_STUDENT" add'||wwv_flow.LF||
'("LESSON_ID" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811281108','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10431204284760051
 ,p_command => 
'alter table "ASSIGNMENT" add'||wwv_flow.LF||
'("LESSON_ID" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811281151','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10470948261024134
 ,p_command => 
'alter table "ASSIGNMENT" add'||wwv_flow.LF||
'("FILE_UPLOADED" BLOB)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811281235','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10509065343145713
 ,p_command => 
'alter table "ASSIGNMENT" add'||wwv_flow.LF||
'("FILENAME" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811281255','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10519920251472956
 ,p_command => 
'alter table "SUBMISSION" add'||wwv_flow.LF||
'("FILENAME" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811281350','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10521021034509451
 ,p_command => 
'alter table "SUBMISSION" add'||wwv_flow.LF||
'("DATE_SUBMITTED" DATE)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201811281356','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10670625191893913
 ,p_command => 
'alter table "USERS" add'||wwv_flow.LF||
'("RANK" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812180836','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9144433361075721
 ,p_command => 
'alter table "QUIZ1" modify'||wwv_flow.LF||
'("FLAG" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192026','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9145673594220305
 ,p_command => 
'alter table "ANSWER1" add'||wwv_flow.LF||
'("FLAG" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192050','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9224280225113447
 ,p_command => 
'select QUIZ2.QUIZ2_ID as QUIZ2_ID,'||wwv_flow.LF||
'    QUIZ2.QUESTION1 as QUESTION1,'||wwv_flow.LF||
'    QUIZ2.QUESTION2 as QUESTION2,'||wwv_flow.LF||
'    QUIZ2.QUESTION3 as QUESTION3,'||wwv_flow.LF||
'    QUIZ2.FLAG as FLAG '||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ2 QUIZ2 '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9315513471699527
 ,p_command => 
'select "LESSON_ID", '||wwv_flow.LF||
'"LESSON_NAME",'||wwv_flow.LF||
'"DESCRIPTION",'||wwv_flow.LF||
'"LESSON_DATE",'||wwv_flow.LF||
'"DEPARTMENT_NAME",'||wwv_flow.LF||
'"TEACHER"'||wwv_flow.LF||
'from "#OWNER#"."LESSON" '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201450','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9315689865714918
 ,p_command => 
'select LESSON_ID '||wwv_flow.LF||
'LESSON_NAME,'||wwv_flow.LF||
'from LESSON'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201453','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9315771214718759
 ,p_command => 
'SELECT * FROM LESSON'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201453','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9315809318720175
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME'||wwv_flow.LF||
'from LESSON'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201454','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316013042835401
 ,p_command => 
'select count(1)'||wwv_flow.LF||
'from USER_SKILLS'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ORDER BY 1;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201513','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316121144836661
 ,p_command => 
'select count(1)'||wwv_flow.LF||
'from USER_SKILLS'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ORDER BY 1 DESC;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201513','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316278173856815
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'('||wwv_flow.LF||
'select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSSINESS_AREA=L.DEPARTMENTNAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ORDER BY 1 DESC);'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201516','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316395743860098
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY '||wwv_flow.LF||
'('||wwv_flow.LF||
'select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ORDER BY 1 DESC);'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201517','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316404947979758
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,('||wwv_flow.LF||
'select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ORDER BY 1 DESC)'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201537','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316556397982337
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,(select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ORDER BY 1 DESC;)'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201537','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316632790983944
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,(select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA )'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201538','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9165764586460712
 ,p_command => 
'alter table "ANSWER1" add'||wwv_flow.LF||
'("QUIZ_NO" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192130','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9182978821887453
 ,p_command => 
'CREATE TABLE QUIZ2'||wwv_flow.LF||
'( QUIZ2_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  QUESTION1	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION2	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION3	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  USER_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  FLAG		NUMBER,		'||wwv_flow.LF||
'  CONSTRAINT PK_QUIZ2_ID PRIMARY KEY (QUIZ2_ID)'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE SEQUENCE QUIZ2_ID START WITH 1;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE trigger BI_QUIZ2  '||wwv_flow.LF||
'  before insert on QUIZ2              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NE'||
'W.QUIZ2_ID is null then'||wwv_flow.LF||
'    select QUIZ2_ID.nextval into :NEW.QUIZ2_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192241','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9183044868888224
 ,p_command => 
'CREATE TABLE QUIZ2'||wwv_flow.LF||
'( QUIZ2_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  QUESTION1	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION2	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION3	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  USER_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  FLAG		NUMBER,		'||wwv_flow.LF||
'  CONSTRAINT PK_QUIZ2_ID PRIMARY KEY (QUIZ2_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192242','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9183143913888698
 ,p_command => 
'CREATE SEQUENCE QUIZ2_ID START WITH 1;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192242','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9183251667889148
 ,p_command => 
'CREATE OR REPLACE trigger BI_QUIZ2  '||wwv_flow.LF||
'  before insert on QUIZ2              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NEW.QUIZ2_ID is null then'||wwv_flow.LF||
'    select QUIZ2_ID.nextval into :NEW.QUIZ2_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192242','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9223259386086924
 ,p_command => 
'SELECT FLAG FROM ANSWER1 WHERE'||wwv_flow.LF||
' QUIZ_NO=2;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9223352495089676
 ,p_command => 
'alter table "QUIZ2" modify'||wwv_flow.LF||
'("FLAG" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808192315','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9315293262689668
 ,p_command => 
'select count(1)'||wwv_flow.LF||
'from USER_SKILLS'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201448','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9316795448011993
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,(select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ) Abilities_Count'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201542','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9317373654067969
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,(select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ) Abilities_Count'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3 DESC;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201552','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9317418022117301
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,(select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ) Abilities_Count'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3 ASC;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201600','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9317562128120855
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,(select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ) Abilities_Count'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3 DESC;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201600','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9317636514130586
 ,p_command => 
'select LESSON_ID ,'||wwv_flow.LF||
'LESSON_NAME,(select count(1)'||wwv_flow.LF||
'from USER_SKILLS U WHERE U.BUSINESS_AREA=L.DEPARTMENT_NAME'||wwv_flow.LF||
'GROUP BY BUSINESS_AREA ) Abilities_Count'||wwv_flow.LF||
'from LESSON L'||wwv_flow.LF||
'ORDER BY 3 DESC NULLS LAST;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201602','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9319503462331187
 ,p_command => 
'CREATE TABLE BUSINESS'||wwv_flow.LF||
'( BUSINESS_ID	NUMBER	NOT NULL,'||wwv_flow.LF||
'  BUSINESS_AREA	VARCHAR(255)	NOT NULL,		'||wwv_flow.LF||
'  CONSTRAINT PK_BUSINESS_ID PRIMARY KEY (BUSINESS_ID)'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE SEQUENCE BUSINESS_AREA_ID START WITH 1;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE trigger BI_BUSINESS  '||wwv_flow.LF||
'  before insert on BUSINESS              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NEW.BUSINESS_ID is null then'||wwv_flow.LF||
'    select BUSINESS_ID.nextval into :NEW.BUSINESS_ID from '||
'dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9319650102331798
 ,p_command => 
'CREATE TABLE BUSINESS'||wwv_flow.LF||
'( BUSINESS_ID	NUMBER	NOT NULL,'||wwv_flow.LF||
'  BUSINESS_AREA	VARCHAR(255)	NOT NULL,		'||wwv_flow.LF||
'  CONSTRAINT PK_BUSINESS_ID PRIMARY KEY (BUSINESS_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9319752012332578
 ,p_command => 
'CREATE SEQUENCE BUSINESS_AREA_ID START WITH 1;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9319830442332988
 ,p_command => 
'CREATE OR REPLACE trigger BI_BUSINESS  '||wwv_flow.LF||
'  before insert on BUSINESS              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NEW.BUSINESS_ID is null then'||wwv_flow.LF||
'    select BUSINESS_ID.nextval into :NEW.BUSINESS_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201922','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9319905476336046
 ,p_command => 
'CREATE SEQUENCE BUSINESS_ID START WITH 1;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9320045514336475
 ,p_command => 
'CREATE OR REPLACE trigger BI_BUSINESS  '||wwv_flow.LF||
'  before insert on BUSINESS              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NEW.BUSINESS_ID is null then'||wwv_flow.LF||
'    select BUSINESS_ID.nextval into :NEW.BUSINESS_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9320191573339466
 ,p_command => 
'drop SEQUENCE "BUSINESS_AREA_ID"'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201923','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 9320200585341943
 ,p_command => 
'alter table "LESSON" add'||wwv_flow.LF||
'("BUSINESS_AREA" VARCHAR2(255))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201808201924','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11253505636407301
 ,p_command => 
'select E.USER_EVENTS_ID,'||wwv_flow.LF||
'E.EVENT_ID,'||wwv_flow.LF||
'E.EVENT_NAME,'||wwv_flow.LF||
'E.USER_ID,'||wwv_flow.LF||
'E.FULLNAME,'||wwv_flow.LF||
'EV.DESCRIPTION,'||wwv_flow.LF||
'EV.START_DATE,'||wwv_flow.LF||
'EV.END_DATE,'||wwv_flow.LF||
'EV.EVENT_STATUS,'||wwv_flow.LF||
'EV.PLACE,'||wwv_flow.LF||
'EV.LESSON_NAME,'||wwv_flow.LF||
'EV.DEPARTMENT_NAME,'||wwv_flow.LF||
'E.IS_ACCEPTED,'||wwv_flow.LF||
'EV.USER_CREATED,'||wwv_flow.LF||
'dbms_lob.getlength(EV.PHOTO) PHOTO'||wwv_flow.LF||
'from USER_EVENTS E JOIN EVENT EV ON EV.EVENT_ID=E.EVENT_ID WHERE E.EVENT_ID IN (SELECT EVENT_ID FROM USER_EVENTS UE JOIN USERS U ON UE.USER_ID=U.USER_ID'||
' WHERE :APP_USER=U.USERNAME )'||wwv_flow.LF||
'where E.USER_ID <> (SELECT USER_ID FROM USERS WHERE :APP_USER=USERNAME )'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11253654874409492
 ,p_command => 
'select E.USER_EVENTS_ID,'||wwv_flow.LF||
'E.EVENT_ID,'||wwv_flow.LF||
'E.EVENT_NAME,'||wwv_flow.LF||
'E.USER_ID,'||wwv_flow.LF||
'E.FULLNAME,'||wwv_flow.LF||
'EV.DESCRIPTION,'||wwv_flow.LF||
'EV.START_DATE,'||wwv_flow.LF||
'EV.END_DATE,'||wwv_flow.LF||
'EV.EVENT_STATUS,'||wwv_flow.LF||
'EV.PLACE,'||wwv_flow.LF||
'EV.LESSON_NAME,'||wwv_flow.LF||
'EV.DEPARTMENT_NAME,'||wwv_flow.LF||
'E.IS_ACCEPTED,'||wwv_flow.LF||
'EV.USER_CREATED,'||wwv_flow.LF||
'dbms_lob.getlength(EV.PHOTO) PHOTO'||wwv_flow.LF||
'from USER_EVENTS E JOIN EVENT EV ON EV.EVENT_ID=E.EVENT_ID WHERE E.EVENT_ID IN (SELECT EVENT_ID FROM USER_EVENTS UE JOIN USERS U ON UE.USER_ID=U.USER_ID'||
' WHERE :APP_USER=U.USERNAME )'||wwv_flow.LF||
'AND E.USER_ID <> (SELECT USER_ID FROM USERS WHERE :APP_USER=USERNAME )'||wwv_flow.LF||
'ORDER BY EVENT_ID DESC'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11130071586687748
 ,p_command => 
'alter table "MESSAGES" add'||wwv_flow.LF||
'("READ_MS" NUMBER)'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901251717','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11130153711733110
 ,p_command => 
'ALTER TABLE MESSAGES MODIFY(READ_MS DEFAULT 0);'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901251724','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10859012192611773
 ,p_command => 
'alter table "LESSON_STUDENT" add constraint'||wwv_flow.LF||
'"LESSON_STUDENT_CON" unique ("LESSON_ID","AM_NUMBER")'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812211622','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10681565462073815
 ,p_command => 
'CREATE TABLE QUIZ2_R2'||wwv_flow.LF||
'( QUIZ2_R2_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  QUESTION1	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION2	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION3	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  USER_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  FLAG		VARCHAR(255),		'||wwv_flow.LF||
'  CONSTRAINT PK_QUIZ2_R2_ID PRIMARY KEY (QUIZ2_R2_ID)'||wwv_flow.LF||
');'||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE SEQUENCE QUIZ2_R2_ID START WITH 1;'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'CREATE OR REPLACE trigger BI_QUIZ2_R2  '||wwv_flow.LF||
'  before insert on QUIZ2_R2              '||wwv_flow.LF||
'  for'||
' each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NEW.QUIZ2_R2_ID is null then'||wwv_flow.LF||
'    select QUIZ2_R2_ID.nextval into :NEW.QUIZ2_R2_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'||wwv_flow.LF||
'/'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812180906','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10681652136074762
 ,p_command => 
'CREATE TABLE QUIZ2_R2'||wwv_flow.LF||
'( QUIZ2_R2_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  QUESTION1	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION2	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  QUESTION3	VARCHAR(255)	NOT NULL,'||wwv_flow.LF||
'  USER_ID	NUMBER		NOT NULL,'||wwv_flow.LF||
'  FLAG		VARCHAR(255),		'||wwv_flow.LF||
'  CONSTRAINT PK_QUIZ2_R2_ID PRIMARY KEY (QUIZ2_R2_ID)'||wwv_flow.LF||
');'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812180906','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10681778909075485
 ,p_command => 
'CREATE SEQUENCE QUIZ2_R2_ID START WITH 1;'||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812180906','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10681894510076080
 ,p_command => 
'CREATE OR REPLACE trigger BI_QUIZ2_R2  '||wwv_flow.LF||
'  before insert on QUIZ2_R2              '||wwv_flow.LF||
'  for each row '||wwv_flow.LF||
'begin  '||wwv_flow.LF||
'  if :NEW.QUIZ2_R2_ID is null then'||wwv_flow.LF||
'    select QUIZ2_R2_ID.nextval into :NEW.QUIZ2_R2_ID from dual;'||wwv_flow.LF||
'  end if;'||wwv_flow.LF||
'end;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812180906','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10706209171689972
 ,p_command => 
'ALTER TABLE USERS ADD DEFAULT ''1'' FOR RANK;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181049','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10706315535691158
 ,p_command => 
'ALTER TABLE USERS ADD DEFAULT 1 FOR RANK;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181049','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10706466240701966
 ,p_command => 
'ALTER TABLE USERS MODIFY(RANK NUMBER DEFAULT 1);'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181051','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10767496722405662
 ,p_command => 
'alter table "SUBMISSION" modify'||wwv_flow.LF||
'("AM_NUMBER" VARCHAR2(55))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181534','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10767803239411461
 ,p_command => 
'alter table "SUBMISSION" modify'||wwv_flow.LF||
'("AM_NUMBER" VARCHAR2(55))'||wwv_flow.LF||
'/   '||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181535','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11098915141725050
 ,p_command => 
'SELECT COUNT(SKILL_REQUEST_ID)'||wwv_flow.LF||
'FROM SKILL_REQUEST WHERE IS_ACCEPTED IS NULL;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901220850','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11145452694830402
 ,p_command => 
'SELECT ''Hello '' || :APP_USER FROM DUAL'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201902151657','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11253198567403017
 ,p_command => 
'SELECT USER_ID FROM USERS WHERE :APP_USER=U.USERNAME'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11253263721404398
 ,p_command => 
'select E.USER_EVENTS_ID,'||wwv_flow.LF||
'E.EVENT_ID,'||wwv_flow.LF||
'E.EVENT_NAME,'||wwv_flow.LF||
'E.USER_ID,'||wwv_flow.LF||
'E.FULLNAME,'||wwv_flow.LF||
'EV.DESCRIPTION,'||wwv_flow.LF||
'EV.START_DATE,'||wwv_flow.LF||
'EV.END_DATE,'||wwv_flow.LF||
'EV.EVENT_STATUS,'||wwv_flow.LF||
'EV.PLACE,'||wwv_flow.LF||
'EV.LESSON_NAME,'||wwv_flow.LF||
'EV.DEPARTMENT_NAME,'||wwv_flow.LF||
'E.IS_ACCEPTED,'||wwv_flow.LF||
'EV.USER_CREATED,'||wwv_flow.LF||
'dbms_lob.getlength(EV.PHOTO) PHOTO'||wwv_flow.LF||
'from USER_EVENTS E JOIN EVENT EV ON EV.EVENT_ID=E.EVENT_ID WHERE E.EVENT_ID IN (SELECT EVENT_ID FROM USER_EVENTS UE JOIN USERS U ON UE.USER_ID=U.USER_ID'||
' WHERE :APP_USER=U.USERNAME )'||wwv_flow.LF||
'where E.USER_ID <> (SELECT USER_ID FROM USERS WHERE :APP_USER=USERNAME )'||wwv_flow.LF||
'ORDER BY EVENT_ID DESC'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11253393623405364
 ,p_command => 
'SELECT USER_ID FROM USERS WHERE :APP_USER=USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11253478319406462
 ,p_command => 
'select E.USER_EVENTS_ID,'||wwv_flow.LF||
'E.EVENT_ID,'||wwv_flow.LF||
'E.EVENT_NAME,'||wwv_flow.LF||
'E.USER_ID,'||wwv_flow.LF||
'E.FULLNAME,'||wwv_flow.LF||
'EV.DESCRIPTION,'||wwv_flow.LF||
'EV.START_DATE,'||wwv_flow.LF||
'EV.END_DATE,'||wwv_flow.LF||
'EV.EVENT_STATUS,'||wwv_flow.LF||
'EV.PLACE,'||wwv_flow.LF||
'EV.LESSON_NAME,'||wwv_flow.LF||
'EV.DEPARTMENT_NAME,'||wwv_flow.LF||
'E.IS_ACCEPTED,'||wwv_flow.LF||
'EV.USER_CREATED,'||wwv_flow.LF||
'dbms_lob.getlength(EV.PHOTO) PHOTO'||wwv_flow.LF||
'from USER_EVENTS E JOIN EVENT EV ON EV.EVENT_ID=E.EVENT_ID WHERE E.EVENT_ID IN (SELECT EVENT_ID FROM USER_EVENTS UE JOIN USERS U ON UE.USER_ID=U.USER_ID'||
' WHERE :APP_USER=U.USERNAME )'||wwv_flow.LF||
'where E.USER_ID <> (SELECT USER_ID FROM USERS WHERE :APP_USER=USERNAME )'||wwv_flow.LF||
'ORDER BY EVENT_ID DESC'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10703821739587690
 ,p_command => 
'select NULL'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND UPPER(:APP_USER) = UPPER(USERNAME) AND QUIZ1.FLAG=''SUCCESS'' AND IS_SYS_ADMIN  = ''0'''||wwv_flow.LF||
'   and IS_WEB_ADMIN = ''0'' AND IS_TEACHER=''0'' having ('||wwv_flow.LF||
'select COUNT(1) TIMES'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND :APP_USER = USERNAME'||wwv_flow.LF||
' and FLAG=''FAIL'')<3 ;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181031','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10703929551589094
 ,p_command => 
'select NULL'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND UPPER(:APP_USER) = UPPER(USERNAME) AND QUIZ1.FLAG=''SUCCESS'' AND IS_SYS_ADMIN  = ''0'''||wwv_flow.LF||
'   and IS_WEB_ADMIN = ''0'' AND IS_TEACHER=''0'''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181032','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10704086676592229
 ,p_command => 
'select COUNT(1) TIMES'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND :APP_USER = USERNAME'||wwv_flow.LF||
' and FLAG=''FAIL'''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181032','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10704167729595302
 ,p_command => 
'select NULL'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND UPPER(:APP_USER) = UPPER(USERNAME) AND QUIZ1.FLAG=''SUCCESS'' AND IS_SYS_ADMIN  = ''0'''||wwv_flow.LF||
'   and IS_WEB_ADMIN = ''0'' AND IS_TEACHER=''0'' having ('||wwv_flow.LF||
'select COUNT(1) TIMES'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND :APP_USER = USERNAME'||wwv_flow.LF||
' and FLAG=''FAIL'')<3 ;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10704286791596701
 ,p_command => 
'select NULL'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND UPPER(:APP_USER) = UPPER(USERNAME) AND QUIZ1.FLAG=''SUCCESS'' AND IS_SYS_ADMIN  = ''0'''||wwv_flow.LF||
'   and IS_WEB_ADMIN = ''0'' AND IS_TEACHER=''0'' having ('||wwv_flow.LF||
'select COUNT(1) TIMES'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND :APP_USER = USERNAME'||wwv_flow.LF||
' and FLAG=''FAIL'')>3 ;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10704320939600699
 ,p_command => 
'select NULL'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND UPPER(:APP_USER) = UPPER(USERNAME) AND QUIZ1.FLAG=''SUCCESS'' AND IS_SYS_ADMIN  = ''0'''||wwv_flow.LF||
'   and IS_WEB_ADMIN = ''0'' AND IS_TEACHER=''0'' having ('||wwv_flow.LF||
'select COUNT(1) TIMES'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND :APP_USER = USERNAME'||wwv_flow.LF||
' and FLAG=''FAIL'')>=3 ;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181034','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10709879441894066
 ,p_command => 
'select 1 --into lquery'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND UPPER(:APP_USER) = UPPER(USERNAME) AND QUIZ1.FLAG=''SUCCESS'' AND IS_SYS_ADMIN  = ''0'''||wwv_flow.LF||
'   and IS_WEB_ADMIN = ''0'' AND IS_TEACHER=''0'' having ('||wwv_flow.LF||
'select COUNT(1) TIMES'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND :APP_USER = USERNAME'||wwv_flow.LF||
' and FLAG=''FAIL'')>=3 ;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181123','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10709971496895447
 ,p_command => 
' select 2 --into lquery'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND UPPER(:APP_USER) = UPPER(USERNAME) AND QUIZ1.FLAG=''SUCCESS'' AND IS_SYS_ADMIN  = ''0'''||wwv_flow.LF||
'   and IS_WEB_ADMIN = ''0'' AND IS_TEACHER=''0'' having ('||wwv_flow.LF||
'select COUNT(1) TIMES'||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    QUIZ1 QUIZ1 '||wwv_flow.LF||
' where QUIZ1.USER_ID=USERS.USER_ID AND :APP_USER = USERNAME'||wwv_flow.LF||
' and FLAG=''FAIL'')<3 ;'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201812181123','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976241710193827
 ,p_command => 
'select EVENT.EVENT_NAME as EVENT_NAME,'||wwv_flow.LF||
'    EVENT.START_DATE as START_DATE,'||wwv_flow.LF||
'    EVENT.END_DATE as END_DATE,'||wwv_flow.LF||
'    EVENT.EVENT_STATUS as EVENT_STATUS '||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    USER_EVENTS USER_EVENTS,'||wwv_flow.LF||
'    EVENT EVENT '||wwv_flow.LF||
' where EVENT.EVENT_ID=USER_EVENTS.EVENT_ID'||wwv_flow.LF||
'    and (USER_EVENTS.USER_ID=USERS.USER_ID OR EVENT.USER_ID=USERS.USER_ID)'||wwv_flow.LF||
'    and :APP_USER=USERS.USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210908','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976386909219018
 ,p_command => 
'select EVENT.EVENT_NAME as EVENT_NAME,'||wwv_flow.LF||
'    EVENT.START_DATE as START_DATE,'||wwv_flow.LF||
'    EVENT.END_DATE as END_DATE,'||wwv_flow.LF||
'    EVENT.EVENT_STATUS as EVENT_STATUS '||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    USER_EVENTS USER_EVENTS,'||wwv_flow.LF||
'    EVENT EVENT '||wwv_flow.LF||
' where EVENT.EVENT_ID=USER_EVENTS.EVENT_ID'||wwv_flow.LF||
'    and   EVENT.USER_ID=USERS.USER_ID --(USER_EVENTS.USER_ID=USERS.USER_ID'||wwv_flow.LF||
'    and :APP_USER=USERS.USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210912','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976416858224080
 ,p_command => 
'SELECT * FROM EVENT'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210913','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976566314235831
 ,p_command => 
'SELECT EVENT.EVENT_NAME FROM EVENT EVENT,USERS USERS WHERE EVENT.USER_ID=USERS.USER_ID and :APP_USER=USERS.USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976654380294862
 ,p_command => 
'SELECT EVENT.EVENT_NAME FROM EVENT EVENT,USERS USERS,USER_EVENTS USER_EVENTS WHERE  :APP_USER=USERS.USERNAME AND (USER_EVENTS.USER_ID=USERS.USER_ID OR EVENT.USER_ID=USERS.USER_ID)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976705337298818
 ,p_command => 
'select EVENT.EVENT_NAME as EVENT_NAME,'||wwv_flow.LF||
'    EVENT.START_DATE as START_DATE,'||wwv_flow.LF||
'    EVENT.END_DATE as END_DATE,'||wwv_flow.LF||
'    EVENT.EVENT_STATUS as EVENT_STATUS '||wwv_flow.LF||
' from USERS USERS,'||wwv_flow.LF||
'    USER_EVENTS USER_EVENTS,'||wwv_flow.LF||
'    EVENT EVENT '||wwv_flow.LF||
' where EVENT.EVENT_ID=USER_EVENTS.EVENT_ID'||wwv_flow.LF||
'    and   USER_EVENTS.USER_ID=USERS.USER_ID'||wwv_flow.LF||
'    and :APP_USER=USERS.USERNAME '
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210925','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976870192300628
 ,p_command => 
'SELECT EVENT.EVENT_NAME FROM EVENT EVENT,USERS USERS,USER_EVENTS USER_EVENTS WHERE  :APP_USER=USERS.USERNAME AND (USER_EVENTS.USER_ID=USERS.USER_ID OR EVENT.USER_ID=USERS.USER_ID)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10976962710304097
 ,p_command => 
'SELECT EVENT.EVENT_ID,EVENT.EVENT_NAME FROM EVENT EVENT,USERS USERS,USER_EVENTS USER_EVENTS WHERE  :APP_USER=USERS.USERNAME AND (USER_EVENTS.USER_ID=USERS.USER_ID OR EVENT.USER_ID=USERS.USER_ID)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210926','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 10977068905306456
 ,p_command => 
'SELECT DISTINCT EVENT.EVENT_ID,EVENT.EVENT_NAME FROM EVENT EVENT,USERS USERS,USER_EVENTS USER_EVENTS WHERE  :APP_USER=USERS.USERNAME AND (USER_EVENTS.USER_ID=USERS.USER_ID OR EVENT.USER_ID=USERS.USER_ID)'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201901210927','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11252870001380177
 ,p_command => 
'select E.USER_EVENTS_ID,'||wwv_flow.LF||
'E.EVENT_ID,'||wwv_flow.LF||
'E.EVENT_NAME,'||wwv_flow.LF||
'E.USER_ID,'||wwv_flow.LF||
'E.FULLNAME,'||wwv_flow.LF||
'EV.DESCRIPTION,'||wwv_flow.LF||
'EV.START_DATE,'||wwv_flow.LF||
'EV.END_DATE,'||wwv_flow.LF||
'EV.EVENT_STATUS,'||wwv_flow.LF||
'EV.PLACE,'||wwv_flow.LF||
'EV.LESSON_NAME,'||wwv_flow.LF||
'EV.DEPARTMENT_NAME,'||wwv_flow.LF||
'E.IS_ACCEPTED,'||wwv_flow.LF||
'EV.USER_CREATED,'||wwv_flow.LF||
'dbms_lob.getlength(EV.PHOTO) PHOTO'||wwv_flow.LF||
'from USER_EVENTS E JOIN EVENT EV ON EV.EVENT_ID=E.EVENT_ID'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290431','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11252975677391291
 ,p_command => 
'select E.USER_EVENTS_ID,'||wwv_flow.LF||
'E.EVENT_ID,'||wwv_flow.LF||
'E.EVENT_NAME,'||wwv_flow.LF||
'E.USER_ID,'||wwv_flow.LF||
'E.FULLNAME,'||wwv_flow.LF||
'EV.DESCRIPTION,'||wwv_flow.LF||
'EV.START_DATE,'||wwv_flow.LF||
'EV.END_DATE,'||wwv_flow.LF||
'EV.EVENT_STATUS,'||wwv_flow.LF||
'EV.PLACE,'||wwv_flow.LF||
'EV.LESSON_NAME,'||wwv_flow.LF||
'EV.DEPARTMENT_NAME,'||wwv_flow.LF||
'E.IS_ACCEPTED,'||wwv_flow.LF||
'EV.USER_CREATED,'||wwv_flow.LF||
'dbms_lob.getlength(EV.PHOTO) PHOTO'||wwv_flow.LF||
'from USER_EVENTS E JOIN EVENT EV ON EV.EVENT_ID=E.EVENT_ID WHERE E.EVENT_ID IN (SELECT EVENT_ID FROM USER_EVENTS UE JOIN USERS U ON UE.USER_ID=U.USER_ID'||
' WHERE :APP_USER=U.USERNAME )'||wwv_flow.LF||
'ORDER BY EVENT_ID DESC'||wwv_flow.LF||
''
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290432','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
begin
  wwv_flow_api.create_sw_sql_cmds (
    p_id => 11253099748400549
 ,p_command => 
'select E.USER_EVENTS_ID,'||wwv_flow.LF||
'E.EVENT_ID,'||wwv_flow.LF||
'E.EVENT_NAME,'||wwv_flow.LF||
'E.USER_ID,'||wwv_flow.LF||
'E.FULLNAME,'||wwv_flow.LF||
'EV.DESCRIPTION,'||wwv_flow.LF||
'EV.START_DATE,'||wwv_flow.LF||
'EV.END_DATE,'||wwv_flow.LF||
'EV.EVENT_STATUS,'||wwv_flow.LF||
'EV.PLACE,'||wwv_flow.LF||
'EV.LESSON_NAME,'||wwv_flow.LF||
'EV.DEPARTMENT_NAME,'||wwv_flow.LF||
'E.IS_ACCEPTED,'||wwv_flow.LF||
'EV.USER_CREATED,'||wwv_flow.LF||
'dbms_lob.getlength(EV.PHOTO) PHOTO'||wwv_flow.LF||
'from USER_EVENTS E JOIN EVENT EV ON EV.EVENT_ID=E.EVENT_ID WHERE E.EVENT_ID IN (SELECT EVENT_ID FROM USER_EVENTS UE JOIN USERS U ON UE.USER_ID=U.USER_ID'||
' WHERE :APP_USER=U.USERNAME )'||wwv_flow.LF||
'where E.USER_ID <> (SELECT USER_ID FROM USERS WHERE :APP_USER=U.USERNAME )'||wwv_flow.LF||
'ORDER BY EVENT_ID DESC'
    ,p_created_by => 'SYSDBA'
    ,p_created_on => to_date('201904290434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'ECLASS');
end;
/
----------------
--user access log
--
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MINAID',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904290040','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SECRETARIAT',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904290948','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'TEACHER',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904291828','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'TEACHER',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904291913','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'MINAID',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904292207','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'TEACHER',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904292207','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'STUDENT',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904300218','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'TEACHER',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904300251','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'STUDENT',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904300251','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'TEACHER',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904300252','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'STUDENT',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201904300253','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201904290032','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 3,
    p_custom_status_text => 'Password Expired');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201904290032','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201904290945','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201904291828','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201904291913','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201904292158','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log1$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201904300218','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'MINAID',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201905290939','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'SECRETARIAT',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201905290946','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'TEACHER',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201905290949','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'STUDENT',
    p_auth_method => 'Databasae Account',
    p_app => 104,
    p_owner => 'ECLASS',
    p_access_date => to_date('201905290958','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201905290938','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_flow_api.create_user_access_log2$ (
    p_login_name => 'SYSDBA',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_050100',
    p_access_date => to_date('201906020557','YYYYMMDDHH24MI'),
    p_ip_address => '::1',
    p_remote_user => 'ANONYMOUS',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...news
--
begin
null;
end;
/
--
prompt ...links
--
begin
null;
end;
/
--
prompt ...bugs
--
begin
null;
end;
/
--
prompt ...events
--
begin
null;
end;
/
--
prompt ...feature types
--
begin
null;
end;
/
--
prompt ...features
--
begin
null;
end;
/
--
prompt ...feature map
--
begin
null;
end;
/
--
prompt ...tasks
--
begin
null;
end;
/
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...task defaults
--
begin
null;
end;
/
 
prompt ...RESTful Services
 
begin
wwv_flow_api.remove_restful_service(
 p_id=>wwv_flow_api.id(8991256083888100)
,p_name=>'oracle.example.hr'
);
 
end;
/
prompt --application/restful_services/oracle_example_hr
begin
wwv_flow_api.create_restful_module(
 p_id=>wwv_flow_api.id(8991256083888100)
,p_name=>'oracle.example.hr'
,p_uri_prefix=>'hr/'
,p_parsing_schema=>'ECLASS'
,p_items_per_page=>10
,p_status=>'PUBLISHED'
,p_row_version_number=>22
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8993205241888103)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'empinfo/'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8993343654888103)
,p_template_id=>wwv_flow_api.id(8993205241888103)
,p_source_type=>'QUERY'
,p_format=>'CSV'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>'select * from emp'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8991587342888102)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'employees/'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8991674746888102)
,p_template_id=>wwv_flow_api.id(8991587342888102)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_items_per_page=>7
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno "$uri", rn, empno, ename, job, hiredate, mgr, sal, comm, deptno',
'  from (',
'       select emp.*',
'            , row_number() over (order by empno) rn',
'         from emp',
'       ) tmp'))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8991741873888102)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'employees/{id}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8991823371888102)
,p_template_id=>wwv_flow_api.id(8991741873888102)
,p_source_type=>'QUERY_1_ROW'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from emp',
' where empno = :id'))
);
wwv_flow_api.create_restful_param(
 p_id=>wwv_flow_api.id(8991959964888102)
,p_handler_id=>wwv_flow_api.id(8991823371888102)
,p_name=>'ID'
,p_bind_variable_name=>'ID'
,p_source_type=>'HEADER'
,p_access_method=>'IN'
,p_param_type=>'STRING'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8992077879888102)
,p_template_id=>wwv_flow_api.id(8991741873888102)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'PUT'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    update emp set ename = :ename, job = :job, hiredate = :hiredate, mgr = :mgr, sal = :sal, comm = :comm, deptno = :deptno',
'    where empno = :id;',
'    :status := 200;',
'    :location := :id;',
'exception',
'    when others then',
'        :status := 400;',
'end;'))
);
wwv_flow_api.create_restful_param(
 p_id=>wwv_flow_api.id(8992143171888102)
,p_handler_id=>wwv_flow_api.id(8992077879888102)
,p_name=>'ID'
,p_bind_variable_name=>'ID'
,p_source_type=>'HEADER'
,p_access_method=>'IN'
,p_param_type=>'STRING'
);
wwv_flow_api.create_restful_param(
 p_id=>wwv_flow_api.id(8992333273888103)
,p_handler_id=>wwv_flow_api.id(8992077879888102)
,p_name=>'X-APEX-FORWARD'
,p_bind_variable_name=>'location'
,p_source_type=>'HEADER'
,p_access_method=>'OUT'
,p_param_type=>'STRING'
);
wwv_flow_api.create_restful_param(
 p_id=>wwv_flow_api.id(8992255148888102)
,p_handler_id=>wwv_flow_api.id(8992077879888102)
,p_name=>'X-APEX-STATUS-CODE'
,p_bind_variable_name=>'status'
,p_source_type=>'HEADER'
,p_access_method=>'OUT'
,p_param_type=>'INT'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8992463359888103)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'employeesfeed/'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8992560773888103)
,p_template_id=>wwv_flow_api.id(8992463359888103)
,p_source_type=>'FEED'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_items_per_page=>25
,p_require_https=>'NO'
,p_source=>'select empno, ename from emp order by deptno, ename'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8992615592888103)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'employeesfeed/{id}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8992782136888103)
,p_template_id=>wwv_flow_api.id(8992615592888103)
,p_source_type=>'QUERY'
,p_format=>'CSV'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>'select * from emp where empno = :id'
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8992865514888103)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'empsec/{empname}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8992957301888103)
,p_template_id=>wwv_flow_api.id(8992865514888103)
,p_source_type=>'QUERY'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select empno, ename, deptno, job from emp ',
'	where ((select job from emp where ename = :empname) IN (''PRESIDENT'', ''MANAGER'')) ',
'    OR  ',
'    (deptno = (select deptno from emp where ename = :empname)) ',
'order by deptno, ename',
''))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8993085026888103)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'empsecformat/{empname}'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8993182816888103)
,p_template_id=>wwv_flow_api.id(8993085026888103)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  prevdeptno     number;',
'  total_rows     number;',
'  deptloc        varchar2(20);',
'  deptname       varchar2(20);',
'  ',
'  CURSOR         getemps is select * from emp ',
'                             start with ename = :empname',
'                           connect by prior empno = mgr',
'                             order siblings by deptno, ename;',
'BEGIN',
'  sys.htp.htmlopen;',
'  sys.htp.headopen;',
'  sys.htp.title(''Hierarchical Department Report for Employee ''||apex_escape.html(:empname));',
'  sys.htp.headclose;',
'  sys.htp.bodyopen;',
' ',
'  for l_employee in getemps ',
'  loop',
'      if l_employee.deptno != prevdeptno or prevdeptno is null then',
'          select dname, loc ',
'            into deptname, deptloc ',
'            from dept ',
'           where deptno = l_employee.deptno;',
'           ',
'          if prevdeptno is not null then',
'              sys.htp.print(''</ul>'');',
'          end if;',
'',
'          sys.htp.print(''Department '' || apex_escape.html(deptname) || '' located in '' || apex_escape.html(deptloc) || ''<p/>'');',
'          sys.htp.print(''<ul>'');',
'      end if;',
'',
'      sys.htp.print(''<li>'' || apex_escape.html(l_employee.ename) || '', ''  || apex_escape.html(l_employee.empno) || '', '' || ',
'                        apex_escape.html(l_employee.job) || '', '' || apex_escape.html(l_employee.sal) || ''</li>'');',
'',
'      prevdeptno := l_employee.deptno;',
'      total_rows := getemps%ROWCOUNT;',
'      ',
'  end loop;',
'',
'  if total_rows > 0 then',
'      sys.htp.print(''</ul>'');',
'  end if;',
'',
'  sys.htp.bodyclose;',
'  sys.htp.htmlclose;',
'END;'))
);
wwv_flow_api.create_restful_template(
 p_id=>wwv_flow_api.id(8991376667888101)
,p_module_id=>wwv_flow_api.id(8991256083888100)
,p_uri_template=>'version/'
,p_priority=>0
,p_etag_type=>'HASH'
);
wwv_flow_api.create_restful_handler(
 p_id=>wwv_flow_api.id(8991486632888101)
,p_template_id=>wwv_flow_api.id(8991376667888101)
,p_source_type=>'PLSQL'
,p_format=>'DEFAULT'
,p_method=>'GET'
,p_require_https=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    sys.htp.p( ''{ "version": "5.1" }'' );',
'end;'))
);
end;
/
-- SET SCHEMA
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'ECLASS';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA ECLASS - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_050100
-- Exported 05:58 Sunday June 2, 2019 by: SYSDBA
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 05:58 Sunday June 2, 2019 by: SYSDBA
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_api.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'ECLASS';
 
end;
/

begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
