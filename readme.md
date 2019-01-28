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
 
<p>Then click "Getcode" Button.  You will be redirected zoho confirmation page. Click "Accept" button and click "Get Token From Zoho" button.
You will get alert "You are successfully registered". Now you can use the api-end points to access zoho leads</p>

<h4>Login :</h4>
  <p><b>Route:</b> localhost/api/login</br>
    <b>Method:</b>Post</br>
    <b>form-data:</b> 
    email : {{registered email}}</br>
    password: {{your password}}</br>
  <b>Response:</b> access-token is received, Token type: Bearer
</p>

<h4>Get All leads :</h4>
  <p><b>Route:</b> localhost/api/leads
  <b>Method:</b >Get </br>
  <b>Header:</b>Authorization : Bearer {{acess-token}}
  <b>Response:</b> All leads as json data
  </p>
  
  <h4>Get lead by Id :</h4>
  <p><b>Route:</b> localhost/api/leads/{id}
  <b>Method:</b >Post </br>
  <b>Header:</b>Authorization : Bearer {{acess-token}}
  <b>Response:</b>Lead of the provided 'Id' as json data
  </p>
  
  


