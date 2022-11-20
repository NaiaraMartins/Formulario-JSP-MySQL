<%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_departamento.Conexao_departamento"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 <html>  
 <head>  
 <title>Alterar Departamento</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="departamento.jsp">  
   
 <jsp:setProperty name="con" property="iddepartamento" value='<%=Integer.parseInt(request.getParameter("iddepartamentoField"))%>'/>  
 <jsp:setProperty name="con" property="endereco" value='<%=(request.getParameter("enderecoField"))%>'/>
 <jsp:setProperty name="con" property="nomedepartamento" value='<%=(request.getParameter("nomedepartamentoField"))%>'/>   
 
 <p><strong>Tabela Departamento </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID 
    </strong></td> 
	<td width=200><strong>  
       Endereco
    </strong></td> 
	<td width=200><strong>  
       Nome Departamento
    </strong></td>     
	</tr>  
	
	<%      
     
  try {  
   
       boolean testa = con.alterarDados();  
                  
       if (con.alterarDados())  
       {           
          con.setConsulta();  
          ResultSet temp = con.getResultado();  
         
          while (temp.next()){  
          %> 
		  
	<tr>  
           <td width=50>  
                <%out.print(temp.getString("iddepartamento"));%>  
          </td>  
           <td width=200>  
                <%out.print(temp.getString("endereco"));%>  
          </td>  
		  <td width=200>  
                <%out.print(temp.getString("nomedepartamento"));%>  
          </td> 
			    		  
       </tr>  
	   
       <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/departamento.jsp?status=Registro nao encontrado");  
       }     
	   
	         
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("iddepartamentoField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 	  