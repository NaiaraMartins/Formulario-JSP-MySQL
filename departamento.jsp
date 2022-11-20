    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Departamento</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.iddepartamentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';  
         }else if (document.cadastro.nomedepartamentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome departamento';  
         }else {  
            document.cadastro.action='cadastrar_departamento.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.iddepartamentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='consultar_departamento.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.iddepartamentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';  
         }else if (document.cadastro.nomedepartamentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome departamento';  
         }else {  
            document.cadastro.action='alterar_departamento.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.iddepartamentoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='excluir_departamento.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_departamento.jsp';  
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
   String iddepartamento = request.getParameter("iddepartamento");  
   String endereco = request.getParameter("endereco");  
   String nomedepartamento = request.getParameter("nomedepartamento");  
   
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="blue"><p align="left" class="style"> Cadastro Departamento </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="blue"><p> <strong>ID :</strong>  
          <input name="iddepartamentoField" type="text" id="iddepartamentoField" size="" value="<%=(iddepartamento==null)?"":iddepartamento%>"> </p>  
            <p> <strong>Endereco :</strong>  
          <input name="enderecoField" type="text" id="enderecoField" size="" value="<%=(endereco==null)?"":endereco%>">  
                  <strong>Nome Departamento:</strong>   
     
           <input name="nomedepartamentoField" type="text" id="nomedepartamentoField" size="" value="<%=(nomedepartamento==null)?"":nomedepartamento%>">  
             
     
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