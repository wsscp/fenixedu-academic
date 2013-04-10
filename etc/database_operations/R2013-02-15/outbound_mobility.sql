create table `OUTBOUND_MOBILITY_CANDIDACY_SUBMISSION` (`OID` bigint unsigned, `OID_REGISTRATION` bigint unsigned, `OID_ROOT_DOMAIN_OBJECT` bigint unsigned, `OID_OUTBOUND_MOBILITY_CANDIDACY_PERIOD` bigint unsigned, `ID_INTERNAL` int(11) NOT NULL auto_increment, primary key (ID_INTERNAL), index (OID), index (OID_REGISTRATION), index (OID_ROOT_DOMAIN_OBJECT), index (OID_OUTBOUND_MOBILITY_CANDIDACY_PERIOD)) ENGINE=InnoDB, character set utf8;
create table `OUTBOUND_MOBILITY_CANDIDACY_CONTEST` (`VACANCIES` int(11), `OID` bigint unsigned, `OID_EXECUTION_DEGREE` bigint unsigned, `OID_UNIT` bigint unsigned, `OID_ROOT_DOMAIN_OBJECT` bigint unsigned, `OID_OUTBOUND_MOBILITY_CANDIDACY_PERIOD` bigint unsigned, `CODE` text, `ID_INTERNAL` int(11) NOT NULL auto_increment, primary key (ID_INTERNAL), index (OID), index (OID_EXECUTION_DEGREE), index (OID_UNIT), index (OID_ROOT_DOMAIN_OBJECT), index (OID_OUTBOUND_MOBILITY_CANDIDACY_PERIOD)) ENGINE=InnoDB, character set utf8;
create table `OUTBOUND_MOBILITY_CANDIDACY` (`PREFERENCE_ORDER` int(11), `OID_OUTBOUND_MOBILITY_CANDIDACY_CONTEST` bigint unsigned, `OID` bigint unsigned, `OID_OUTBOUND_MOBILITY_CANDIDACY_SUBMISSION` bigint unsigned, `SELECTED` tinyint(1), `OID_ROOT_DOMAIN_OBJECT` bigint unsigned, `ID_INTERNAL` int(11) NOT NULL auto_increment, primary key (ID_INTERNAL), index (OID), index (OID_OUTBOUND_MOBILITY_CANDIDACY_CONTEST), index (OID_OUTBOUND_MOBILITY_CANDIDACY_SUBMISSION), index (OID_ROOT_DOMAIN_OBJECT)) ENGINE=InnoDB, character set utf8;