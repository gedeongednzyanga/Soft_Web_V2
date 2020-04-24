<%-- 
    Document   : list
    Created on : 16 avr. 2020, 12:24:24
    Author     : GEDEON
--%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Database"%>
<%
    Database db = new Database();
    Connection conn;
    Statement st;
    ResultSet rs;
    try{
        conn = db.dbConnect();
        st = conn.createStatement();
        rs = st.executeQuery("SELECT * FROM tbl_article");
        List li = new ArrayList();
        while(rs.next()){
            li.add(rs.getString(1));
        }
        String [] str = new String[li.size()];
        Iterator it = li.iterator();
        int i =0 ;
        while(it.hasNext()){
            String p = (String)it.next();
            str[i]=p;
            i++;
            
            String query = (String)request.getParameter("q");
            int cnt = 1;
            for(int j =0; j<str.length; j++){
                if(str[j].toUpperCase().startsWith(query.toUpperCase())){
                    out.print(str[j]+"\n");
                    if(cnt>=5)
                        break;
                    cnt++;
                }
            }
            rs.close();
            st.close();
            conn.close();
        }
    }catch(Exception e){
        e.printStackTrace();
    }
%>