    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Fornecedor</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.idfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.nomefantasiaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.siteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo site';  
         }else if (document.cadastro.representanteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo representante';
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';           
        }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJ';    
         
        }else if (document.cadastro.dt_registroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo RG';        
         
        }else if (document.cadastro.emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Email';        
         
               
         
        }else {  
            document.cadastro.action='cadastrar_fornecedor.jsp';  
            document.cadastro.submit();  
         
     
          } } else if (par == 'consultar'){  
     
         if (document.cadastro.idfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='consultar_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
        if (document.cadastro.idfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.nomefantasiaField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.siteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo site';  
         }else if (document.cadastro.representanteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo representante';
         }else if (document.cadastro.enderecoField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo endereço';           
        }else if (document.cadastro.cnpjField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CNPJ';    
         
        }else if (document.cadastro.dt_registroField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo RG';        
         
        }else if (document.cadastro.emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Email'; 
            
         }else {  
            document.cadastro.action='alterar_fornecedor.jsp';  
            document.cadastro.submit(); 
           
         }
      }
        else if (par == 'excluir'){  
     
         if (document.cadastro.idfornecedorField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='excluir_fornecedor.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_fornecedor.jsp';  
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
   String idfornecedor = request.getParameter("idfornecedor");  
   String nomefantasia = request.getParameter("nomefantasia"); 
   String site = request.getParameter("site");     
   String representante = request.getParameter("representante");  
   String endereco = request.getParameter("endereco");  
   String cnpj = request.getParameter("cnpj"); 
   String dt_registro = request.getParameter("dt_registro"); 
   String email = request.getParameter("email"); 
   
   
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="blue"><p align="left" class="style"> Cadastro Fornecedor</p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="blue"><p> <strong>ID :</strong>  
          <input name="idfornecedorField" type="text" id="idfornecedorField" size="" value="<%=(idfornecedor==null)?"":idfornecedor%>"> </p>  
            <p> <strong> Nome:</strong>  
          <input name="nomefantasiaField" type="text" id="nomefantasiaField" size="" value="<%=(nomefantasia==null)?"":nomefantasia%>">  
                    <strong>Site:</strong>       
           <input name="siteField" type="text" id="siteField" size="" value="<%=(site==null)?"":site%>"> 
                    <strong> Representante:</strong>       
           <input name="representanteField" type="text" id="representanteField" size="" value="<%=(representante==null)?"":representante%>"> 
                    <p> <strong> Endereco:</strong>       
           <input name="enderecoField" type="text" id="enderecoField" size="" value="<%=(endereco==null)?"":endereco%>">  
                     <strong> CNPJ:</strong>       
           <input name="cnpjField" type="text" id="cnpjField" size="" value="<%=(cnpj==null)?"":cnpj%>"> 
                    <strong> Data Nascimento:</strong>       
           <input name="dt_registroField" type="text" id="dt_registroField" size="" value="<%=(dt_registro==null)?"":dt_registro%>">  
                   <strong> Email:</strong>       
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