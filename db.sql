# 创建医院表:
CREATE TABLE hosInfo(
                        hosID CHAR(10) NOT NULL PRIMARY KEY,
                        hosName CHAR(10) NOT NULL,
                        hosAddress VARCHAR(50) NOT NULL
);

# 创建部门表:
CREATE TABLE Big_dpm(
                        Big_dpmNo CHAR(10) NOT NULL PRIMARY KEY,
                        Big_dpmClass CHAR(10) NOT NULL,
                        hosNo CHAR(10) NOT NULL,
                        FOREIGN KEY (hosNo) REFERENCES hosInfo(hosID)
);

# 创建科室表:
CREATE TABLE sm_dpm(
                       sm_dpmNo CHAR(10) NOT NULL PRIMARY KEY,
                       sm_dpmClass CHAR(10) NOT NULL,
                       Sm_dpmSpot CHAR(10) NOT NULL,
                       Big_dpmNo CHAR(10) NOT NULL,
                       FOREIGN KEY (Big_dpmNo) REFERENCES Big_dpm(Big_dpmNo)
);

# 创建排班计划表:
CREATE TABLE Scheduling_Plan(
                                rangeNo CHAR(15) NOT NULL PRIMARY KEY,
                                docNo CHAR(10) NOT NULL,
                                rangeClass CHAR(10) NOT NULL,
                                rangeTime DATETIME NOT NULL,
                                FOREIGN KEY (docNo) REFERENCES doctor(docNo)
);

# 创建门诊计划表:
CREATE TABLE ConRoom(
                        ConRoomNo CHAR(15) NOT NULL PRIMARY KEY,
                        Time DATETIME NOT NULL
);

# 创建巡视计划表:
CREATE TABLE tour_schedule(
                              inpatNo CHAR(15) NOT NULL PRIMARY KEY,
                              Time DATETIME NOT NULL
);

# 创建病人表:
CREATE TABLE doctor(
                       docNo CHAR(10) NOT NULL PRIMARY KEY,
                       docName CHAR(10) NOT NULL,
                       sex CHAR(2) NOT NULL,
                       sm_dpmNo VARCHAR(30) NOT NULL,
                       telephone CHAR(13),
                       title CHAR(10) NOT NULL,
                       docPwd CHAR(20) NOT NULL,
                       FOREIGN KEY (sm_dpmNo) REFERENCES sm_dpm(sm_dpmNo)
);

# 创建病人表:
CREATE TABLE patient(
                        patNo CHAR(15) NOT NULL PRIMARY KEY,
                        patName CHAR(10) NOT NULL,
                        sex CHAR(2),
                        address VARCHAR(40) NOT NULL,
                        patPwd CHAR(20) NOT NULL,
                        telephone CHAR(13)
);

# 创建住院档案表:
CREATE TABLE file(
                     fileNo CHAR(15) NOT NULL PRIMARY KEY,
                     inTime DATETIME NOT NULL,
                     outTime DATETIME,
                     patNo CHAR(15) NOT NULL,
                     roomNo CHAR(3) NOT NULL,
                     bedNo CHAR(10) NOT NULL,
                     FOREIGN KEY (patNo) REFERENCES patient(patNo),
                     FOREIGN KEY (roomNo) REFERENCES room(roomNo)
);

# 创建治疗方案表:
CREATE TABLE treat(
                      treatNo CHAR(15) NOT NULL PRIMARY KEY,
                      rangeNo CHAR(15) NOT NULL,
                      howToTreat VARCHAR(30) NOT NULL,
                      treatPrice FLOAT,
                      FOREIGN KEY (rangeNo) REFERENCES Scheduling_Plan(rangeNo)
);

# 创建住院记录表:
CREATE TABLE record(
                       recordNo CHAR(15) NOT NULL PRIMARY KEY,
                       fileNo CHAR(15) NOT NULL,
                       treatNo CHAR(15) NOT NULL,
                       recordTime DATETIME NOT NULL,
                       symptom VARCHAR(30) NOT NULL,
                       FOREIGN KEY (fileNo) REFERENCES file(fileNo),
                       FOREIGN KEY (treatNo) REFERENCES treat(treatNo)
);

# 创建病房表:
CREATE TABLE room(
                     roomNo CHAR(3) NOT NULL PRIMARY KEY,
                     rank INT NOT NULL,
                     dpmNo VARCHAR(30) NOT NULL,
                     roomSpot VARCHAR(30) NOT NULL,
                     FOREIGN KEY (dpmNo) REFERENCES sm_dpm(sm_dpmNo)
);

# 创建床位表:
CREATE TABLE bed(
                    roomNo CHAR(3) NOT NULL,
                    bedNo CHAR(10) NOT NULL PRIMARY KEY,
                    inpatNo CHAR(15) NOT NULL,
                    FOREIGN KEY (roomNo) REFERENCES room(roomNo),
                    FOREIGN KEY (inpatNo) REFERENCES inpat(inpatNo)
);

# 创建挂号单表:
CREATE TABLE reg(
                    regNo CHAR(15) NOT NULL PRIMARY KEY,
                    docNo CHAR(10) NOT NULL,
                    patNo  CHAR(10) NOT NULL,
                    Tips VARCHAR(50),
                    FOREIGN KEY (docNo) REFERENCES doctor(docNo),
                    FOREIGN KEY (patNo) REFERENCES patient(patNo)
);

# 创建就诊信息表:
CREATE TABLE treatInfo(
                          treatNo CHAR(15) NOT NULL PRIMARY KEY,
                          docNo CHAR(10) NOT NULL,
                          patNo CHAR(10) NOT NULL,
                          treatTime DATETIME NOT NULL,
                          TreatInfo VARCHAR(50) NOT NULL,
                          FOREIGN KEY (docNo) REFERENCES doctor(docNo),
                          FOREIGN KEY (patNo) REFERENCES patient(patNo)
);

# 创建药物记录表:
CREATE TABLE med(
                    medNo CHAR(15) NOT NULL PRIMARY KEY,
                    medName VARCHAR(50) NOT NULL,
                    medPrice FLOAT NOT NULL,
                    medAmount INT NOT NULL,
                    medUse VARCHAR(50) NOT NULL
);

# 创建诊疗处方表:
CREATE TABLE pre(
                    preNo CHAR(30) NOT NULL PRIMARY KEY,
                    symptom VARCHAR(30) NOT NULL,
                    PatNo CHAR(10) NOT NULL,
                    docNo CHAR(10) NOT NULL,
                    FOREIGN KEY (PatNo) REFERENCES patient(patNo),
                    FOREIGN KEY (docNo) REFERENCES doctor(docNo)
);

# 创建用药清单表:
CREATE TABLE list(
                     listNo CHAR(20) NOT NULL PRIMARY KEY,
                     medNo CHAR(10) NOT NULL,
                     quantity INT NOT NULL,
                     preNo CHAR(30) NOT NULL,
                     FOREIGN KEY (medNo) REFERENCES med(medNo),
                     FOREIGN KEY (preNo) REFERENCES pre(preNo)
);

# 创建诊室表:
CREATE TABLE tRoom(
                      tRoomNo CHAR(5) NOT NULL PRIMARY KEY,
                      tRoomSpot VARCHAR(30) NOT NULL
);

# 创建缴费单表:
CREATE TABLE pay(
                    payNo CHAR(15) NOT NULL PRIMARY KEY,
                    payFor VARCHAR(30) NOT NULL,
                    patNo CHAR(10) NOT NULL,
                    totalAmount NUMERIC,
                    FOREIGN KEY (patNo) REFERENCES patient(patNo)
);

# 创建收费标准表:
CREATE TABLE payStd(
                       payStd VARCHAR(20) NOT NULL PRIMARY KEY,
                       category VARCHAR(20) NOT NULL,
                       stdName VARCHAR(20) NOT NULL,
                       stdPrice DOUBLE NOT NULL,
                       stdInfo VARCHAR(50) NOT NULL
);

# 创建管理员表:
CREATE TABLE admin(
                      account CHAR(10) NOT NULL PRIMARY KEY,
                      adminPwd CHAR(20) NOT NULL
);

# 创建账号权限表:
CREATE TABLE authority(
                          account CHAR(10) NOT NULL PRIMARY KEY,
                          authority INT,
                          FOREIGN KEY (account) REFERENCES admin(account)
);