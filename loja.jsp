    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Loja</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.idlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';  
         }else if (document.cadastro.nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.siteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo site';
         }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJ';           
        }else if (document.cadastro.emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo email';        
         
        } 
         else {  
            document.cadastro.action='cadastrar_loja.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.idlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='consultar_loja.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
       
        if (document.cadastro.idlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';  
         }else if (document.cadastro.nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.siteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo site';
         }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJ';           
        }else if (document.cadastro.emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo email';        
         
         
        }else {  
            document.cadastro.action='alterar_loja.jsp';  
            document.cadastro.submit();  
           
      }} else if (par == 'excluir'){  
     
         if (document.cadastro.idlojaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='excluir_loja.jsp';  
            document.cadastro.submit();  
          
      } }else if (par == 'listar'){  
         document.cadastro.action='listar_loja.jsp';  
         document.cadastro.submit();  
      }  
     
   }
   </script>  
     
   <meta http-equiv="Content-Type" content="text/html; charset=iso--">  
   <style type="text/css">  
   <!--  
   .style {&nbsp; &nbsp;font-size: px;  
   &nbsp; &nbsp;font-weight: bold;  
   }  
   -->  
   </style>  
   </head>  
     
   <%  
   String idloja = request.getParameter("idloja");  
   String endereco = request.getParameter("endereco");  
   String nome = request.getParameter("nome");  
   String site = request.getParameter("site");  
   String cnpj = request.getParameter("cnpj");  
   String email = request.getParameter("email"); 
   
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="blue"><p align="left" class="style"> Cadastro Loja</p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="blue"><p> <strong>ID :</strong>  
          <input name="idlojaField" type="text" id="idlojaField" size="" value="<%=(idloja==null)?"":idloja%>"> </p>  
            <p> <strong>Endereco :</strong>  
          <input name="enderecoField" type="text" id="enderecoField" size="" value="<%=(endereco==null)?"":endereco%>">  
                    <strong>Nome:</strong>       
           <input name="nomeField" type="text" id="nomeField" size="" value="<%=(nome==null)?"":nome%>"> 
                  <p>  <strong> Site:</strong>       
           <input name="siteField" type="text" id="siteField" size="" value="<%=(site==null)?"":site%>"> 
                     <strong>CNPJ:</strong>       
           <input name="cnpjField" type="text" id="cnpjField" size="" value="<%=(cnpj==null)?"":cnpj%>">  
                     <strong>Email:</strong>       
           <input name="emailField" type="text" id="emailField" size="" value="<%=(email==null)?"":email%>">  
             
     
            </p>      
      </td>  
    </tr>  
    <tr>  
      <td height="" bgcolor="blue"><p>   
          <input type="button" onClick="enviar('cadastrar')" name="bt" value="cadastrar">  
          <input type="button" onClick="enviar('consultar')" name="bt" value="consultar">  
          <input type="button" onClick="enviar('alterar')" name="bt" value="alterar">  
          <input type="button" onClick="enviar('excluir')" name="bt" value="excluir">  
          <input type="button" onClick="enviar('listar')" name="bt" value="listar">  
        </p>  
        <p> <strong>Status:  
     <input name="statusField" disabled type="text" id="statusField" size="" value="<%=(status==null)?"":status%>">  
        </strong></p>  
     </td>  
    </tr>  
  </table>  
  </form>  
  </body>  
  </html>  