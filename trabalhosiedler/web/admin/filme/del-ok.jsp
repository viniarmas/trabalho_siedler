<%@page import="modelo.Filme"%>
<%@page import="dao.FilmeDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<%
    String filme = request.getParameter("filme");
    FilmeDAO dao = new FilmeDAO();
    Filme obj = dao.buscarPorChavePrimaria(Long.parseLong(filme));
    dao.excluir(obj);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Filme - Excluir</h4>
            O Registro <%=filme%> foi excluído com sucesso.<br />
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>