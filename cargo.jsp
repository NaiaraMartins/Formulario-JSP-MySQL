    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Cargo</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.idcargoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }
         else if (document.cadastro.nomecargoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }
         else if (document.cadastro.funcaoField.value == ''){  
            document.cadastro.statusField.value = 'Escolha a função';  
         }
         else {  
            document.cadastro.action='cadastrar_cargo.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.idcargoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='consultar_cargo.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
         if (document.cadastro.idcargoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.nomecargoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.funcaoField.value == ''){  
            document.cadastro.statusField.value = 'Escolha a função';  
         }else {  
            document.cadastro.action='alterar_cargo.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.idcargoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='excluir_cargo.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_cargo.jsp';  
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
   String idcargo = request.getParameter("idcargo");  
   String nomecargo = request.getParameter("nomecargo");  
   String funcao = request.getParameter("funcao");  
   
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="blue"><p align="left" class="style"> Cadastro Cargo </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="blue"><p> <strong>ID :</strong>  
          <input name="idcargoField" type="text" id="idcargoField" size="" value="<%=(idcargo==null)?"":idcargo%>"> </p>  
            <p> <strong>Nome :</strong>  
          <input name="nomecargoField" type="text" id="nomecargoField" size="" value="<%=(nomecargo==null)?"":nomecargo%>">  
                  <strong>Funcao:</strong>   
     
           <input name="funcaoField" type="text" id="funcaoField" size="" value="<%=(funcao==null)?"":funcao%>">  
             
     
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