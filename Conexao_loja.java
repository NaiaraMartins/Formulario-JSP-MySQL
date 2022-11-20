package conexao_loja;  
      
    import java.sql.*;  
     
    public class Conexao_loja {  
        
      public Connection con;  
      public Statement stm;  
      public ResultSet res = null; 
 
      private int idloja = 0;  
      private String endereco = null;  
      private String nome = null;  
      private String site = null; 
      private String cnpj = null; 
      private String email = null; 
     
      public Conexao_loja() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_petshop","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("n o foi poss vel conectar ao banco" + e.getMessage());  
         }  
      } 
      
       public void setRes(ResultSet res) {
        this.res = res;
    }
     public void setIdloja(int idloja) {
        this.idloja = idloja;
    }
     
    public void setNome(String nome) {
        this.nome = nome;
    }

   

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdloja() {
        return idloja;
    }

    public String getEndereco() {
        return endereco;
    }

    public String getNome() {
        return nome;
    }

    public String getSite() {
        return site;
    }

    public String getCnpj() {
        return cnpj;
    }

    public String getEmail() {
        return email;
    }

               
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into loja (idloja,endereco,nome, site, cnpj,email)"
                    
                              +"values("+idloja+",\" "+endereco+" \",\""+nome+"\","
                    + "\""+site+"\",\""+cnpj+"\",\""+email+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update loja set endereco = \""+endereco+"\" ,"
                    + "nome = \""+nome+"\" ,"
                    + "site = \""+site+"\", "
                    + "cnpj = \""+cnpj+"\" ,"
                    + "email = \""+email+"\" "
                    + "where idloja ="+idloja+" ";  
     
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
            String query = "delete from loja where idloja="+idloja+" ";  
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
           String query = "select * from loja where idloja="+idloja+" ";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from loja");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
