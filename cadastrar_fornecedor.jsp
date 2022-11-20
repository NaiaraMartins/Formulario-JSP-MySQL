 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_fornecedor.Conexao_fornecedor"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Fornecedor</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="fornecedor.jsp">  
   
 <p><strong>Tabela Fornecedor </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID 
    </strong></td> 
    <td width=200><strong>  
        Nome Fantasia
     </strong></td>
     <td width=100><strong>  
        Site
     </strong></td>
     <td width=50><strong>  
        Representante 
     </strong></td>     
    <td width=200><strong>  
       Endereco
    </strong></td>     
	<td width=200><strong>  
       CNPJ
    </strong></td>
    <td width=50><strong>  
        Data de Registro
     </strong></td> 
     <td width=100><strong>  
        Email
     </strong></td> 
        	
    </tr>  
   
   
 <%      
    try {  
   
       con.setIdfornecedor(Integer.parseInt(request.getParameter("idfornecedorField")));  
       con.setNomefantasia(request.getParameter("nomefantasiaField"));  
	    con.setSite(request.getParameter("siteField")); 
       con.setRepresentante(request.getParameter("representanteField")); 
       con.setEndereco(request.getParameter("enderecoField")); 
       con.setCnpj(request.getParameter("cnpjField")); 
       con.setDt_registro(request.getParameter("dt_registroField")); 
       con.setEmail(request.getParameter("emailField")); 
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("idfornecedorField").equals(temp.getString("idfornecedor")))  
          response.sendRedirect("http://localhost:8084/sistema_petshop/fornecedor.jsp?status=Registro ja existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("idfornecedor"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("nomefantasia"));%>  
          </td>  
          <td width=200>  
            <%out.print(temp.getString("site"));%>  
          </td> 
          <td width=200>  
            <%out.print(temp.getString("representante"));%>  
          </td> 
          <td width=200>  
            <%out.print(temp.getString("endereco"));%>  
          </td> 
		  <td width=50>  
                <%out.print(temp.getString("cnpj"));%>  
          </td>  
          <td width=50>  
            <%out.print(temp.getString("dt_registro"));%>  
          </td> 
          <td width=100>  
            <%out.print(temp.getString("email"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("idfornecedorField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 