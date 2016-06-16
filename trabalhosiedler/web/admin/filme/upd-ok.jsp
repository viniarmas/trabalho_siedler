<%@page import="modelo.Filme"%>
<%@page import="dao.FilmeDAO"%>
<%@include file="../../cabecalho-admin.jsp"%>
<%
    if (request.getParameter("Filme") == null
            || request.getParameter("txtNome") == null) {
        response.sendRedirect("list.jsp");
        return;
    }
    
    String filme = request.getParameter("txtFilme");
    String nome = request.getParameter("txtNome");
        String desc = request.getParameter("txtDescricao");
        String nota = request.getParameter("txtNota");
        String yt = request.getParameter("txtYoutube");
        String imdb = request.getParameter("txtImdb");
        String tempo= request.getParameter("txtTempo");
        
        String cat=request.getParameter("txtCategoria");
        SerieDAO dao = new SerieDAO();
        
        Serie obj = dao.buscarPorChavePrimaria(Long.parseLong(filme));
        //obj.setId(Integer.parseInt(id));
        
        
    
   
    
    if(obj==null){
        response.sendRedirect("list.jsp");
        return;
    }
Categoria Ocategoria = new Categoria();
        Ocategoria.setCategoria(Long.parseLong(cat));
        
       
        obj.setCategoria(Ocategoria);
    obj.setSerie(Long.parseLong(filme));
   obj.setNome(nome);
        obj.setCategoria(cat);
        obj.setDescricao(desc);
      
        obj.setImdb(imdb);
        obj.setNota(nota.charAt(0));
        obj.setTempo(tempo);
        
        obj.setYoutube(yt);
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

<%@include file="../../rodape-admin.jsp"%>

