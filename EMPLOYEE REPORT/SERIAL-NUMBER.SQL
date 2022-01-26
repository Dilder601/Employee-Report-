CREATE TABLE TEST_TAB(ID NUMBER(10) PRIMARY KEY,
                      SL NUMBER(10),
                      NAME VARCHAR2(30),
                      DOB DATE);




---------------------IG auto serial----------------------
Dynamic Action : 
Event : Row Initialization
Selection Type : Region
Region : My Region

True Action: Executive JavaScript Code

Code : fnc_auto_serialD();

Function and Global Variable Declaration :

function fnc_auto_serialD(){
var model = apex.region("SERIAL").widget().interactiveGrid("getViews", "grid").model;
var slnO = 0;
model.forEach(function(rec) {
    slnO += 1;
    model.setValue(rec,"SL",''+slnO+'');    
});
}
//////////////////////////////


CREATE SEQUENCE PL_BASIC_INFO_SEQ
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;


CREATE SEQUENCE PL_ACADEMIC_INFO_SEQ
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE PL_JOB_EXP_INFO_SEQ
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;


CREATE SEQUENCE PL_BANK_ACC_INFO
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;

CREATE SEQUENCE PL_NOMINEE_INFO_SEQ
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;




create or replace TRIGGER PL_BASIC_INFO_TRI
BEFORE UPDATE OR INSERT OR DELETE
ON PL_BASIC_INFORMATION
FOR EACH ROW
BEGIN

	IF INSERTING THEN
		IF(:NEW.ID IS NULL) THEN
			:NEW.ID := PL_BASIC_INFO_SEQ.NEXTVAL;
		END IF;
	END IF;

END PL_BASIC_INFO_TRI;


create or replace TRIGGER PL_ACADEMIC_INFO_TRI
BEFORE UPDATE OR INSERT OR DELETE
ON PL_ACADEMIC_INFORMATION
FOR EACH ROW
BEGIN

	IF INSERTING THEN
		IF(:NEW.ID IS NULL) THEN
			:NEW.ID := PL_ACADEMIC_INFO_SEQ.NEXTVAL;
		END IF;
	END IF;

END PL_ACADEMIC_INFO_TRI;


create or replace TRIGGER PL_JOB_EXP_INFO_TRI
BEFORE UPDATE OR INSERT OR DELETE
ON PL_JOB_EXP_INFO
FOR EACH ROW
BEGIN

	IF INSERTING THEN
		IF(:NEW.ID IS NULL) THEN
			:NEW.ID := PL_JOB_EXP_INFO_SEQ.NEXTVAL;
		END IF;
	END IF;

END PL_JOB_EXP_INFO_TRI;



create or replace TRIGGER PL_BANK_ACC_INFO_TRI
BEFORE UPDATE OR INSERT OR DELETE
ON PL_BANK_ACCOUNT_INFO
FOR EACH ROW
BEGIN

	IF INSERTING THEN
		IF(:NEW.ID IS NULL) THEN
			:NEW.ID := PL_BANK_ACC_INFO.NEXTVAL;
		END IF;
	END IF;

END PL_BANK_ACC_INFO_TRI;


create or replace TRIGGER PL_NOMINEE_INFO_TRI
BEFORE UPDATE OR INSERT OR DELETE
ON PL_NOMINEE_INFO
FOR EACH ROW
BEGIN

	IF INSERTING THEN
		IF(:NEW.ID IS NULL) THEN
			:NEW.ID := PL_NOMINEE_INFO_SEQ.NEXTVAL;
		END IF;
	END IF;

END PL_NOMINEE_INFO_TRI;


-----------+
CREATE TABLE PL_TRAINING_INFORMATION(
									ID					NUMBER	PRIMARY KEY,
									TRAINING_TITLE		VARCHAR2(100),
									TRAINING_TOPICS		VARCHAR2(100),
									TRAINING_INSTITUTE	VARCHAR2(100),
									TRAINING_YEAR		VARCHAR2(100),
									TRAINING_DURATION	VARCHAR2(100),
									TRAINING_COUNTRY	VARCHAR2(100),
									EMP_ID				NUMBER
								 );

CREATE SEQUENCE PL_TRAINING_INFORMATION_SEQ
START WITH 1000
INCREMENT BY 1
NOCACHE
NOCYCLE;


create or replace TRIGGER PL_TRAINING_INFO_TRI
BEFORE UPDATE OR INSERT OR DELETE
ON PL_TRAINING_INFORMATION
FOR EACH ROW
BEGIN

	IF INSERTING THEN
		IF(:NEW.ID IS NULL) THEN
			:NEW.ID := PL_TRAINING_INFORMATION_SEQ.NEXTVAL;
		END IF;
	END IF;

END PL_TRAINING_INFO_TRI;


--------------------------------------------------

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="emp.css">
    <title>EMPLOYEE REPORT</title>
</head>
<body>
    <!-- <div class="com-logo">
        <img src="../EMPLOYEE REPORT/image/EyeHospital.jpg" alt="Image" width="80px" height="80px>
    </div> -->
    <div class="emp-inf" style="text-align: center;line-height:0.5px;">
        <h2>Bangladesh Eye Hospital</h2>
        <h6>78,Shatmoasjid Road(West of Road 27), Dhanmondi, Dhaka -1205</h6>
        <h2>Employee Information Sheet</h2>
    </div>
<h3>Basic Information</h3>

    <div class="basic-info">
        <!-- start first layer for basic info -->
        <div class="first-layer">
           <table style="border: none;width: 100%;">
            <tr>
            <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Employee Id </td><td>: MSL54869101</td>
            </tr>
            <tr>
            <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Employee Name </td><td>: Dilder Hossain</td>
            </tr>
            <tr>
            <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Designation </td><td>: Jr. Software Engineer</td>
            </tr>
            <tr>
            <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Department</td><td>: IT</td>
            </tr>
            <tr>
            <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Joining Date</td><td>: 10-Feb-2021</td>
            </tr>
            <tr>
            <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Gender</td><td>: Male</td>
            </tr>
            <tr>
            <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Maritual Status</td><td>: Unmarried</td>
            </tr>
            </table>
            <!-- end first layer for basic info -->
        </div>
        


        <!-- start second layer for basic info -->
        <div class="second-layer" >
            <table width="100%">
                <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Date Of Birth </td><td>: 10-NOV-1994</td>
                </tr>
                <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Religion </td><td>: ISLAM</td>
                </tr>
                <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Birth Sign </td><td>: Bangladeshi</td>
                </tr>
                <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">NID</td><td>: 199410103659789</td>
                </tr>
                <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Passport No</td><td>: 19945876541215489</td>
                </tr>
                <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Birth Certificate No</td><td>: N/A</td>
                </tr>
                <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Nationality</td><td>: Bangladeshi</td>
                </tr>
                </table>
                <!-- end second layer for basic info -->
        </div>
    </div>
<!-- start contract info -->
    <h3>Contract Information</h3>
<div class="contract-info">
    
    <div class="con-first-layer">
        <table width="100%">    
            <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Present Address</td><td>: Dhaka, Bangladesh</td>
            </tr>

            <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Permanent Address</td><td>: Dagonbhuiyan, Feni</td>
            </tr>
        </table>
    </div>

    <div class="con-second-layer">
        <table width="100%">    
            <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Mobile </td><td>: 01635000601</td>
            </tr>

            <tr>
                <td style="font-size:10pt;text-align:left;line-height:1.6rem;">Emergency No</td><td>: 01833034704</td>
            </tr>
        </table>
    </div>
    <!-- end  contract info -->
</div>

<!-- start academic information -->

<h3>Academic Information</h3>
<div class="academic-info">
    <table style="width:100%"; border="1px solid black">
        <tr>
          <th >Level of Education</th>
          <th >Exam/Degree Title</th>
          <th>Institute Name</th>
          <th >Major</th>
          <th >Result </th>
          <th>Year</th>
        </tr>
        <tr>
          <td>Masters</td>
          <td>Masters</td>
          <td>National University of Feni Govt. College</td>
          <td>Management</td>
          <td>3.25</td>
          <td>2018</td>
        </tr>
        <tr>
          <td>Hons</td>
          <td>BBA</td>
          <td>National University of Feni Govt. College</td>
          <td>Management</td>
          <td>3.17</td>
          <td>2017</td>
        </tr>
        <tr>
            <td>Higher Secondary </td>
            <td>HSC</td>
            <td>Iqbal Memorial Govt. Degree College</td>
            <td>Business Studies</td>
            <td>4.88</td>
            <td>2012</td>
          </tr>

          <tr>
            <td>Secondary </td>
            <td>SSC</td>
            <td>Ataturk Govt. Model High School</td>
            <td>Business Studies</td>
            <td>4.88</td>
            <td>2012</td>
          </tr>
      </table>
      <!-- end academic information -->
</div>

<!-- start training information -->
<h3>Training Information</h3>
<div class="training-info">
    <table style="width:100%"; border="1px solid black">
        <tr>
          <th >Training Title</th>
          <th >Topics</th>
          <th>Institute Address</th>
          <th >Year</th>
          <th >Duration </th>
          <th>Country</th>
        </tr>
        <tr>
          <td>Database Design & Development</td>
          <td>Database</td>
          <td>Agargao, Dhaka</td>
          <td>2020</td>
          <td>1 Years </td>
          <td>Bangladesh</td>
        </tr>
        <tr>
          <td>Computer Fundametal</td>
          <td>M/S Word,Excel, Power Pint, Access, Internet And Browsing</td>
          <td>Agargao, Dhaka</td>
          <td>2020</td>
          <td>2 Months</td>
          <td>Bangladesh</td>
        </tr>
        <tr>
            <td>IELTS</td>
            <td>Reding, Writting, Speking and Listining</td>
            <td>Feni, Hauqe Tower</td>
            <td>2014</td>
            <td>4 Months</td>
            <td>Bangladesh</td>
          </tr>
      </table>

      <!-- END training information -->
</div>

<!-- start job experience info -->
<h3>Job Experience Information</h3>
<div class="job-exp-info">
    <table style="width:100%"; border="1px solid black">
        <tr>
          <th >Company Name</th>
          <th >Company Business</th>
          <th>Department</th>
          <th >Position Held</th>
          <th >Responsibilities </th>
          <th>Reponds From</th>
          <th>Responds To</th>
        </tr>
        <tr>
          <td>Mononsoft LTD</td>
          <td>Group Of Company</td>
          <td>IT</td>
          <td>Jr. Software Engineer</td>
          <td>Oracle Apex & PL/SQL </td>
          <td>02-FEB-2021</td>
          <td>Till Now</td>
        </tr>
        <tr>
            <td>Mononsoft LTD</td>
            <td>Group Of Company</td>
            <td>IT</td>
            <td>Jr. Software Engineer</td>
            <td>Oracle Apex & PL/SQL </td>
            <td>02-FEB-2021</td>
            <td>Till Now</td>
        </tr>
        <tr>
            <td>Mononsoft LTD</td>
            <td>Group Of Company</td>
            <td>IT</td>
            <td>Jr. Software Engineer</td>
            <td>Oracle Apex & PL/SQL </td>
            <td>02-FEB-2021</td>
            <td>Till Now</td>
          </tr>
      </table>
      <!-- start job experience info -->
</div>
<!-- Start Bank account information -->
<h3>Bank Account Information</h3>
<div class="bank-info">
    <table style="width:100%"; border="1px solid black">
        <tr>
          <th >Bank Name</th>
          <th >Account Name</th>
          <th>Account No</th>
          <th >Ac Type</th>
          <th >Bank Address </th>
          <th>Ac Opening Date</th>
        </tr>
        <tr>
          <td>Dutch Bangla Bank LTD.</td>
          <td>Dilder Hossain</td>
          <td>174.105.5030</td>
          <td>Current Account</td>
          <td>Dagonbhuiyan, Feni </td>
          <td>12/01/2011</td>
        </tr>
        <tr>
          <td>Prime Bank</td>
          <td>Dilder Hossain</td>
          <td>2015.254.117</td>
          <td>Current Account</td>
          <td>Dhaka, karwan Bazar</td>
          <td>05/04/2021</td>
        </tr>
        <!-- End Bank account information -->
      </table>
</div>

<!-- start Nominee Information -->

<h3>Nominee Information</h3>
<div class="nominee-info">
    <table style="width:100%"; border="1px solid black">
        <tr>
          <th >Nominee Name</th>
          <th >Fathers Name</th>
          <th>Mothers Name</th>
          <th >Relation</th>
          <th >Nominee Address </th>
          <th>Share (%)</th>
        </tr>
        <tr>
          <td>Ali Hossain</td>
          <td>Late. Tofazzol Hossain</td>
          <td>Late. Ammatanur</td>
          <td>Father</td>
          <td>Dagonbhuiyan, Feni </td>
          <td>50</td>
        </tr>
        <tr>
          <td>Sayed Hossain</td>
          <td>Ali Hossain</td>
          <td>Ferdous Ara</td>
          <td>Brother</td>
          <td>Dagonbhuiyan, Feni </td>
          <td>50</td>
        </tr>
        <!-- End Bank account information -->
      </table>
</div>
</body>
</html>



<style>
.com-logo{
    display: flex;
}

.basic-info{
    display: flex;
}
table{
    border-collapse: collapse;
}
.second-layer{
    margin-left:250px;
}


.contract-info{
    display: flex;
}

.con-second-layer{
    margin-left:250px;
}

/* Responsive layout - makes a one column layout instead of a two-column layout */


  @media (max-width: 800px) {
    .emp-inf {
      flex-direction: column;
    }
  }

  @media print {
    .training-info {page-break-after: always;}
  }

  @page{
      size: A4;
  }
</style>    