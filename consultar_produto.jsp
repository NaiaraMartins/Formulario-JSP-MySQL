<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
 <html>  
 <head>  
 <title>Consulta Produto</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setIdproduto(Integer.parseInt(request.getParameter("idprodutoField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_petshop/produto.jsp?status=Consulta efetuada com sucesso&idproduto="+ temp.getString("idproduto")+
           "&nomeproduto="+ temp.getString("nomeproduto") + "&peso="+ temp.getString("peso")+
		    "&marca="+ temp.getString("marca") + "&valorunit="+ temp.getString("valorunit")); 
		  		  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/produto.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 