<%@page import="modelo.Filme"%>
<%@page import="java.util.List"%>
<%@page import="dao.FilmeDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<!-- gambiarra pra alinhar o bot�o a esquerda-->
<%
    FilmeDAO dao = new FilmeDAO();
    List<Filme> lista = dao.listar();
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
            <h4>Serie</h4>
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
                        <th>Nome</th>
                        <th>Descri��o</th>
                        <th>Nota</th>
                        <th>Tempo</th>
                        <th>Youtube</th>
                        <th>IMDB</th>
                        
                        <th>A��es</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(Filme item:lista){                        
                    %>
                    <tr>
                        <td><%=item.getFilme()%></td>
                        <td><%=item.getNome()%></td>
                        <td><%=item.getDescricao()%></td>
                        <td><%=item.getNota()%></td>
                        <td><%=item.getTempo()%></td>
                        <td><%=item.getYoutube()%></td>
                        <td><%=item.getImdb()%></td>
                        <td>
                            <!-- 
                                Atualizar 
                            -->
                            <div id="ttupd" class="icon material-icons">
                                <i class="material-icons"><a href="upd.jsp?id=<%=item.getFilme()%>">update</a></i>
                            </div>
                            <div class="mdl-tooltip" for="ttupd">
                                Atualizar
                            </div>
                            <!-- 
                                Excluir 
                            -->
                            <div id="ttdel" class="icon material-icons">
                                <i class="material-icons"><a href="del-ok.jsp?id=<%=item.getFilme()%>">delete</a></i>
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

