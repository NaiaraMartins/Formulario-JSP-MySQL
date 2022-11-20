package conexao_fornecedor;  
      
    import java.sql.*;  
     
    public class Conexao_fornecedor {  
        
      public Connection con;  
      public Statement stm;  
      public ResultSet res = null; 
 
      private int idfornecedor = 0;  
      private String nomefantasia = null;  
      private String site = null;  
      private String representante = null;
      private String endereco = null;
      private String cnpj = null;
      private String dt_registro = null;
      private String email = null;
        
     
      public Conexao_fornecedor() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_petshop","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("n o foi poss vel conectar ao banco" + e.getMessage());  
         }  
      }  

    public void setIdfornecedor(int idfornecedor) {
        this.idfornecedor = idfornecedor;
    }

    public void setNomefantasia(String nomefantasia) {
        this.nomefantasia = nomefantasia;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public void setRepresentante(String representante) {
        this.representante = representante;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public void setDt_registro(String dt_registro) {
        this.dt_registro = dt_registro;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdfornecedor() {
        return idfornecedor;
    }

    public String getNomefantasia() {
        return nomefantasia;
    }

    public String getSite() {
        return site;
    }

    public String getRepresentante() {
        return representante;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getCnpj() {
        return cnpj;
    }

    public String getDt_registro() {
        return dt_registro;
    }

    public String getEmail() {
        return email;
    }


      
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into fornecedor(idfornecedor,nomefantasia,"
                    + "site,representante,endereco,cnpj,dt_registro,email) "
                    + "values("+idfornecedor+",\" "+nomefantasia+" \","
                    + "\""+site+"\","
                    + "\" "+representante+" \",\" "+endereco+" \","
                    + "\" "+cnpj+" \",\" "+dt_registro+" \","
                    + "\" "+email+" \")";   
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update fornecedor set nomefantasia = \""+nomefantasia+"\" ,"
                    + "site = \""+site+"\", "
                    + "representante = \""+representante+"\", "
                    + "endereco = \""+endereco+"\", "
                    + "cnpj = \""+cnpj+"\", "
                    + "dt_registro = \""+dt_registro+"\", "
                    + "email = \""+email+"\" "
                    + "where idfornecedor ="+idfornecedor+" ";  
     
            int linhas = stm.executeUpdate(query);  
              
            if (linhas >0 )  
               testa = true;  
            else  
               testa = false;  
     
         }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
           
         return testa;  
      }  
        
      public boolean excluirDados(){  
        
       boolean testa = false;  
        
         try {  
            String query = "delete from fornecedor where idfornecedor="+idfornecedor+" ";  
            int linhas = stm.executeUpdate(query);  
              
            if (linhas > 0)  
               testa = true;  
            else  
               testa = false;  
     
        }catch (SQLException e){System.out.println("Erro na exclus o:" + e.getMessage());}  
          
        return testa;  
     }  
       
     public boolean consultarDados(){  
          
        boolean testa = false;  
             
        try {  
           String query = "select * from fornecedor where idfornecedor="+idfornecedor+" ";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from fornecedor");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
