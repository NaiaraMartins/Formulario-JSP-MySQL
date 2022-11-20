<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
 <jsp:useBean id="con" class="conexao_loja.Conexao_loja"/>  
 <html>  
 <head>  
 <title>Consulta Loja</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setIdloja(Integer.parseInt(request.getParameter("idlojaField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_petshop/loja.jsp?status=Consulta efetuada com sucesso&idloja="+ 
          temp.getString("idloja")+ "&endereco="+ temp.getString("endereco") + "&nome="+ temp.getString("nome") +
		  "&site="+ temp.getString("site")+ "&cnpj="+ temp.getString("cnpj") + "&email="+ temp.getString("email")); 
		  		  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/loja.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 