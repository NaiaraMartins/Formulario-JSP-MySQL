    <%@ page contentType="text/html"%>  
    <!DOCTYPE HTML PUBLIC "-//WC//DTD HTML . Transitional//EN" "http://www.w.org/TR/html/loose.dtd">  
      
    <html>  
    <head>  
    <title>Tabela Cliente</title>  
      
      
    <script>  
     
   function enviar(par){  
        
      if (par == 'cadastrar'){  
        
         if (document.cadastro.idclienteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.cpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CPF';  
         }else if (document.cadastro.dtnascField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de nascimento';
         }else if (document.cadastro.naturalidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo naturalidade';           
        }else if (document.cadastro.nomepaiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Nome do Pai';    
         
        }else if (document.cadastro.rgField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo RG';        
         
        }else if (document.cadastro.emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Email';        
         
        }else if (document.cadastro.nomemaeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Nome da Mãe';        
         
        }else {  
            document.cadastro.action='cadastrar_cliente.jsp';  
            document.cadastro.submit();  
         
        }    
           } else if (par == 'consultar'){  
     
         if (document.cadastro.idclienteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='consultar_cliente.jsp';  
            document.cadastro.submit();  
         }  
     
      } else if (par == 'alterar'){  
     
        if (document.cadastro.idclienteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else if (document.cadastro.nomeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo nome';  
         }else if (document.cadastro.cpfField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo CPF';  
         }else if (document.cadastro.dtnascField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo data de nascimento';
         }else if (document.cadastro.naturalidadeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo naturalidade';           
        }else if (document.cadastro.nomepaiField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Nome do Pai';    
         
        }else if (document.cadastro.rgField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo RG';        
         
        }else if (document.cadastro.emailField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Email';        
         
        }else if (document.cadastro.nomemaeField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo Nome da Mãe'; 
        }else {  
            document.cadastro.action='alterar_cliente.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'excluir'){  
     
         if (document.cadastro.idclienteField.value == ''){  
            document.cadastro.statusField.value = 'Preencha o campo id';  
         }else {  
            document.cadastro.action='excluir_cliente.jsp';  
            document.cadastro.submit();  
         }  
      } else if (par == 'listar'){  
         document.cadastro.action='listar_cliente.jsp';  
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
   String idcliente = request.getParameter("idcliente");  
   String nome = request.getParameter("nome"); 
   String cpf = request.getParameter("cpf");     
   String dtnasc = request.getParameter("dtnasc");  
   String naturalidade = request.getParameter("naturalidade");  
   String nomepai = request.getParameter("nomepai"); 
   String rg = request.getParameter("rg"); 
   String email = request.getParameter("email"); 
   String nomemae = request.getParameter("nomemae"); 

   
   String status = request.getParameter("status");  
   %>  
   <center>  
   <body>  
   <form name="cadastro" method="get">  
     
   <table width="" border="">  
     <tr>  
       <td width="" height="" bgcolor="blue"><p align="left" class="style"> Cadastro Cliente</p>  
       </td>  
     </tr>  
     <tr>  
       <td height="" bgcolor="blue"><p> <strong>ID :</strong>  
          <input name="idclienteField" type="text" id="idclienteField" size="" value="<%=(idcliente==null)?"":idcliente%>"> </p>  
             <strong> Nome:</strong>  
          <input name="nomeField" type="text" id="nomeField" size="" value="<%=(nome==null)?"":nome%>">   
                    <strong>CPF:</strong>       
           <input name="cpfField" type="text" id="cpfField" size="" value="<%=(cpf==null)?"":cpf%>"> 
                    <strong> Data de Nascimento:</strong>       
           <input name="dtnascField" type="text" id="dtnascField" size="" value="<%=(dtnasc==null)?"":dtnasc%>"> 
               <p><strong> Naturalidade:</strong>       
           <input name="naturalidadeField" type="text" id="naturalidadeField" size="" value="<%=(naturalidade==null)?"":naturalidade%>">   
                     <strong> Nome do Pai:</strong>       
           <input name="nomepaiField" type="text" id="nomepaiField" size="" value="<%=(nomepai==null)?"":nomepai%>"> 
                 <p>  <strong> RG:</strong>       
           <input name="rgField" type="text" id="rgField" size="" value="<%=(rg==null)?"":rg%>">  
                   <strong> Email:</strong>       
           <input name="emailField" type="text" id="emailField" size="" value="<%=(email==null)?"":email%>">  
                   <strong> Nome da Mae:</strong>       
           <input name="nomemaeField" type="text" id="nomemaeField" size="" value="<%=(nomemae==null)?"":nomemae%>">   
             
     
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