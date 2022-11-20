 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <jsp:useBean id="con" class="conexao_departamento.Conexao_departamento"/>  
   
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <html>  
 <head>  
 <title>Cadastrar Departamento</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="departamento.jsp">  
   
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
       Nome do Departamento
    </strong></td>   	
    </tr>  
   
   
 <%      
    try {  
   
       con.setIddepartamento(Integer.parseInt(request.getParameter("iddepartamentoField")));  
       con.setEndereco(request.getParameter("enderecoField"));  
	    con.setNomedepartamento(request.getParameter("nomedepartamentoField")); 
       con.inserirDados();  
                  
       con.setConsulta();  
       ResultSet temp = con.getResultado();  
       temp.next();  
         
       if(request.getParameter("iddepartamentoField").equals(temp.getString("iddepartamento")))  
          response.sendRedirect("http://localhost:8084/sistema_petshop/departamento.jsp?status=Registro ja existente");  
         
       do{  
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
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("iddepartamentoField")%> foi cadastrado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 