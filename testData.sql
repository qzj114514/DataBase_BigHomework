use hospital;
INSERT INTO hosInfo VALUES('H001','XX医院','北京市海淀区');
INSERT INTO hosInfo VALUES('H002','YY医院','上海市浦东新区');
INSERT INTO Big_dpm VALUES('D001','内科','H001');
INSERT INTO Big_dpm VALUES('D002','外科','H001');
INSERT INTO Big_dpm VALUES('D003','儿科','H001');
INSERT INTO sm_dpm VALUES('S001','心脏科','三楼西侧','D001');
INSERT INTO sm_dpm VALUES('S002','神经科','六楼东侧','D001');
INSERT INTO sm_dpm VALUES('S003','骨科','四楼中央','D002');
INSERT INTO doctor VALUES('Doc001','王医生','男','S001','13888888888', '主任医师','123456');
INSERT INTO doctor VALUES('Doc002','李医生','女','S002','13999999999', '主治医师','123456');
INSERT INTO doctor VALUES('Doc003','赵医生','男','S003','13988877777', '主治医师','123456');
INSERT INTO patient VALUES('P001','张三','男','北京市海淀区金源假日','123456','13512341234');
INSERT INTO patient VALUES('P002','李四','女','北京市丰台区','123456','13512341235');
INSERT INTO patient VALUES('P003','王五','男','上海市普陀区真如街道','123456','021-87654321');
INSERT INTO room VALUES('101',5,'S001','东侧');
INSERT INTO room VALUES('102',5,'S001','西侧');
INSERT INTO bed VALUES('101','B001','R001');
INSERT INTO bed VALUES('102','B002','R002');
INSERT INTO bed VALUES('103','B003','R003');
INSERT INTO treat VALUES('T001','Sch001','静脉注射抗生素',200);
INSERT INTO treat VALUES('T002','Sch002','口服解热镇痛药',100);
INSERT INTO treat VALUES('T003','Sch003','换药并包扎',50);
INSERT INTO record VALUES('Re001','F001','T001','2020-03-20 08:30:00','发高烧,全身酸痛');
INSERT INTO record VALUES('Re002','F002','T002','2020-03-21 15:20:00','头痛、乏力');
INSERT INTO record VALUES('Re003','F003','T003','2020-03-22 20:10:00','手术切口红肿');
INSERT INTO pre VALUES('Pre001','高血压','P001','Doc001');
INSERT INTO pre VALUES('Pre002','糖尿病','P002','Doc002');
INSERT INTO pre VALUES('Pre003','贫血','P003','Doc003');
INSERT INTO med VALUES('M001','阿莫西林',20,500,'抗生素');
INSERT INTO med VALUES('M002','对乙酰氨基酚',10,200,'解热镇痛药');
INSERT INTO med VALUES('M003','红十字消炎止痛膏',15,100,'用于皮肤创面');
INSERT INTO list VALUES('L001','M001',3,'Pre001');
INSERT INTO list VALUES('L002','M002',2,'Pre002');
INSERT INTO list VALUES('L003','M003',1,'Pre003');
INSERT INTO tRoom VALUES('301','三楼东侧');
INSERT INTO tRoom VALUES('302','三楼西侧');
INSERT INTO tRoom VALUES('201','二楼南侧');
INSERT INTO pay VALUES('Pay001','挂号费','P001',50);
INSERT INTO pay VALUES('Pay002','药费','P002',200);
INSERT INTO pay VALUES('Pay003','手术费','P003',3000);
INSERT INTO payStd VALUES('S001','诊疗项目','初诊费',50,'首次就诊费用');
INSERT INTO payStd VALUES('S002','诊疗项目','复诊费', 30,'再次就诊费用');
INSERT INTO payStd VALUES('S003','手术相关','腹腔镜手术',3000,'普通的腹腔镜手术费用');

INSERT INTO admin VALUES('A001','123456');
INSERT INTO admin VALUES('A002','123456');
INSERT INTO admin VALUES('A003','123456');

INSERT INTO authority VALUES('A001',1);
INSERT INTO authority VALUES('A002',2);
INSERT INTO authority VALUES('A003',3);

INSERT INTO Scheduling_Plan VALUES('Sch001','Doc001','初诊','2020-03-20 08:00:00');
INSERT INTO Scheduling_Plan VALUES('Sch002','Doc002','复诊','2020-03-20 09:30:00');
INSERT INTO Scheduling_Plan VALUES('Sch003','Doc003','住院患者巡视','2020-03-20 14:30:00');

INSERT INTO ConRoom VALUES('CR001','2020-03-20 08:30:00');
INSERT INTO ConRoom VALUES('CR002','2020-03-20 10:00:00');
INSERT INTO ConRoom VALUES('CR003','2020-03-20 15:00:00');

INSERT INTO tour_schedule VALUES('TS001','2020-03-20 14:20:00');
INSERT INTO tour_schedule VALUES('TS002','2020-03-20 14:40:00');
INSERT INTO tour_schedule VALUES('TS003','2020-03-20 15:10:00');

INSERT INTO room VALUES('101',5,'S001','东侧');
INSERT INTO room VALUES('102',5,'S001','西侧');
INSERT INTO room VALUES('103',3,'S002','南侧');

INSERT INTO file VALUES('F001','2020-03-20','2020-03-25','P001','101','B001');
INSERT INTO file VALUES('F002','2020-03-19','2020-03-24','P002','102','B002');
INSERT INTO file VALUES('F003','2020-03-18','2020-03-26','P003','103','B003');

INSERT INTO reg VALUES('Reg001','Doc001','P001',NULL);
INSERT INTO reg VALUES('Reg002','Doc002','P002','CT检查');
INSERT INTO reg VALUES('Reg003','Doc003','P003','住院通知单');

INSERT INTO treatInfo VALUES('TI001','Doc001','P001','2020-03-20 08:30:00','头晕、乏力,低血压');
INSERT INTO treatInfo VALUES('TI002','Doc002','P002','2020-03-20 10:00:00','左手外伤,玻璃划伤');
INSERT INTO treatInfo VALUES('TI003','Doc003','P003','2020-03-20 15:00:00','肠梗阻,排便不畅');

INSERT INTO patient VALUES('P004','赵六','女','北京市昌平区回龙观','123456','13512341236');
INSERT INTO patient VALUES('P005','钱七','男','上海市杨浦区古美路','123456','021-87651234');

INSERT INTO doctor VALUES('Doc004','吴医生','女','S001','18812341234','主治医师','123456');
INSERT INTO doctor VALUES('Doc005','周医生','男','S003','17312341234','主治医师','123456');

INSERT INTO treat VALUES('T004','R004','舒缓治疗',120);
INSERT INTO treat VALUES('T005','R005','物理治疗',200);

INSERT INTO record VALUES('Re004','F004','T004','2020-03-23 09:30:00','便溏,腹痛');
INSERT INTO record VALUES('Re005','F005','T005','2020-03-24 15:20:00','腰背疼痛');

INSERT INTO pre VALUES('Pre004','便秘','P004','Doc004');
INSERT INTO pre VALUES('Pre005','腰肌劳损','P005','Doc005');

INSERT INTO med VALUES('M004','泻药',10,200,'通便除滞');
INSERT INTO med VALUES('M005','消炎止痛膏',25,50,'外用');

INSERT INTO list VALUES('L004','M004',1,'Pre004');
INSERT INTO list VALUES('L005','M005',1,'Pre005');

INSERT INTO pay VALUES('Pay004','门诊费','P004',30);
INSERT INTO pay VALUES('Pay005','检查费','P005',100);


INSERT INTO patient VALUES('P004','赵六','女','北京市昌平区回龙观','123456','13512341236');
INSERT INTO patient VALUES('P005','钱七','男','上海市杨浦区古美路','123456','021-87651234');

INSERT INTO doctor VALUES('Doc004','吴医生','女','S001','18812341234','主治医师','123456');
INSERT INTO doctor VALUES('Doc005','周医生','男','S003','17312341234','主治医师','123456');

INSERT INTO Scheduling_Plan VALUES('R004','Doc004','急诊','2020-03-22 10:30:00');
INSERT INTO Scheduling_Plan VALUES('R005','Doc005','复诊','2020-03-23 14:20:00');
INSERT INTO treat VALUES('T004','R004','舒缓治疗',120);
INSERT INTO treat VALUES('T005','R005','物理治疗',200);

INSERT INTO record VALUES('Re004','F004','T004','2020-03-23 09:30:00','便溏,腹痛');
INSERT INTO record VALUES('Re005','F005','T005','2020-03-24 15:20:00','腰背疼痛');

INSERT INTO pre VALUES('Pre004','便秘','P004','Doc004');
INSERT INTO pre VALUES('Pre005','腰肌劳损','P005','Doc005');

INSERT INTO med VALUES('M004','泻药',10,200,'通便除滞');
INSERT INTO med VALUES('M005','消炎止痛膏',25,50,'外用');

INSERT INTO list VALUES('L004','M004',1,'Pre004');
INSERT INTO list VALUES('L005','M005',1,'Pre005');

INSERT INTO pay VALUES('Pay004','门诊费','P004',30);
INSERT INTO pay VALUES('Pay005','检查费','P005',100);