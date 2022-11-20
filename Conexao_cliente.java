package conexao_cliente;  
      
    import java.sql.*;  
     
    public class Conexao_cliente {  
        
      public Connection con;  
      public Statement stm;  
      public ResultSet res = null; 
 
      private int idcliente = 0;  
      private String nome = null;  
      private String cpf = null;  
      private String dtnasc = null;
      private String naturalidade = null;
      private String nomepai = null;
      private String rg = null;
      private String email = null;
      private String nomemae = null;
     
      public Conexao_cliente() {  
     
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

    public void setIdcliente(int idcliente) {
        this.idcliente = idcliente;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setDtnasc(String dtnasc) {
        this.dtnasc = dtnasc;
    }

    public void setNaturalidade(String naturalidade) {
        this.naturalidade = naturalidade;
    }

    public void setNomepai(String nomepai) {
        this.nomepai = nomepai;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNomemae(String nomemae) {
        this.nomemae = nomemae;
    }

    public int getIdcliente() {
        return idcliente;
    }

    public String getNome() {
        return nome;
    }

    public String getCpf() {
        return cpf;
    }

    public String getDtnasc() {
        return dtnasc;
    }

    public String getNaturalidade() {
        return naturalidade;
    }

    public String getNomepai() {
        return nomepai;
    }

    public String getRg() {
        return rg;
    }

    public String getNomemae() {
        return nomemae;
    }

   
        
      
     
      public void inserirDados(){  
        
         try {  
            String query = "insert into cliente (idcliente,nome,cpf,dtnasc, "
                    + "naturalidade, nomepai, rg, email, nomemae) "
                    + "values("+idcliente+",\" "+nome+" \",\""+cpf+"\","
                    + "\" "+dtnasc+" \",\" "+naturalidade+" \","
                    + "\" "+nomepai+" \",\" "+rg+" \","
                    + "\" "+email+" \",\" "+nomemae+" \")";  
            stm.executeUpdate(query);  
     
         }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
           
      }  
     
      public boolean alterarDados(){  
           
         boolean testa = false;  
        
         try {  
            String query = "update cliente set nome = \""+nome+"\" ,"
                    + "cpf = \""+cpf+"\" ,"
                    + "dtnasc = \""+dtnasc+"\" ,"
                    + "naturalidade = \""+naturalidade+"\", "
                    + "nomepai = \""+nomepai+"\" ,"
                    + "rg = \""+rg+"\" ,"
                    + "email = \""+email+"\" ,"
                    + "nomemae = \""+nomemae+"\""
                    + "where idcliente ="+idcliente+" ";  
     
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
            String query = "delete from cliente where idcliente="+idcliente+" ";  
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
           String query = "select * from cliente where idcliente="+idcliente+" ";  
           res = stm.executeQuery(query);  
             
           if (res.next()){testa = true;}  
           else{testa = false;}  
             
        }catch (SQLException e){System.out.println("Erro na inser  o:" + e.getMessage());}  
          
        return testa;  
     }     
    
     public void setConsulta() {  
          
        try {  
           res = stm.executeQuery("select * from cliente");  
        }   
        catch (SQLException e){  
           e.printStackTrace();  
        }  
    
     }  
    
     public ResultSet getResultado() {  
        return res;  
    }  
  }  
