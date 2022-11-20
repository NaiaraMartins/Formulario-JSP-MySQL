<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
 <jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
 <html>  
 <head>  
 <title>Consulta Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form method="get">  
 <%  
       con.setIdfornecedor(Integer.parseInt(request.getParameter("idfornecedorField")));  
       boolean testa = con.consultarDados();  
                  
       if (testa)  
       {           
          ResultSet temp = con.getResultado();  
          response.sendRedirect("http://localhost:8084/sistema_petshop/fornecedor.jsp?status=Consulta efetuada com sucesso&idfornecedor="
          + temp.getString("idfornecedor")+"&nomefantasia="+ temp.getString("nomefantasia")+"&site="+ temp.getString("site")+
          "&representante="+ temp.getString("representante")+"&endereco="+ temp.getString("endereco")+ "&cnpj="+ temp.getString("cnpj")+
          "&dt_registro="+ temp.getString("dt_registro")+"&email="+ temp.getString("email"));
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/fornecedor.jsp?status=Registro nao encontrado");  
       }  
            
               
 %>  
 </form>  
 </body>  
 </html> 