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
@Table(name = "serie")
@NamedQueries({
    @NamedQuery(name = "Serie.findAll", query = "SELECT s FROM Serie s")})
public class Serie implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "serie")
    private Long serie;
    @Basic(optional = false)
    @Column(name = "temporada")
    private String temporada;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Basic(optional = false)
    @Column(name = "tempo")
    private String tempo;
    @Basic(optional = false)
    @Column(name = "descricao")
    private String descricao;
    @Basic(optional = false)
    @Column(name = "nota")
    private Character nota;
    @Basic(optional = false)
    @Column(name = "youtube")
    private String youtube;
    @Basic(optional = false)
    @Column(name = "episodio")
    private String episodio;
    @Basic(optional = false)
    @Column(name = "imdb")
    private String imdb;
    @JoinTable(name = "assistis", joinColumns = {
        @JoinColumn(name = "serie", referencedColumnName = "serie")}, inverseJoinColumns = {
        @JoinColumn(name = "usuario", referencedColumnName = "usuario")})
    @ManyToMany
    private List<Usuario> usuarioList;
    @JoinColumn(name = "categoria", referencedColumnName = "categoria")
    @ManyToOne(optional = false)
    private Categoria categoria;

    public Serie() {
    }

    public Serie(Long serie) {
        this.serie = serie;
    }

    public Serie(Long serie, String temporada, String nome, String tempo, String descricao, Character nota, String youtube, String episodio, String imdb) {
        this.serie = serie;
        this.temporada = temporada;
        this.nome = nome;
        this.tempo = tempo;
        this.descricao = descricao;
        this.nota = nota;
        this.youtube = youtube;
        this.episodio = episodio;
        this.imdb = imdb;
    }

    public Long getSerie() {
        return serie;
    }

    public void setSerie(Long serie) {
        this.serie = serie;
    }

    public String getTemporada() {
        return temporada;
    }

    public void setTemporada(String temporada) {
        this.temporada = temporada;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTempo() {
        return tempo;
    }

    public void setTempo(String tempo) {
        this.tempo = tempo;
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

    public String getYoutube() {
        return youtube;
    }

    public void setYoutube(String youtube) {
        this.youtube = youtube;
    }

    public String getEpisodio() {
        return episodio;
    }

    public void setEpisodio(String episodio) {
        this.episodio = episodio;
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
        hash += (serie != null ? serie.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Serie)) {
            return false;
        }
        Serie other = (Serie) object;
        if ((this.serie == null && other.serie != null) || (this.serie != null && !this.serie.equals(other.serie))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Serie[ serie=" + serie + " ]";
    }
    
}
