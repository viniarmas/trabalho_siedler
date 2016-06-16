/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author paton
 */
@Entity
@Table(name = "filme")
@NamedQueries({
    @NamedQuery(name = "Filme.findAll", query = "SELECT f FROM Filme f")})
public class Filme implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "filme")
    private Long filme;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @Basic(optional = false)
    @Column(name = "nota")
    private Character nota;
    @Basic(optional = false)
    @Column(name = "tempo")
    private String tempo;
    @Basic(optional = false)
    @Column(name = "youtube")
    private String youtube;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @Column(name = "imdb")
    private String imdb;
    @JoinTable(name = "assistif", joinColumns = {
        @JoinColumn(name = "filme", referencedColumnName = "filme")}, inverseJoinColumns = {
        @JoinColumn(name = "usuario", referencedColumnName = "usuario")})
    @ManyToMany
    private List<Usuario> usuarioList;
    @JoinColumn(name = "categoria", referencedColumnName = "categoria")
    @ManyToOne(optional = false)
    private Categoria categoria;

    public Filme() {
    }

    public Filme(Long filme) {
        this.filme = filme;
    }

    public Filme(Long filme, String descricao, Character nota, String tempo, String youtube, String nome, String imdb) {
        this.filme = filme;
        this.descricao = descricao;
        this.nota = nota;
        this.tempo = tempo;
        this.youtube = youtube;
        this.nome = nome;
        this.imdb = imdb;
    }

    public Long getFilme() {
        return filme;
    }

    public void setFilme(Long filme) {
        this.filme = filme;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public Character getNota() {
        return nota;
    }

    public void setNota(Character nota) {
        this.nota = nota;
    }

    public String getTempo() {
        return tempo;
    }

    public void setTempo(String tempo) {
        this.tempo = tempo;
    }

    public String getYoutube() {
        return youtube;
    }

    public void setYoutube(String youtube) {
        this.youtube = youtube;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getImdb() {
        return imdb;
    }

    public void setImdb(String imdb) {
        this.imdb = imdb;
    }

    public List<Usuario> getUsuarioList() {
        return usuarioList;
    }

    public void setUsuarioList(List<Usuario> usuarioList) {
        this.usuarioList = usuarioList;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (filme != null ? filme.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Filme)) {
            return false;
        }
        Filme other = (Filme) object;
        if ((this.filme == null && other.filme != null) || (this.filme != null && !this.filme.equals(other.filme))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Filme[ filme=" + filme + " ]";
    }
    
}
