/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jogoquiz;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Logger;
import java.util.logging.Level;

/**
 *
 * @author internet
 */
public class   conexao {
    public static Connection con = null;
    
    public static String status;
    
    
    
    public static java.sql.Connection conectar(){
    
    con = null;
        
    String driver = "com.mysql.jdbc.Driver";
    
    try {
        Class.forName(driver);
    }catch(ClassNotFoundException erro){
        Logger.getLogger(conexao.class.getName()).log(Level.SEVERE,null,erro);
    }
    
    
    String nomeServidor="localhost:3306";
    
    String bancoDados="quiz";
    
    
    String url = "jdbc:mysql://" + nomeServidor + "/" + bancoDados;
    
    String username = "root";
    
    String senha="";
    
    try {
        con = DriverManager.getConnection(url,username,senha);
        status = "Conectao com sucesso";
        return con;
    }catch(SQLException erro){
        Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, erro);
            status = ("STATUS:" + erro.getMessage());
            return con;
    }
    }
    
     public static boolean fecharConexao(){
        
         try {
            //fecha a conexao
            conexao.conectar().close();
            return true;
        } catch (SQLException erro) {
            Logger.getLogger(conexao.class.getName()).log(Level.SEVERE, null, erro);
            return false;
        }
    
    }
    
    
    
}

