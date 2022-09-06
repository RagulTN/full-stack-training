        function ValidateApplicantname() {
            var txtApplicantname = document.getElementById("txtApplicantname").value;
            
            var Applicantnameformat = /^[a-zA-Z ]{2,30}$/;
            if(txtApplicantname != '')
            {
            if  (txtApplicantname.match(Applicantnameformat)) {
                return true;
            } else {
                alert("invalid Applicant name");
                return false;
            }  
            }
        
        }
        function ValidateFathername() {
            var txtFathername = document.getElementById("txtFathername").value;
            
            var Fathernameformat = /^[a-zA-Z ]{2,30}$/;
            if(txtFathername != '')
            {
            if  (txtFathername.match(Fathernameformat)) {
                return true;
            } else {
                alert("invalid Father name");
                return false;
            }  
            }
        
        }
        function ValidateMothername() {
            var txtMothername = document.getElementById("txtMothername").value;
            
            var Mothernameformat = /^[a-zA-Z ]{2,30}$/;
            if(txtMothername != '')
            {
            if  (txtMothername.match(Mothernameformat)) {
                return true;
            } else {
                alert("invalid Mother name");
                return false;
            }  
            }
        
        }

        function Phonenumber() {
            var txtNumber = document.getElementById("txtNumber").value;
            var phoneno = /^\+?([0-9]{3})\)?[-. ]?([0-9]{8})$/;
            var phoneno1 = /^\d{10}$/;
            
            if(txtNumber != '')
            {
                if(txtNumber.match(phoneno1))
                {
                    return true;
                }
               else if (txtNumber.match(phoneno)) {
                return true;
            } else {
                alert("invalid Phone number");
                return false;
            }  
            }
           
        }
        function ValidateGamil() {
            var txtGmail = document.getElementById("txtGmail").value;
            
            var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if(txtGmail != '')
            {
               if  (txtGmail.match(mailformat)) {
                return true;
            } else {
                alert("Invalid Gmail");
                return false;
            }  
            }
           
        }
        function ValidateAddress() {
            var txtAddress = document.getElementById("txtAddress").value;
            
            var addressformat = "[#.0-9a-zA-Z\s,-]+$";
            if(txtAddress != '')
            {
               if  (txtAddress.match(addressformat)) {
                return true;
            } else {
                alert("invalid Address number");
                return false;
            }  
            }
           
        }
        function ValidateCity() {
            var txtCity = document.getElementById("txtCity").value;
            
            var cityformat = /^[a-zA-Z ]{2,30}$/;
            if(txtCity != '')
            {
               if  (txtCity.match(cityformat)) {
                return true;
            } else {
                alert("invalid city name");
                return false;
            }  
            }
           
        }
        function ValidateState() {
            var txtState = document.getElementById("txtState").value;
            
            
            if(txtState !='')
            { 
                return true;
            }  
              }
        function ValidatePincode() {
            var txtPincode = document.getElementById("txtPincode").value;
            
            var pincode =/^\d{6}$/;;
            if(txtPincode != '')
            {
               if  (txtPincode.match(pincode)) {
                return true;
            } else {
                alert("invalid Pincode name");
                return false;
            }  
            }
           
        }

        function ValidateBoard() {
            var txtBoard = document.getElementById("txtBoard").value;
            
            var boardformat = /^[a-zA-Z ]{2,30}$/;
            if(txtBoard != '')
            {
               if  (txtBoard.match(boardformat)) {
                return true;
            } else {
                alert("invalid Board/University name");
                return false;
            }  
            }
           
        }
        function ValidateBoard1() {
            var txtBoard1 = document.getElementById("txtBoard1").value;
            
            var boardformat1 = /^[a-zA-Z ]{2,30}$/;
            if(txtBoard1 != '')
            {
               if  (txtBoard1.match(boardformat1)) {
                return true;
            } else {
                alert("invalid Board/University name");
                return false;
            }  
            }
           
        }

        function ValidateYear() {
            var txtYear = document.getElementById("txtYear").value;
            
            
            var yearformat =/^\d{4}$/;
            if(txtYear != '')
            {
               if(txtYear.match(yearformat)) {
                return true;
            } else {
                alert("invalid Year ");
                return false;
            }  
            }
           
        }
        function ValidateMark() {
            var txtMarks = document.getElementById("txtMarks").value;
            
            
            var marksformatofsslc = /^\d{3}$/;
            if(txtMarks != '')
            {
               if(txtMarks.match(marksformatofsslc)) {
                return true;
            } else {
                alert("invalid Mark please put corrected mark ");
                return false;
            }  
            }
           
        }
        function ValidateMark1() {
            var txtMarks1 = document.getElementById("txtMarks1").value;
            
            
            var marksformatofhsc = /^\d{3}$/;
            if(txtMarks1 != '')
            {
               if(txtMarks1.match(marksformatofhsc)) {
                return true;
            } else {
                alert("invalid Mark please put corrected mark ");
                return false;
            }  
            }
           
        }
        function ValidateMarkObtain() {
            var txtMarkObtain = document.getElementById("txtMarkObtain").value;
            
            
            var marksformatofdegree = /^\d{1,3}$/;
            if(txtMarkObtain != '')
            {
               if(txtMarkObtain.match(marksformatofdegree)) {
                return true;
            } else {
                alert("invalid Mark please put corrected mark ");
                return false;
            }  
            }
           
        }
        function ValidatePrecentage() {
            var txtPrecentage = document.getElementById("txtPrecentage").value;
            
            
            var marksformatofprecentage = /^([1-9]([0-9])?|0)(\.[0-9]{1,2})?$/;
            if(txtPrecentage != '')
            {
               if(txtPrecentage.match(marksformatofprecentage)) {
                return true;
            } else {
                alert("invalid Precentage please put corrected Precentage of Mark ");
                return false;
            }  
            }
           
        }

        function AadharValidate() {
            var aadhar = document.getElementById("txtAadhar").value;
           
            var adharSixteenDigit = /^\d{16}$/;
            if (aadhar != '') {
                 
                if (aadhar.match(adharSixteenDigit)) {
                    return true;
                }
                else {
                    alert("Enter valid Aadhar Number");
                    return false;
                }
            }
            
        }
        function ValidatePAN() {
                var txtPANCard = document.getElementById("txtPANCard").value;
                
                var regex = /([A-Z]){5}([0-9]){4}([A-Z]){1}$/;
                if(txtPANCard != '')
                {
                   if  (txtPANCard.match(regex)) {
                    return true;
                } else {
                    alert("invalid pan number");
                    return false;
                }  
                }
               
            }