<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Brimma Tech</title>
    <link rel="icon" type="image/x-icon" href="1646025712126.jpg">
</head>
<style>
    *
    {
        margin: 0px;
        padding: 0px;
        overflow: hidden;
        font-family: sans-serif;
        color: black;
    }
    .new {
        height: 100vh;
        width: 100%;
        background-image: url("bg.jpg");
        background-position: center;
        background-size: cover;
        overflow: hidden;
    }
    .new h1 {
        color: black;
        text-align: center;
    }
    .empcode
    {
        margin-left: 83%;
    }
    input 
    {
        color: black;
        text-transform: uppercase;
        border-radius:4px;
        
    }
    .button {
        background-color: #4CAF50; /* Green */
        border: none;
        color: white;
        padding: 5px 7px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
    }
     

      
</style>
<body>
        <div class="new">
            <h1>Employee Management System</h1><br>
            <hr color="skyblue" style="height: 2px ;width: 100%;color: black;">
            
                <div class="empcode">
                    <label for="">Emp Code</label>
                 <input type="number" required style="color:black;">
                </div>
            <center>
            
                <fieldset style="width: 70%;">
                    <legend>Person Details</legend>
                    <table >
                       <form method="post">
                        <tr>
                            <td>
                                <label>First Name</label>
                            </td>
                            <td>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="text" required>
                            </td>
                            <td colspan>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <label>Email</label>
                            </td>
                            <td colspan>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="email" required>
                            </td>
                        </tr>
                        <tr>
                            <td><br>
                                <label>Last Name</label>
                            </td>
                            <td><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="text" required>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <label>Married</label>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="radio">Yes <input type="radio">No
                            </td>
                        </tr>
                        <tr>
                            <td><br>
                                <label>Full Name</label>
                            </td>
                            <td><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="text" required>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <label>Spouse Name</label>
                            </td><br>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="text">
                            </td>
                        </tr>
                        <tr>
                            <td><br>
                                <label>Gender</label>
                            </td>
                            <td><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="radio">Male <input type="radio">Female
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <label>Spouse Working</label>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="radio">Yes <input type="radio">No
                            </td>
                        </tr>
                        <tr>
                            <td><br>
                                <label>Age</label>
                            </td>
                            <td><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="number" required>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <label>Company Name</label>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="text" required>
                            </td>
                        </tr>
                        <tr>
                            <td><br>
                                <label>DOB</label>
                            </td>
                            <td><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="date" required>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <label>Place</label>
                            </td>
                            <td colspan><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="text"> 
                            </td>
                        </tr>
                        <tr >
    
                            <td colspan="3" style="padding-left: 425px;"><br>
                                <label>Salary</label>
                            </td>
                            <td><br>
                                &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                <input type="text">
                            </td>
                        </tr>
                        
                       </form> 
                        
                    </table>
                </fieldset>
                <br>
                <br>
                <br>
                
    
                 <fieldset style="width:70%;">
                    <legend>Official Details</legend>
                    <table>
                        <form method="post">
                            <tr>
                                <td>
                                    <label>Department</label>
                                </td>
                                <td>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="text" required>
                                </td>
                                <td colspan>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <label>Grade</label>
                                </td>
                                <td colspan>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="number" required>
                                </td>
                            </tr>
                            <tr>
                                <td><br>
                                    <label>Desingnation</label>
                                </td>
                                <td><br>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="text" required>
                                </td>
                                <td colspan><br>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <label>Grade</label>
                                </td>
                                <td colspan><br>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="text" required>
                                </td>
                            </tr>
                        </form>
                    </table>
    
                 </fieldset>
                 <br>
                 <br>
                 <br>
                 <fieldset style="width:70%;">
                    <legend>Contact Details</legend>
                    <table>
                        <form method="post">
                             
                            <tr>
                                <td>
                                    <label>Contact 1</label>
                                </td>
                                <td>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="number" required>
                                </td>
                                <td colspan>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <label>Contact 2</label>
                                </td>
                                <td colspan>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="number" required>
                                </td>
                            </tr>
                            <tr>
                                <td><br>
                                    <label>Email</label>
                                </td>
                                <td>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="email" required>
                                </td>
                                <td colspan><br>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <label>Address</label>
                                </td>
                                <td colspan><br>
                                    &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;  &nbsp; &nbsp;&nbsp;
                                    <input type="text" required style="height: 40px;">
                                </td>
                            </tr>
                            <tr>
                        </form>
                    </table>
                 </fieldset>
                <input type="submit" class="button" value="Submit" style="cursor:pointer">
                <input type="reset" class="button"  value="Refresh" style="cursor:pointer">
                <input type="button" class="button"  value="Save" style="cursor:pointer">
            </center>   
            </div>
        </div>
</body>
</html>