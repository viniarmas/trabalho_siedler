<%@page import="modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="dao.UsuarioDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<!-- gambiarra pra alinhar o botão a esquerda-->
<%
    UsuarioDAO dao = new UsuarioDAO();
    List<Usuario> lista = dao.listar();
%>


<style>
    .direita
            {
                text-align: right;
                padding-right: 10%;
                
            }
</style>
<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Usuario</h4>
            <!-- Colored mini FAB button -->
            <div class="direita">
                <a href="add.jsp">
                    <button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                         <i class="material-icons">add</i>
                    </button>  
                </a>
            </div>

            <table class="mdl-data-table mdl-js-data-table">
                <thead>
                    <tr>

                        <th>ID</th>
                        <th>Login</th>
                        <th>Senha</th>
                        <th>Email</th>
                        <th>Foto</th>
                        
                        <th>Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(Usuario item:lista){                        
                    %>
                    <tr>
                        <td><%=item.getUsuario()%></td>
                        <td><%=item.getLogin()%></td>
                        <td><%=item.getSenha()%></td>
                        <td><%=item.getEmail()%></td>
                        <td><%=item.getFoto()%></td>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?id=<%=item.getUsuario()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?id=<%=item.getUsuario()%>">delete</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttdel">
                                Excluir
                            </div>
                            
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>   
        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>

