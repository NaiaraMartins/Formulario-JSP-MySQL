 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_produto.Conexao_produto"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Produto</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="produto.jsp">  
   
 <p><strong>Tabela Produto </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID 
    </strong></td> 
    
    <td width=200><strong>  
        Nome do Produto
     </strong></td>
     <td width=100><strong>  
       Peso
     </strong></td>    
         
	<td width=200><strong>  
       Marca
    </strong></td>
    <td width=100><strong>  
        Valor Unitario
     </strong></td> 
        	
    </tr>  
   
   
 <%      
    try {  
   
       con.setIdproduto(Integer.parseInt(request.getParameter("idprodutoField")));
       con.setNomeproduto(request.getParameter("nomeprodutoField"));   
       con.setPeso(Double.parseDouble(request.getParameter("pesoField")));  
       con.setMarca(request.getParameter("marcaField"));       
       con.setValorunit(Double.parseDouble(request.getParameter("valorunitField"))); 
    
     
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("idprodutoField").equals(temp.getString("idproduto")))  
          response.sendRedirect("http://localhost:8084/sistema_petshop/produto.jsp?status=Registro ja existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("idproduto"));%>  
          </td> 
          <td width=200>  
            <%out.print(temp.getString("nomeproduto"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("peso"));%>  
          </td>  
          <td width=200>  
            <%out.print(temp.getString("marca"));%>  
          </td> 
                   
		  <td width=50>  
                <%out.print(temp.getString("valorunit"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("idprodutoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 