 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_cliente.Conexao_cliente"/>  
 <html>  
 <head>  
 <title>Consulta</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setIdcliente(Integer.parseInt(request.getParameter("idclienteField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_petshop/cliente.jsp?status=Consulta efetuada com sucesso&idcliente="+
		  temp.getString("idcliente")+"&nome="+temp.getString("nome")+"&cpf="+temp.getString("cpf")+
          "&dtnasc="+temp.getString("dtnasc")+"&naturalidade="+temp.getString("naturalidade")+"&nomepai="+temp.getString("nomepai")+
          "&rg="+temp.getString("rg")+"&email="+temp.getString("email")+"&nomemae="+temp.getString("nomemae")        
          );  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/cliente.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 