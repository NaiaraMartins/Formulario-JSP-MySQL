 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_cargo.Conexao_cargo"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Cargo</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="cargo.jsp">  
   
 <p><strong>Tabela Cargo </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID 
    </strong></td>      
    <td width=200><strong>  
       Nome  
    </strong></td>     
	<td width=200><strong>  
       Funcao  
    </strong></td>   	
    </tr>  
   
   
 <%      
    try {  
   
       con.setIdcargo(Integer.parseInt(request.getParameter("idcargoField")));  
       con.setNomecargo(request.getParameter("nomecargoField"));  
	    con.setFuncao(request.getParameter("funcaoField")); 
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("idcargoField").equals(temp.getString("idcargo")))  
          response.sendRedirect("http://localhost:8084/sistema_petshop/cargo.jsp?status=Registro ja existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("idcargo"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("nomecargo"));%>  
          </td>  
		  <td width=200>  
                <%out.print(temp.getString("funcao"));%>  
          </td>  
       </tr>  
       <%}while (temp.next());  
      
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
      
 %>  
 </table>  
   <p> </p>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
 </p>    
 <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("idcargoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 