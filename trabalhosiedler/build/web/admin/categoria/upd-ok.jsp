<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@include file="../cabecalho-admin.jsp"%>
<%
    if (request.getParameter("categoria") == null
            || request.getParameter("txtNome") == null) {
        response.sendRedirect("list.jsp");
        return;
    }
    
    String categoria = request.getParameter("txtCategoria");
    String nome = request.getParameter("txtNome");
    
    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = dao.buscarPorChavePrimaria(Long.parseLong(categoria));
    
    if(obj==null){
        response.sendRedirect("list.jsp");
        return;
    }
    obj.setCategoria(Long.parseLong(categoria));
    obj.setNome(nome);
    
    dao.alterar(obj);
%>

<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text ">
            <h4>Atualizar</h4>
            <p>Registro atualizado com sucesso.</p>
            <a href="list.jsp"><i class="material-icons">list</i></a>
            
        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>

