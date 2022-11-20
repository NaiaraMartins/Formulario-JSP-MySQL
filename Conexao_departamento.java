package conexao_departamento;  
      
    import java.sql.*;  
     
    public class Conexao_departamento {  
        
      public Connection con;  
      public Statement stm;  
      public ResultSet res = null; 
 
      private int iddepartamento = 0;  
      private String endereco = null;  
	  private String nomedepartamento = null;  
     
      public Conexao_departamento() {  
     
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

    public int getIddepartamento() {
        return iddepartamento;
    }

    public void setIddepartamento(int iddepartamento) {
        this.iddepartamento = iddepartamento;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getNomedepartamento() {
        return nomedepartamento;
    }

    public void setNomedepartamento(String nomedepartamento) {
        this.nomedepartamento = nomedepartamento;
    }

  
    
        
      
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into departamento(iddepartamento,endereco,nomedepartamento) "
                    + "values("+iddepartamento+",\" "+endereco+" \",\""+nomedepartamento+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update departamento set endereco = \""+endereco+"\" ,"
                    + "nomedepartamento = \""+nomedepartamento+"\" "
                    + "where iddepartamento ="+iddepartamento+" ";  
     
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
            String query = "delete from departamento where iddepartamento="+iddepartamento+" ";  
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
           String query = "select * from departamento where iddepartamento="+iddepartamento+" ";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from departamento");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
