 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_cargo.Conexao_cargo"/>  
 <html>  
 <head>  
 <title>Consulta</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setIdcargo(Integer.parseInt(request.getParameter("idcargoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_petshop/cargo.jsp?status=Consulta efetuada com sucesso&idcargo="+
		  temp.getString("idcargo")+"&nomecargo="+temp.getString("nomecargo")+"&funcao="+temp.getString("funcao"));  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/cargo.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 