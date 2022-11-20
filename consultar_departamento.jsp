<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
 <jsp:useBean id="con" class="conexao_departamento.Conexao_departamento"/>  
 <html>  
 <head>  
 <title>Consulta Departamento</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setIddepartamento(Integer.parseInt(request.getParameter("iddepartamentoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
         ResultSet temp = con.getResultado();  
         response.sendRedirect("http://localhost:8084/sistema_petshop/departamento.jsp?status=Consulta efetuada com sucesso&iddepartamento="+
       temp.getString("iddepartamento")+"&endereco="+temp.getString("endereco")+"&nomedepartamento="+temp.getString("nomedepartamento")); 
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/departamento.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 