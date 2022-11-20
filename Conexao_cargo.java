    package conexao_cargo;  
      
    import java.sql.*;  
     
    public class Conexao_cargo {  
        
      public Connection con;  
      public Statement stm;  
      public ResultSet res = null; 
 
      private int idcargo = 0;  
      private String nomecargo = null;  
	  private String funcao = null;  
     
      public Conexao_cargo() {  
     
         try {  
     
            Class.forName("org.gjt.mm.mysql.Driver");  
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistema_petshop","root","vertrigo");  
            stm = con.createStatement();   
              
         } catch (Exception e) {  
            System.out.println("não foi possível conectar ao banco" + e.getMessage());  
         }  
      }  

    public void setIdcargo(int idcargo) {
        this.idcargo = idcargo;
    }

    public void setNomecargo(String nomecargo) {
        this.nomecargo = nomecargo;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public int getIdcargo() {
        return idcargo;
    }

    public String getNomecargo() {
        return nomecargo;
    }

    public String getFuncao() {
        return funcao;
    }
        
      
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into cargo(idcargo,nomecargo,funcao) "
                    + "values("+idcargo+",\" "+nomecargo+" \",\""+funcao+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update cargo set nomecargo = \""+nomecargo+"\" ,"
                    + "funcao = \""+funcao+"\" "
                    + "where idcargo ="+idcargo+" ";  
     
            int linhas = stm.executeUpdate(query);  
              
            if (linhas >0 )  
               testa = true;  
            else  
               testa = false;  
     
         }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
           
         return testa;  
      }  
        
      public boolean excluirDados(){  
        
       boolean testa = false;  
        
         try {  
            String query = "delete from cargo where idcargo="+idcargo+" ";  
            int linhas = stm.executeUpdate(query);  
              
            if (linhas > 0)  
               testa = true;  
            else  
               testa = false;  
     
        }catch (SQLException e){System.out.println("Erro na exclusão:" + e.getMessage());}  
          
        return testa;  
     }  
       
     public boolean consultarDados(){  
          
        boolean testa = false;  
             
        try {  
           String query = "select * from cargo where idcargo="+idcargo+" ";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inserção:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from cargo");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  