<%@page import="modelo.Categoria"%>
<%@page import="dao.CategoriaDAO"%>
<%@page import="modelo.Filme"%>
<%@page import="dao.FilmeDAO"%>
<%@include file="../cabecalho-admin.jsp"%>

<%
    String id = request.getParameter("id");
    CategoriaDAO dao = new CategoriaDAO();
    Categoria obj = dao.buscarPorChavePrimaria(Integer.parseInt(id));
%>


<section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
    <div class="mdl-card mdl-cell mdl-cell--12-col">
        <div class="mdl-card__supporting-text">
            <h4>Filme - Atualizar</h4>
            <form action="upd-ok.jsp" method="post">
                <!-- 
                    primeira div -- �rea que ocupar� o campo de formul�rio
                    segunda div -- campo de texto e label 
                -->
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="Long" disabled required  name="txtFilme" />
                        <label class="mdl-textfield__label" for="txtFilme">ID - Fornecido pelo sistema</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtNome" />
                        <label class="mdl-textfield__label" for="txtNome">Nome</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtDescricao" />
                        <label class="mdl-textfield__label" for="txtDescricao">Descricao</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="character" required  name="txtNota" />
                        <label class="mdl-textfield__label" for="txtNota">Nota</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtTempo" />
                        <label class="mdl-textfield__label" for="txtTempo">Tempo</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtYoutube" />
                        <label class="mdl-textfield__label" for="txtYoutube">Youtube</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col"> 
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" required  name="txtImdb" />
                        <label class="mdl-textfield__label" for="txtImdb">IMDB</label>
                    </div>
                </div>
                <div class="mdl-cell--12-col">

                    <button type="submit" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">save</i></button>
                    <button type="reset" class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored">
                        <i class="material-icons">clear</i></button>


                </div>
            </form>
        </div>

    </div>

</section>

<%@include file="../rodape-admin.jsp"%>