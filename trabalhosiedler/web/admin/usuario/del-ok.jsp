<%@page import="modelo.Usuario"%>
<%@page import="dao.UsuarioDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<%
    String usuario = request.getParameter("usuario");
    UsuarioDAO dao = new UsuarioDAO();
    Usuario obj = dao.buscarPorChavePrimaria(Long.parseLong(usuario));
    dao.excluir(obj);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Usuario - Excluir</h4>
            O Registro <%=usuario%> foi excluído com sucesso.<br />
            <a href="list.jsp"><i class="material-icons">list</i></a>

        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>