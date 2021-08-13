
<%@page import="com.example.hotel_management.model.UserdetailsModel"%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xml:lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel = "stylesheet" href = "/booking_details.css" />
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
              <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>User Details</title>
<style>
.p{
    background-color:white;
    height:600px;
    width:1200px;
    margin: auto;
margin-top:100px;
     box-shadow: 5px 5px 5px 5px;
    opacity:0.8;
     
}
.searchbox{
float:left;
margin-top:50px;
}

table {
   
    font-family: arial, sans-serif;
    border-collapse: collapse;
     width:100%; 
   
  }
  
td, th {
    border: 1px solid #dddddd;
    text-align: center;
 
   
}

.heading {
    display: flex;
    justify-content: center;
    margin-top: 60px;
    font-family:"Times New Roman";
    backgroud-colour:"pink";
}

</style>
</head>
<body  class="text-info">
 <div class="container" >
    <div class = "heading">
        <h1>User Details</h1>
        
    </div>
    <div class="searchbox">
    <form action="/search" class="form-inline" method="post">
 
    <input type=text  name="name" placeholder="search_by_mailid"/>

    <button type="submit" style="background-color:black;"><i class="fa fa-search" aria-hidden="true" style="color:white;" ></i></button>
    </form>
    </div>
</div>
 <%
    try
    {
       
    %>
<div class="p">
<table  class = "booking__table">
    <caption>User Details </caption>
<div class="table table-stripped table-dark">
      <thead>
          <tr>
             <th scope="column" class="table-dark">USER ID</th>
             <th scope="column" class="table-dark">FIRST NAME</th>
             <th scope="column" class="table-dark">LAST NAME</th>
             <th scope="column" class="table-dark">EMAIL ID</th>
             <th scope="column" class="table-dark">MOBILE NUMBER</th>
             <th scope="column" class="table-dark">PASSWORD</th>
             <th scope="column" class="table-dark">KEYWORD</th>
          </tr>
      </thead>
</div>
      <tbody>
        <%List<UserdetailsModel> users=(List)request.getAttribute("l");
        
        	for(UserdetailsModel user:users){
            %>
            <tr>
                <td><%=user.getUserid() %></td>
               <td><%=user.getFirstname() %></td>
               <td><%=user.getLastname() %></td>
               <td><%=user.getEmail() %></td>
               <td><%=user.getPhnumber() %></td>
               <td><%=user.getPassword()%></td>
               <td><%=user.getKeyword() %></td>
            </tr>
            <%}%>
           </tbody>
        </table><br>
</div>
</div>
    <%}
    catch(Exception e){
        out.print(e.getMessage());%><br><%
    }
    finally{
     }
    %>
</body>
</html>