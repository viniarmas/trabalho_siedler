<%@page import="modelo.Serie"%>
<%@page import="dao.SerieDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<%
    String serie = request.getParameter("serie");
    SerieDAO dao = new SerieDAO();
    Serie obj = dao.buscarPorChavePrimaria(Long.parseLong(serie));
    dao.excluir(obj);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Serie - Excluir</h4>
            O Registro <%=serie%> foi excluído com sucesso.<br />
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>