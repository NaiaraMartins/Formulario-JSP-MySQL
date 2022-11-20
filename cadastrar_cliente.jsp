 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_cliente.Conexao_cliente"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Cliente</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="cliente.jsp">  
   
 <p><strong>Tabela Cliente </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID 
    </strong></td> 
    <td width=200><strong>  
        Nome
     </strong></td>
     <td width=50><strong>  
        CPF 
     </strong></td>
     <td width=50><strong>  
        Data de Nascimento 
     </strong></td>     
    <td width=200><strong>  
       Naturalidade
    </strong></td>     
	<td width=200><strong>  
       Nome do Pai
    </strong></td>
    <td width=50><strong>  
        RG
     </strong></td> 
     <td width=100><strong>  
        Email
     </strong></td> 
     <td width=200><strong>  
        Nome da Mae
     </strong></td>    	
    </tr>  
   
   
 <%      
    try {  
   
       con.setIdcliente(Integer.parseInt(request.getParameter("idclienteField")));  
       con.setNome(request.getParameter("nomeField"));  
	    con.setCpf(request.getParameter("cpfField")); 
       con.setDtnasc(request.getParameter("dtnascField")); 
       con.setNaturalidade(request.getParameter("naturalidadeField")); 
       con.setNomepai(request.getParameter("nomepaiField")); 
       con.setRg(request.getParameter("rgField")); 
       con.setEmail(request.getParameter("emailField")); 
       con.setNomemae(request.getParameter("nomemaeField")); 
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("idclienteField").equals(temp.getString("idcliente")))  
          response.sendRedirect("http://localhost:8084/sistema_petshop/cliente.jsp?status=Registro ja existente");  
         
       do{  
       %>  
       <tr>  
           <td width=50>  
                <%out.print(temp.getString("idcliente"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("nome"));%>  
          </td>  
          <td width=50>  
            <%out.print(temp.getString("cpf"));%>  
          </td> 
          <td width=50>  
            <%out.print(temp.getString("dtnasc"));%>  
          </td> 
          <td width=50>  
            <%out.print(temp.getString("naturalidade"));%>  
          </td> 
		  <td width=200>  
                <%out.print(temp.getString("nomepai"));%>  
          </td>  
          <td width=50>  
            <%out.print(temp.getString("rg"));%>  
          </td> 
          <td width=100>  
            <%out.print(temp.getString("email"));%>  
          </td> 
          <td width=200>  
            <%out.print(temp.getString("nomemae"));%>  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("idclienteField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 