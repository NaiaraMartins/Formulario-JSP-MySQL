    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Produto</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.idprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.nomeprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome do produto';  
         }else if (document.cadastro.pesoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo peso';  
         }else if (document.cadastro.marcaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo marca';
         }else if (document.cadastro.valorunitField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Valor Unitário';        
         
        }else {  
            document.cadastro.action='cadastrar_produto.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'consultar'){  
     
         if (document.cadastro.idprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='consultar_produto.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
        if (document.cadastro.idprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.nomeprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome do produto';  
         }else if (document.cadastro.pesoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo peso';  
         }else if (document.cadastro.marcaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo marca';
         }else if (document.cadastro.valorunitField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Valor Unitário';        
         
        }else {  
            document.cadastro.action='alterar_produto.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.idprodutoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='excluir_produto.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_produto.jsp';  
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
   String idproduto = request.getParameter("idproduto");  
   String nomeproduto = request.getParameter("nomeproduto");  
   String peso = request.getParameter("peso");  
   String marca = request.getParameter("marca");  
   String valorunit = request.getParameter("valorunit");  
   
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="blue"><p align="left" class="style"> Cadastro Produto </p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="blue"><p> <strong>ID :</strong>  
          <input name="idprodutoField" type="text" id="idprodutoField" size="" value="<%=(idproduto==null)?"":idproduto%>"> </p>  
            <p> <strong>Nome :</strong>  
          <input name="nomeprodutoField" type="text" id="nomeprodutoField" size="" value="<%=(nomeproduto==null)?"":nomeproduto%>">  
                    <strong>Peso:</strong>       
           <input name="pesoField" type="text" id="pesoField" size="" value="<%=(peso==null)?"":peso%>"> 
                  <p>  <strong>Marca:</strong>       
           <input name="marcaField" type="text" id="marcaField" size="" value="<%=(marca==null)?"":marca%>"> 
                     <strong>Valor Unitario:</strong>       
           <input name="valorunitField" type="text" id="valorunitField" size="" value="<%=(valorunit==null)?"":valorunit%>">  
             
     
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