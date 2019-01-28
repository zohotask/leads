<h2 align="center">Zohotask api</h2>

<b>Step-1:</b>     Create a self client in zoho developer console https://accounts.zoho.com/developerconsole to get 
<ul>
  <li>client_id</li>
  <li>client_secret</li>
 </ul>
<h4>Sign Up:</h4>
<p> To sign up please visit: https://zetoe.000webhostapp.com/zoho/register.html and provide the details 
  <ul>
   <li>User name</li>
   <li>Email</li>
   <li>Password</li>
   <li>Client_id</li>  (created in self client )
   <li>Client_secret</li>  (created in self client )
   <li>Redirect uri</li>
   <li>Scope</li>  (eg: ZohoCRM.modules.ALL)
 </ul>
 
<p>Then click "Getcode" Button.  You will be redirected zoho confirmation page. <p>Click "Accept" button and click "Get Token From Zoho" button.</p>
<p>You will get alert "You are successfully registered". Now you can use the api-end points to access zoho leads</p>

<h4>Login :</h4>
  <p><b>Route:</b> localhost/api/login</br>
    <b>Method:</b>Post</br>
    <b>form-data:</b> 
    email : {{registered email}}</br>
    password: {{your password}}</br>
  <b>Response:</b> access-token is received, Token type: Bearer
</p>

<h4>Get All leads :</h4>
  <p><b>Route:</b> localhost/api/leads</br>
  <b>Method:</b >Get </br>
  <b>Header:</b>Authorization : Bearer {{acess-token}}</br>
  <b>Response:</b> All leads as json data
  </p>
  
  <h4>Get lead by Id :</h4>
  <p><b>Route:</b> localhost/api/leads/{id}
  <b>Method:</b >Post </br>
  <b>Header:</b>Authorization : Bearer {{acess-token}}</br>
  <b>Response:</b>Lead of the provided 'Id' as json data
  </p>
  
  <h4>Insert lead :</h4>
  <p><b>Route:</b> localhost/api/insertLead}
  <b>Method:</b >Post </br>
  <b>Header:</b>Authorization : Bearer {{ acess-token}}</br>
  <b>body-raw:</b> lead data in json format (Content-Type: application/json)</br>
   Example  as below</p>
  
     
            {
	"data": [
		{
			"Owner": {
				"id": "3771304000000192015"
			},
			"Last_Name": "Last_Name",
			"Email": "newcrmapi@zoho.com",
			"Description": "Design your own layouts that align your business processes precisely. Assign them to profiles appropriately.",
			"Rating": "Acquired",
			"Website": "crm.zoho.com",
			"Twitter": "Twitter",
			"Salutation": "Mr.",
			"First_Name": "First_Name",
			"Lead_Status": "Attempted to Contact",
			"Industry": "ASP",
			"Skype_ID": "Skype_ID",
			"Phone": "98883434559",
			"Street": "Street",
			"Zip_Code": "Zip_Code",
			"Email_Opt_Out": false,
			"Designation": "Designation",
			"City": "City",
			"No_of_Employees": 1791,
			"Mobile": "98883434559",
			"State": "State",
			"Lead_Source": "Advertisement",
			"Country": "Country",
			"Fax": "Fax",
			"Annual_Revenue": 136.67,
			"Secondary_Email": "newcrmapi@zoho.com"
		}
	]}
  
 <p> <b>Response:</b>success message</p>
  
  <h4 >Note:</h4> 
  <p>Sql file for database is upload please find it. Use redirect-uri as "https:zetoe.000webhostapp.com/zoho.index.html"</p>

