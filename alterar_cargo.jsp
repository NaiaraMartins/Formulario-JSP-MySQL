 <%@ page contentType="text/html" language="java" import="java.sql.*"%>  
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
 <jsp:useBean id="con" class="conexao_cargo.Conexao_cargo"/>  
 <html>  
 <head>  
 <title>Alterar</title>  
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
 </head>  
   
 <body>  
 <form name="form1" method="post" action="cargo.jsp">  
   
 <jsp:setProperty name="con" property="idcargo" value='<%=Integer.parseInt(request.getParameter("idcargoField"))%>'/>  
 <jsp:setProperty name="con" property="nomecargo" value='<%=(request.getParameter("nomecargoField"))%>'/> 
 <jsp:setProperty name="con" property="funcao" value='<%=(request.getParameter("funcaoField"))%>'/>  
 <p><strong>Tabela Cargo </strong></p>  
 <table border=1 cellspacing=0 cellpadding=0 >  
   
    <tr>  
     <td width=50><strong>  
       ID  
    </strong></td>      
    <td width=200><strong>  
       Nome 
    </strong></td> 
	<td width=100><strong>  
       Funcao 
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
                <%out.print(temp.getString("idcargo"));%>  
             </td>  
              <td width=200>  
                <%out.print(temp.getString("nomecargo"));%>  
             </td>  
			 <td width=200>  
                <%out.print(temp.getString("funcao"));%>  
             </td>  
          </tr>  
          <%}  
       }else{  
          response.sendRedirect("http://localhost:8084/sistema_petshop/cargo.jsp?status=Registro nao encontrado");  
       }     
    }catch (Exception e) {  
       e.printStackTrace();  
    }  
      
 %>  
 </table>  
   <p>  
     <input type="submit" name="Submit" value="voltar">  
 </p>    
 <p><strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="36" value="<%=request.getParameter("nomecargoField")%> foi alterado com sucesso">  
       </strong></p>  
 </form>  
 </body>  
 </html> 