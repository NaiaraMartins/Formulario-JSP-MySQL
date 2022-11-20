package conexao_produto;  
      
    import java.sql.*;  
     
    public class Conexao_produto {  
        
      public Connection con;  
      public Statement stm;  
      public ResultSet res = null; 
 
      private int idproduto = 0;  
      private String nomeproduto = null;  
      private Double peso= null; 
      private String marca = null;
      private Double valorunit= null; 
      
     
      public Conexao_produto() {  
     
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

    public void setIdproduto(int idproduto) {
        this.idproduto = idproduto;
    }

    public void setNomeproduto(String nomeproduto) {
        this.nomeproduto = nomeproduto;
    }

    public void setPeso(Double peso) {
        this.peso = peso;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public void setValorunit(Double valorunit) {
        this.valorunit = valorunit;
    }

    public int getIdproduto() {
        return idproduto;
    }

    public String getNomeproduto() {
        return nomeproduto;
    }

    public Double getPeso() {
        return peso;
    }

    public String getMarca() {
        return marca;
    }

    public Double getValorunit() {
        return valorunit;
    }

   
   
        
      
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into produto (idproduto,nomeproduto,peso,"
                    + "marca,valorunit) "
                    + "values("+idproduto+",\" "+nomeproduto+" \",\""+peso+"\","
                    + "\""+marca+"\",\""+valorunit+"\")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update produto set nomeproduto = \""+nomeproduto+"\" ,"
                    + "peso = "+peso+" ,"
                    + "marca = \""+marca+"\" ,"
                    + "valorunit = "+valorunit+" "     
                    + "where idproduto ="+idproduto+" ";  
     
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
            String query = "delete from produto where idproduto="+idproduto+" ";  
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
           String query = "select * from produto where idproduto="+idproduto+" ";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from produto");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
         }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
