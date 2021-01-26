<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImprensaContatos.aspx.cs" Inherits="Sln_Pgov._ImprensaContatos" EnableEventValidation="false"
    UICulture="auto" %>

<%@ Register Src="~/CrtTopoInterno.ascx" TagName="CrtTopoInterno" TagPrefix="uc1" %>
<%@ Register Src="~/CrtBusca.ascx" TagName="CrtBusca" TagPrefix="uc2" %>
<%@ Register Src="CrtRodape.ascx" TagName="CrtRodape" TagPrefix="uc3" %>

<link rel="stylesheet" href="css/bootstrap-glyphicons.css">
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
html {
  scroll-behavior: smooth;
}
.container {
    width: 100%;
    padding-right: 0px;
    padding-left: 0px;
    margin-right: auto;
    margin-left: auto;
} /* manter na página: sobrescrevendo bootstrap */
.auto-style1 {
    font-weight: bold;
}
p.MsoNormal {
    line-height: 18pt; font-family: Calibri, sans-serif; 
}
.titulo {
    font-size: 1.7em;
    font-weight: bold;
    margin-bottom: 5px;
    margin-top: 20px;
}   
.sub-titulo {
    font-size: 1.16em;
    font-weight: bold;
    margin: 10px 0 10px 0;
}     
.cargo-titulo {
    font-size: 1.02em;
    font-weight: bold;
    text-indent: 20px;
}        
.vinculados {
    font-size: .9em;
    font-weight: bold;
    color: #222222;
    background-color: #e8e8e8;
    padding: 2px 60px 2px 5px!important;
    border-radius: 0 50px 5px 0;
    width: 50%;
    margin-top: 15px;
}
.titulo-secao {
    display: block;
    text-align: center;
    margin-bottom: 25px;
}
.titulo-secao span {
    font-weight: bold;
    font-size: 2em;
    color: #00508a;
}
p:empty {
    width: 80px;
    height: 6px;
    margin: 5px 0 10px 0!important;
    text-align: left;
    background: #00508a;
}
.contato-orgaos-wrap {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    /* width: 35em; */
    margin: 0px auto 60px auto;
}
.contato-orgaos-linha {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
}

/*.contato-orgaos-wrap button {
    margin: 7px 7px;
    border-radius: 25px;
    background-color: #dddddd;
    color: #363636;
    font-weight: 700;
    font-size: 0.9em;
    padding: 5px 12px;
    cursor: pointer;
    border: none;
    max-width: 60px;
}*/

.contato-orgaos-wrap button {
    margin: 7px 7px;
    border-radius: 25px;
    background-color: #dddddd;
    color: #363636;
    font-weight: 700;
    font-size: 0.7em;
    padding: 20px 12px;
    cursor: pointer;
    border: none;
    width: 200px;
}
.contato-orgaos-wrap button:hover {
    background-color: #00508a;
    color: #eee;
}
.contato-orgaos-linha a {
    display: flex;
}
/* .contato-orgaos-linha a:hover {
    color: #eee;
} */
.glyphicon {
    font-size: .66em;
    color: #9b9b9b;
    margin-left: 10px!important;
}
.indent {padding-left: 20;}
</style>

<uc1:CrtTopoInterno ID="CrtTopoInterno" runat="server" />
<form id="form1" runat="server">




    <section id="" style=" background-color:#FFFFFF;">

        <div class="section-container"
            style="display: flex; align-items: center; justify-content: center; flex-direction:column;">

            <div
                style="width:100%; margin: 20px 0; font-size: 1.5em; color: #00508a; border-bottom: solid 7px; font-weight: 800;">
                <h1>
                    <asp:label runat="server" text="" id="lblpagina"></asp:label>
                </h1>
            </div>

            <div class="row"
                style="display: flex; align-items: center; width: 100%; justify-content: space-between; place-items: center;">

                <div class="mais-pesquisados-wrap">
                    <span>Mais pesquisados: </span>
                    <uc2:CrtBusca ID="CrtBusca" runat="server" />
                </div>

                <form name="aspnetForm" method="post" action="./" id="aspnetForm" class="form-pesquisa">
                    <div>
                        <input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
                        <input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
                        <input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="">
                    </div>

                    <script type="text/javascript">
                        //<![CDATA[
                        var theForm = document.forms['aspnetForm'];
                        if (!theForm) {
                            theForm = document.aspnetForm;
                        }
                        function __doPostBack(eventTarget, eventArgument) {
                            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                                theForm.__EVENTTARGET.value = eventTarget;
                                theForm.__EVENTARGUMENT.value = eventArgument;
                                theForm.submit();
                            }
                        }
		    //]]>
                    </script>

                    <%--<div class="search-box"  style="border: #000000 solid 2px; border-radius: 15px; height:30px;">
		<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334">
		<input name="CrtTopo$txtBuscar" id="CrtContexto_txtBuscar" class="buscarportal botao" type="search" placeholder="Busque aqui" />
		<button onClick="__doPostBack('CrtTopo$ctl01','')" class="icon"><i class="fa fa-search"></i></button>
	</div>--%>
                </form>


            </div>
        </div>
    </section>




    <section id="estrutura" style="background-color:#ffffff; padding:15px 0px;">

    </section>


    <section style="background-color: #ffffff; min-height: 500px; padding: 30px 0px;">
        <div class="section-container">
            <div style="color: #000000; font-weight: 700; font-size: 0.8em; padding: 15px 10px 30px 5px; border-top: solid 2px #cccccc;">
                PÁGINA INICIAL > IMPRENSA > CONTATO</div>


            
                <div id="telefones-uteis">

                    <!-- <div class="titulo-secao">
                        <span>Contatos das Secretarias e demais órgãos do Governo do Estado do Rio de Janeiro</span>
                        <p style="margin: 0 auto!important;"></p>
                    </div> -->
            
                    <div class="contato-orgaos-wrap">
                                <div class="contato-orgaos-linha">
                                    <a href="#governadoria-estado">
                                        <button class="md-trigger">Governadoria do Estado</button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#casa-civil">
                                        <button class="md-trigger">Secretaria de Estado de <br />
                                            <span style="font-size: 1.2em;">Planejamento e Gestão</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#vice-governadoria">
                                     <button class="md-trigger">Vice-Governadoria do Estado</button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#relacoes-institucionais">
                                     <button class="md-trigger">Secretaria de Governo, Comunicação 
                                        <span style="font-size: 1.2em;">e Relações Institucionais</span> </button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#fazenda">
                                    <button class="md-trigger">Secretaria de Estado de 
                                        <span style="font-size: 1.2em;">Fazenda</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#desenvolvimento-economico">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Desenvolvimento Econômico, Energia e Relações Internacionais</span></button>
                                    </a>
                                </div>   
                                <div class="contato-orgaos-linha">
                                    <a href="#infraestrutura">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Infraestrutura e Obras</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#policia-militar">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Polícia Militar</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#policia-civil">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Polícia Civil</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#adm-penitenciaria">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Administração Penitenciária</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#defesa-civil">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Defesa Civil</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#saude">
                                        <button class="md-trigger">Secretaria de Estado de<br /> 
                                            <span style="font-size: 1.2em;">Saúde</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#educacao">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Educação</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#ciencia-tecnologia">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Ciência, Tecnologia e Inovação</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#transporte">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Transportes</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#vitimados">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Vitimados</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#sustentabilidade">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Ambiente e Sustentabilidade</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#agricultura">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Agricultura, Pecuária e Abastecimento</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#cultura">
                                        <button class="md-trigger">Secretaria de Estado de
                                            <span style="font-size: 1.2em;">Cultura e Economia Criativa</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#direitos-humanos">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Desenvolvimento Social e Direitos Humanos</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#esporte">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Esporte, Lazer e Juventude</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#turismo">
                                        <button class="md-trigger">Secretaria de Estado de 
                                            <span style="font-size: 1.2em;">Turismo</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#cidades">
                                        <button class="md-trigger">Secretaria de Estado das 
                                            <span style="font-size: 1.2em;">Cidades</span></button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#controladoria">
                                        <button class="md-trigger">Controladoria Geral do Estado</button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#procuradoria">
                                        <button class="md-trigger">Procuradoria Geral do Estado</button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#defensoria">
                                        <button class="md-trigger">Defensoria Pública Geral do Estado</button>
                                    </a>
                                </div>
                                <div class="contato-orgaos-linha">
                                    <a href="#demais-orgaos">
                                        <button class="md-trigger">Demais órgãos</button>
                                    </a>
                                </div>


            
                            
                    </div>
            
                </div>



            <p class="MsoNormal titulo" id="governadoria-estado">Governadoria do Estado</span></p>
            <p></p>
            <p class="MsoNormal sub-titulo">Núcleo de Imprensa</span></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de Imprensa:</span><br />
                <span>Leonardo&nbsp;Zanelli&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3176
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadores-adjuntos:</span><br />
                <span>Juliana Ramos&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3535&nbsp;/ 98596-3355&nbsp;
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:juliana.governorj@gmail.com">juliana.governorj@gmail.com</a>
                </span>
                <br />
                <span>Fábio&nbsp;Varsano&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3525 / 98318-1102&nbsp;
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:fabio.varsano81@gmail.com">fabio.varsano81@gmail.com</a>
                </span>
                <br />
                <span>Aline Magno&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3637 / 96846-2547
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:aline.governo.rj@gmail.com">aline.governo.rj@gmail.com</a>
                </span>
                <br />
                <span>Marcelle Colbert&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3525 / 99888-3941
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:marcellecolbert@gmail.com">marcellecolbert@gmail.com</a>
                </span>
                <br />
                <span>Cristina Alves&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3525 / 98160-0311
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:crisalves.governorj@gmail.com">crisalves.governorj@gmail.com</a>
                </span>
                <br />
                <span>Rodrigo Taves&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3637 / 98855-5484
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:rodrigotaves.governorj@gmail.com">rodrigotaves.governorj@gmail.com</a>
                </span>
                <br />
                <span>Raphael Vaz&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3535 / 99943-9572
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:raphael.vaz.teixeira@gmail.com">raphael.vaz.teixeira@gmail.com</a>
                </span>
                </p>
                <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora do Portal de Notícias :</span><br />
                    <span>Renata Cruz&nbsp;
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3525
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:renatacruzoliveira@gmail.com">renatacruzoliveira@gmail.com</a>
                    </span>
                    </p>

            <p class="MsoNormal indent"><span class="cargo-titulo">Assessores de imprensa:</span><br />
                <span>Cris Rocha&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3535
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:crisrrocha@gmail.com">crisrrocha@gmail.com</a>
                </span>
                <br />
                <span>Suzane Lima&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3224
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:suzane.governorj@gmail.com">suzane.governorj@gmail.com</a>
                </span>
                <br />
                <span>Sandra Proença&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3591
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:sandrajornalista.proenca@gmail.com">sandrajornalista.proenca@gmail.com</a>
                </span>
                <br />
                <span>Renata Cruz&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3525
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:renatacruzoliveira@gmail.com">renatacruzoliveira@gmail.com</a>
                </span>
                <br />
                <span>Carolina Perez&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3535
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:carolina.governorj@gmail.com">carolina.governorj@gmail.com</a>
                </span>
                <br />
                <span>Julia de Brito&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3518
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:juliabritomaranhao@gmail.com">juliabritomaranhao@gmail.com</a>
                </span>
                <br />
                <span>Vicente Magno&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3518
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:vmagno.gov@gmail.com">vmagno.gov@gmail.com</a>
                </span>
                <br />
                <span>Lula Pellegrini&nbsp;
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3525
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:pellegrini.governorj@gmail.com">pellegrini.governorj@gmail.com</a>
                </span>
                </p>

            <br />
            <hr>

            <p class="MsoNormal titulo" id="casa-civil">Secretaria de Estado de Planejamento e Gestão</span></p>
            <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Cris Rocha
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3176 / 98006-8887
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:crisrrocha@gmail.com">crisrrocha@gmail.com</a>
                </span>
                </p>
                
            <br />
            <hr>

            <p class="MsoNormal titulo" id="vice-governadoria">Vice-Governadoria do Estado</span></p>
            <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadores de imprensa:</span><br />
                <span>Igor Marques
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3139 / 99556-2000
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:marquesigor5@gmail.com">marquesigor5@gmail.com</a>
                </span><br />
                <span>Denise Ribeiro
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3139 / 98895-0285
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:denise.ribeiro@gmail">denise.ribeiro@gmail</a>
                </span>
                </p>

            <p class="MsoNormal vinculados">Órgãos Vinculados</span></p>
            <p class="MsoNormal sub-titulo">Detran&nbsp;(Departamento de Trânsito do Estado do Rio de Janeiro)</span></p>
            <p class="MsoNormal indent">
                <span>
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;2332-0342 / 2332-0345 / 2332-0346 / 2332-0349
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ascom@detran.rj.gov.br">ascom@detran.rj.gov.br</a></span>
                </p><br />
                <p class="MsoNormal indent"><span class="cargo-titulo">Assessora-chefe:</span><br />
                    <span>Priscylla Almawy
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:priscylla.almawy@detran.rj.gov.br">priscylla.almawy@detran.rj.gov.br</a>
                     </span>
                </p>
<!--             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Daniela Damaso
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-0341 / 96735-1128
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:daniela.damaso@detran.rj.gov.br">daniela.damaso@detran.rj.gov.br&nbsp;</a>/&nbsp;
                    <a href="mailto:ascom@detran.rj.gov.br">ascom@detran.rj.gov.br</a></span>
                </p> -->
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessora de imprensa:</span><br />
                    <!-- <span>Juliana Baião
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-0349 / 99129-9596
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:juliana.baiao@detran.rj.gov.br">juliana.baiao@detran.rj.gov.br</a>
                    </span><br /> -->
                    <span>Claudia Lobo
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:claudia.lobo@fsbcomunicacao.com.br">claudia.lobo@fsbcomunicacao.com.br</a>
                     </span>
                </p>
                <p class="MsoNormal indent"><span class="cargo-titulo">Jornalistas:</span><br />
                    <span>Ana Maria Ribeiro
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:ana.maria@detran.rj.gov.br">ana.maria@detran.rj.gov.br</a>
                    </span><br />
                    <span>Carolina Lages
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:carolina.pereira@detran.rj.gov.br">carolina.pereira@detran.rj.gov.br</a>
                    </span><br />
                    <span>Fernanda Domingues
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:fernanda.domingues@detran.rj.gov.br">fernanda.domingues@detran.rj.gov.br</a>
                    </span><br />
                    <span>Paulo Rodrigo Dias
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:paulo.dias@detran.rj.gov.br">paulo.dias@detran.rj.gov.br</a>
                     </span>
                </p>
                <p class="MsoNormal indent"><span class="cargo-titulo">Fotógrafo:</span><br />
                    <span>Alexandre Simonini
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:alexandre.simonini@detran.rj.gov.br">alexandre.simonini@detran.rj.gov.br</a>
                    </span>
                    </p>


            <p class="MsoNormal sub-titulo">DER (Departamento de Estradas de Rodagem)</p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de Comunicação:</span><br />
                    <span>Simone&nbsp;Bloris
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-5540 / 99997-9270
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:comunicacao.derrj@gmail.com">comunicacao.derrj@gmail.com</a>
                    </span>
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessora:</span><br />
                    <span>Marcelle Barreto
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-2338 / 98616-2685
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:comunicacao.derrj@gmail.com">comunicacao.derrj@gmail.com</a>
                    </span>
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Fotógrafo:</span><br />
                <span>Gabriel Esteves
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:comunicacao.derrj@gmail.com">comunicacao.derrj@gmail.com</a>
                </span>
            </p>    
            <p class="MsoNormal sub-titulo">Instituto de Segurança Pública (ISP)</p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Karina Nascimento
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-9690 / 98596-5264
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:knascimento.isp@gmail.com">knascimento.isp@gmail.com</a>
                    <a href="mailto:imprensaisp@gmail.com">imprensaisp@gmail.com</a>
                    </span>
                </p>
            <br />
            <hr>

            <p class="MsoNormal titulo" id="relacoes-institucionais">Secretaria de Governo, Comunicação e Relações Institucionais</span></p>
            <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Marcela Lobo
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3612 / 96621-6253
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:marcela.governorj@gmail.com">marcela.governorj@gmail.com</a>
                    </span>
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Operação Segurança Presente</span><br />
                    <span>Ana&nbsp;Miguez&nbsp;
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3612 /&nbsp;98596-6395
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:marcela.governorj@gmail.com">anamiguez.governorj@gmail.com</a>
                    </span>
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Operação Lei Seca</span><br />
                    <span>Marcela Lobo
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3612 / 96621-6253
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:marcela.governorj@gmail.com">marcela.governorj@gmail.com</a>
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Operação Barreira Fiscal</span></br>
                    <span>Marcela Lobo
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3612 / 96621-6253
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:marcela.governorj@gmail.com">marcela.governorj@gmail.com</a>
                </p>
            <p class="MsoNormal vinculados">Órgãos Vinculados</p>
            <p class="MsoNormal sub-titulo">Procon</p>
            <p class="MsoNormal">
            <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:autarquiaprocon@gmail.com">autarquiaprocon@gmail.com</a>&nbsp;/&nbsp;
                        <a href="mailto:autarquiaprocon2@gmail.com">autarquiaprocon2@gmail.com</a></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                    <span>Vinicius Marins:&nbsp;
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2216-8670 /&nbsp;98787-2779
                    </span>
            </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                    <span>Vivian Calil
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;99367-2364<br />
                    <span>Monick Xavier
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;98624-5869
                    </span>
                </p>
                <p class="MsoNormal sub-titulo">Rádio 94 FM Roquette Pinto</p>
                <p class="MsoNormal indent"><span class="cargo-titulo">Coordernação de Jornalismo:</span><br />
                        <span>Genalldo Rodrigues:&nbsp;
                            <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2333-2041 / 97130-1980
                        </span>
                </p>
                <p class="MsoNormal indent"><span class="cargo-titulo">Coordernação de Produção:</span><br />
                        <span>Rita Sousa
                            <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2333-3255 / 99571-3240 <br />
                        </span>
                    </p>
                

            <br />
            <hr>
            

            <p class="MsoNormal titulo" id="fazenda">Secretaria de Estado de Fazenda</span></p>
                <p></p>
            <p class="MsoNormal indent">
                <span>
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ascom@fazenda.rj.gov.br">ascom@fazenda.rj.gov.br</a>
                </span>
            </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessora-chefe da Assessoria de Comunicação Social:</span><br />
                    <span>Alessandra Horto
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;(21) 2334-4512
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:ahorto@fazenda.rj.gov.br">ahorto@fazenda.rj.gov.br</a>&nbsp;/&nbsp;
                        <a href="mailto:ascom@fazenda.rj.gov.br">ascom@fazenda.rj.gov.br</a>
                    </span>
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessoras:</span><br />
                <span>Djalma Oliveira
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;(21) 2334-4636
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:dcsoliveira@fazenda.rj.gov.br">dcsoliveira@fazenda.rj.gov.br</a>&nbsp;/&nbsp;
                </span><br/>
                <span>Roberta Vieira
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;(21) 2334-4636
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:rmvieira@fazenda.rj.gov.br">rmvieira@fazenda.rj.gov.br</a>&nbsp;/&nbsp;
                </span><br/>
                <span>Rosana Freitas
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;(21) 2334-4655
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ahorto@fazenda.rj.gov.br">rdsfreitas@fazenda.rj.gov.br</a>&nbsp;/&nbsp;
                </span>
            </p>
            
            
            <p class="MsoNormal vinculados">Órgãos Vinculados</p>

            <p class="MsoNormal sub-titulo">Rioprevidência</p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                        <span>Landa&nbsp;Araújo | Carlos Henrique Costa<br />
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-5383
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:comunicacao@rioprevidencia.rj.gov.br">comunicacao@rioprevidencia.rj.gov.br</a>
                    </span>
                </p>

<br />
<hr>


            <p class="MsoNormal titulo" id="desenvolvimento-economico">Secretaria de Estado de Desenvolvimento Econômico, Energia e Relações Internacionais</span></p>
                <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Cassiano Viana
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;97676-9859
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:cassiano@desenvolvimento.rj.gov.br">cassiano@desenvolvimento.rj.gov.br</a><br />
                    </span>
                <span>Carmine&nbsp;Miceli
                <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-8308
                <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                <a href="mailto:carmine@desenvolvimento.rj.gov.br">carmine@desenvolvimento.rj.gov.br</a></p>
				
				 <p class="MsoNormal vinculados">Órgãos Vinculados</span></p>

            <p class="MsoNormal sub-titulo">Fiperj&nbsp;(Fundação Instituto de Pesca do Estado do Rio de Janeiro)</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de Imprensa:</span><br />
                <span>Rodrigo&nbsp;Damatta
                    <span class="glyphicon glyphicon-phone-alt"></span> 96468-3367
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:fiperj.ascom@gmail.com">fiperj.ascom@gmail.com</a><span>&nbsp;/&nbsp;comunicacao@fiperj.rj.gov.br&nbsp;
                    </span></p>
            

<br />
<hr>

            <p class="MsoNormal titulo" id="infraestrutura">Secretaria de Estado de Infraestrutura e Obras</span></p>
            <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                    <span>Gustavo Fernandes
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2517-4900 (Ramal: 4016) / 99948 5599 
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:gustavo.seobras@gmail.com">gustavo.seobras@gmail.com</a>&nbsp;/&nbsp;
                        <a href="mailto:imprensa.seinfrarj@gmail.com">imprensa.seinfrarj@gmail.com</a>
                    </span>
                </p>

            <p class="MsoNormal vinculados">Órgãos Vinculados</span></p>
            <p class="MsoNormal sub-titulo">Emop (Empresa de Obras Públicas do Estado do Rio de Janeiro)</span></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Celia Abend
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-3507 / 99318-0249
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ascom.emop@gmail.com">ascom.emop@gmail.com</a> 
                    </span>
            </p>
            <p class="MsoNormal sub-titulo">CEHAB&nbsp;-&nbsp;Companhia Estadual de Habitação</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Kátia Argento
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;96627-1466 /&nbsp;2332-8632
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;<a href="mailto:cehab.ascom@gmail.com">cehab.ascom@gmail.com</a>
                    </span>
                </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Chefe de Comunicação Social:</span><br />
                    <span>Adriana Mesquita
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;21 99804-9960 /&nbsp;2332-8632
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;<a href="mailto:cehab.ascom@gmail.com">cehab.ascom@gmail.com</a>
                    </span>
                </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                    <span>Alice Monteiro 
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-8632
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;<a href="mailto:cehab.ascom@gmail.com">cehab.ascom@gmail.com</a>
                    </span>
                <br />
                <span>Valter de Gaudio 
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-8632
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;<a href="mailto:cehab.ascom@gmail.com">cehab.ascom@gmail.com</a>
                    </span>
                <br />
                <span>Daniel Azevedo
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-8632
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;<a href="mailto:cehab.ascom@gmail.com">cehab.ascom@gmail.com</a>
                    </span>
                </p>

<br />
<hr>

            <p class="MsoNormal titulo" id="policia-militar">Secretaria de Estado de Polícia Militar</span class="titulo"></p>
                    <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                    <span>Coronel Mauro&nbsp;Fliess
                        <span class="glyphicon glyphicon-phone-alt"></span> 2333-2568/2569/2570/2571 / 97581-1930<br />
                    <span><b>Cascon:</b><span class="glyphicon glyphicon-phone-alt"></span> 2333-2568/2569/ 2570/2571 / 99346-5750
                    <span class="glyphicon glyphicon-envelope"></span>
                    <a href="mailto:imprensa@pmerj.rj.gov.br">imprensa@pmerj.rj.gov.br</a>
                </span>
            </p>

            <br />                
            <hr>

            <p class="MsoNormal titulo" id="policia-civil">Secretaria de Estado de Polícia Civil</span></p>
                <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadores de imprensa:</span> <br />
                    <span>Marcelo Ahmed
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-9929/9930
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:ascompcerj@gmail.com">ascompcerj@gmail.com</a>
                    </span><br />
                    <span>Camila Donato
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                            <a href="mailto:camiladonato.pcerj@gmail.com">camiladonato.pcerj@gmail.com</a> / 
                            <a href="mailto:ascompcerj@gmail.com">ascompcerj@gmail.com</a>
                    </span>
                </p>
                
            <br />                
            <hr>

            <p class="MsoNormal titulo" id="adm-penitenciaria">Secretaria de Estado de Administração Penitenciária</span></p>
                <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                    <span>Ramon Mendonça
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-6256/6257 / 98114-8062
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:ascomseap@gmail.com">ascomseap@gmail.com</a>
                </span>
            </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                <span>Patrícia Duarte
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-6256/6257
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ascomseap@gmail.com">ascomseap@gmail.com</a>
            </span><br />
            <span>Márcio Barboza
                <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-6256/6257
                <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                <a href="mailto:ascomseap@gmail.com">ascomseap@gmail.com</a>
        </span>
        </p>
            
            <br />                
            <hr>
          
            <p class="MsoNormal titulo" id="defesa-civil">Secretaria de Estado de Defesa Civil</span></p>
                <p></p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Elaine Dias
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2333-2930 / 97923-0500
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:elaine.defesacivil@gmail.com">elaine.defesacivil@gmail.com</a>
                    </span>
                </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessoras:</span><br />
                    <span>Ângela Góes
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;97923-0555
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:angela.defesacivil@gmail.com">angela.defesacivil@gmail.com</a>
                    <span><br />                 
                    <span>Camila&nbsp;Pessanha
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;98596-9652
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:camila.defesacivil@gmail.com">camila.defesacivil@gmail.com</a>
                    </span>
            </p>

            <br />
            <hr>

            <p class="MsoNormal titulo" id="saude">Secretaria de Estado de Saúde</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                    <span>Paula&nbsp;Fiorito
                        <span class="glyphicon glyphicon-phone-alt"></span> 2332-6332/6155 
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:paula.fiorito@gmail.com">paula.fiorito@gmail.com</a>&nbsp;/&nbsp;
                        <a href="mailto:imprensa.sauderj@gmail.com">imprensa.sauderj@gmail.com</a>
                    </span>
                </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                    <span>Raphael Vaz Teixeira
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-6332/6155 /&nbsp;99943-9572
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:raphael.sauderj@gmail.com">raphael.sauderj@gmail.com</a>&nbsp;/&nbsp;
                        <a href="mailto:imprensa.sauderj@gmail.com">imprensa.sauderj@gmail.com</a>
                    </span>
                </p>
            
            <br />
            <hr>

            <p class="MsoNormal titulo" id="educacao">Secretaria de Estado de Educação</span class="cargo-titulo"></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                <span>Iuri Cardoso
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2380-9021/9020/9022 / 98528-0006/ 99925-3757
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:iuri.cardoso@hotmail.com">iuri.cardoso@hotmail.com</a>&nbsp;/&nbsp;
                    <a href="mailto:imprensa@educacao.rj.gov.br">imprensa@educacao.rj.gov.br</a>
                </span>
            </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                <span>Carlaile
                    <span class="glyphicon glyphicon-phone-alt"></span> 98343-1695
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:carlailerodrigues@gmail.com">carlailerodrigues@gmail.com</a>&nbsp;/&nbsp;
                    <a href="mailto:imprensa@educacao.rj.gov.br">imprensa@educacao.rj.gov.br</a>
                </span>
            </p>
            <p class="MsoNormal vinculados">Órgãos Vinculados</span></p>
            <p class="MsoNormal sub-titulo">Degase</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de Comunicação:</span><br />
                <span>Bernadete&nbsp;Travassos
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-6675 / 98743-4121
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ascom@novodegase.rj.gov.br">ascom@novodegase.rj.gov.br</a>&nbsp;/&nbsp;
                    
                </span>
            </p>
            
            <br />
            <hr>


            <p class="MsoNormal titulo" id="ciencia-tecnologia">Secretaria de Estado de Ciência, Tecnologia e Inovação</p>
                <p class="MsoNormal indent">
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-5512
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:sectirj@gmail.com">sectirj@gmail.com</a>
                <br /></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Paula Pinto
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;98410-8622
                        </span>
            </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                <span>Renata Fortes
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;99155-1214
                </span><br />
                <span>Gabriel Lobo
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;99401-3006
                </span><br />
                <span>Mariana Guedes 
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;97250-4619
                </span>
            </p>
            <p class="MsoNormal vinculados">Órgãos Vinculados</p>

            <p class="MsoNormal sub-titulo">CEPERJ</p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessora de Comunicação:</span><br />
                   <span>Thaís Nogueira Nunes
                       <span class="glyphicon glyphicon-phone-alt"></span> (21) 2334-7108 / (21) 999444021
                       <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                       <a href="mailto:comunicacao@ceperj.rj.gov.br">comunicacao@ceperj.rj.gov.br</a>
                   </span>
               </p>
               
            <p class="MsoNormal sub-titulo">FAPERJ</p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Claudia&nbsp;Jurberg
                        <span class="glyphicon glyphicon-phone-alt"></span> 99973-4982
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:cjurberg@yahoo.com.br">cjurberg@yahoo.com.br</a>
                    </span>
                </p>

            <p class="MsoNormal sub-titulo">FAETEC&nbsp;(Fundação de Apoio à Escola Técnica)</p>
            <p class="MsoNormal indent">
                <span>Vanessa&nbsp;Campanario
                    <span class="glyphicon glyphicon-phone-alt"></span> 2332-4059/4077 / 98596-8498
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:imprensafaetec@gmail.com">imprensafaetec@gmail.com</a>
                    <a href="mailto:ascom@faetec.rj.gov.br">ascom@faetec.rj.gov.br</a>
                </span>
            </p>

            <p class="MsoNormal sub-titulo">Hospital Universitário Pedro Ernesto</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Marilda Santos
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2868-8524/8525/8669 / 99842-5172
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:assessoria.hupe@gmail.com">Assessoria.hupe@gmail.com</a>
                    <a href="mailto:marilda.assessorahupe@gmail.com">marilda.assessorahupe@gmail.com</a>
                </span>
            </p>

            <p class="MsoNormal sub-titulo">Proderj&nbsp;(Centro de Processamento de Dados do Estado do Rio de janeiro)</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessor:</span><br />
                    <span>Daniel Cunha
                        <span class="glyphicon glyphicon-phone-alt"></span> 99431-6999
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:daniel.massa@gmail.com">daniel.massa@gmail.com</a>&nbsp;/&nbsp;
                        <a href="mailto:danielcunha@proderj.rj.gov.br">danielcunha@proderj.rj.gov.br</a>&nbsp;/&nbsp;
                        <a href="mailto:aci@proderj.rj.gov.br">aci@proderj.rj.gov.br</a>
                    </span>
            </p>

            <p class="MsoNormal sub-titulo">Uerj</span></p>
                 <p class="MsoNormal indent"><span class="cargo-titulo">Diretoria da Comunicação</span>
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-0638/0239
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:comuns@uerj.br">comuns@uerj.br</a>
                        <a href="mailto:imprensa.comuns@gmail.com">imprensa.comuns@gmail.com</a>
            </p>

            
            <br />
            <hr>


            <p class="MsoNormal titulo" id="transporte">Secretaria de Estado de Transportes</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de Imprensa:</span><br />
                <span>Michelle&nbsp;Lorencini
                    <span class="glyphicon glyphicon-phone-alt"></span> 98077-6598
                </span>
            </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessoria:</span><br />
                    <span>Paula Fernandes
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2333-8639/8638 / 2333-8603 (R.225 e 226)&nbsp;
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:transportes.imprensa@gmail.com">transportes.imprensa@gmail.com</a></span><br />
                    <span>Plantão dos fins de semana e feriados
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;96548-8185
                    </span>
                </p>
 
                
<br />
<hr>


            <p class="MsoNormal titulo" id="vitimados">Secretaria de Estado de Vitimados</span></p>
                <p></p>
                 <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de Imprensa:</span><br />
                <span>Vanessa Andrade
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;(21) 99888-1119 / 96621-6949
                    <span class="glyphicon glyphicon-envelope"></span>
                    <a href="mailto:vanessamcandrade@gmail.com">&nbsp;vanessamcandrade@gmail.com</a>
                </span>
            </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessora de Imprensa: </span><br />
                    <span>Carolina
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;(21) 999214-7917
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:comunicacao.sevit@gmail.com">&nbsp;comunicacao.sevit@gmail.com</a>
                </span>
            </p>

            <br />
            <hr>

            <p class="MsoNormal titulo">Detro&nbsp;(Departamento de Transportes Rodoviários do Estado do Rio de Janeiro)</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Renata&nbsp;Grieco
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;3883-4142 / 98596-8515
                </span>
            </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessor:</span><br />
                <span>Renan Santiago
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;3883-4142 / 98596-8534
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:detro.imprensa@gmail.com">detro.imprensa@gmail.com</a>
                </span>
            </p>


<br />
<hr>

            <p class="MsoNormal titulo" id="sustentabilidade">Secretaria de Estado de Ambiente e Sustentabilidade</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Inni&nbsp;Vargas
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-5911/ 9444 / 99251-3554
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ascom.seasrj@gmail.com">ascom.seasrj@gmail.com</a> / 
                    <a href="mailto:ascom.ambiente@gmail.com">ascom.ambiente@gmail.com</a>
                </span>
            </p>
            <p class="MsoNormal indent"><span class="cargo-titulo">Assessor:</span><br />
                <span>Milene Ponce
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:milenepl@gmail.com">milenepl@gmail.com</a>
                </span>
            </p>

<p class="MsoNormal vinculados">Órgão Vinculado</span></p>

<p class="MsoNormal sub-titulo">Instituto Estadual do Ambiente (Inea)</span></p>
 <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br/>
        <span>Sandra Hoffmann
            <span class="glyphicon glyphicon-envelope"></span>&nbsp;
            <a href="mailto:sandrarhoffmann@gmail.com">sandrarhoffmann@gmail.com</a>
        </span><br />
        <span>Ana Paula Paiva
            <span class="glyphicon glyphicon-envelope"></span>&nbsp;
            <a href="mailto:anapaulainearj@gmail.com">anapaulainearj@gmail.com</a>
        </span>
    </p>

            <br />
            <hr>

            <p class="MsoNormal titulo" id="agricultura">Secretaria de Estado de Agricultura, Pecuária e&nbsp;Abastecimento</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de Imprensa:</span><br />
                <span>Elisa Motta
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;3601-5986 / 98798-2505
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ascom.agricultura.seappa@gmail.com">ascom.agricultura.seappa@gmail.com</a>/
					<a href="mailto:elisa.seapparj@gmail.com">elisa.seapparj@gmail.com</a>
                </span>
            </p>

            <p class="MsoNormal vinculados">Órgãos Vinculados</span></p>

     

            <p class="MsoNormal sub-titulo">Ceasa (Centrais de Abastecimento do Estado do Rio de Janeiro)</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br/>
                    <span>Elielton&nbsp;Gomes
                        <span class="glyphicon glyphicon-phone-alt"></span> 2333-8287 / 97675-6980
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:elieltongomes@gmail.com">elieltongomes@gmail.com</a>
                        <a href="mailto:ceasarj.comunicacao@gmail.com">ceasarj.comunicacao@gmail.com</a>
                    </span>
                </p>
            
            <br />
            <hr>
        
            <p class="MsoNormal titulo" id="cultura">Secretaria de Estado de Cultura e Economia Criativa</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadores de Imprensa:</span><br />
                    <span>Gabriel Saboia  
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2216-8500 (ramal:385) /&nbsp;(21) 99483-8907
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp; 
                        <a href="mailto:ascomcultura@gmail.com">ascomcultura@gmail.com</a><br />
                    </span>
                <span>Leonardo Barros 
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2216-8500 (ramal: 989) / (21) 96955-4507
                    </span>
            </p>

            <p class="MsoNormal vinculados">Órgãos Vinculados</span></p>
            <p class="MsoNormal sub-titulo">Fundação&nbsp;Theatro&nbsp;Municipal</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:&nbsp;</span><br />
                    <span>Camila Lamoglia     
                        <span class="glyphicon glyphicon-phone-alt"></span> 2216-8500 (ramal: 989)
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:camilalamoglia.@gmail.com">camilalamoglia.@gmail.com</a> / 
                        <a href="mailto:ascomteatromunicipal@gmail.com">ascomteatromunicipal@gmail.com</a>
                
                </span>
            </p>
            
            <br />
            <hr>

            <p class="MsoNormal titulo" id="direitos-humanos">Secretaria de Estado de Desenvolvimento Social e Direitos Humanos</span></p>
                <p></p>
            <p class="MsoNormal">
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp; (21) 2334-9507 / 99443-2876 
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:mv5027548@gmail.com">comunicacao.sedsdh@gmail.com</a><span>&nbsp;/&nbsp;
                    <a href="mailto:comunicacao@sedsdh.rj.gov.br">comunicacao@sedsdh.rj.gov.br</a>
                </span>
            </p><br />
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de comunicação:&nbsp;</span><br />
                <span>Rosayne&nbsp;Macedo&nbsp;</span>
            </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessor de imprensa:&nbsp;</span><br />
                <span>Vinicius&nbsp;Marins&nbsp;</span>
            </p>
            <br />
            <hr>

            <p class="MsoNormal titulo" id="esporte">Secretaria de Estado de Esporte, Lazer e&nbsp;Juventude</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de Comunicação e Atendimento à Imprensa:</span><br />
                <span>Patrícia Gualberto</span>
                <span class="glyphicon glyphicon-phone-alt"></span>&nbsp; (21) 99246-0657 / (24) 98836-9925
                <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:comunicacao.seelje@gmail.com">comunicacao.seelje@gmail.com</a>&nbsp;/&nbsp;
                </span>
            </p>

            <br />
            <hr>

            <p class="MsoNormal titulo" id="turismo">Secretaria de Estado de Turismo</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de Imprensa:</span><br />
                    <span>Priscilla&nbsp;Piffer&nbsp;
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;3803-9386 / 99116-6893
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:ascomturismorj@gmail.com">ascomturismorj@gmail.com</a>&nbsp;/&nbsp;
                        <a href="mailto:ppiffer@gmail.com">ppiffer@gmail.com</a>
                </span>
            </p>


            <br />
            <hr>
   

            <p class="MsoNormal titulo" id="cidades">Secretaria de Estado das Cidades</span></p>
<p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Aline Lopes
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2333-1714/ 99975-1911
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:imprensasecidrj@gmail.com">imprensasecidrj@gmail.com</a> / <a href="mailto:alinelopes@cidades.rj.gov.br">alinelopes@cidades.rj.gov.br</a>
                    </span>
                </p>

                <br />
                <hr>

            <p class="MsoNormal titulo" id="controladoria">Controladoria Geral do Estado</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                <span>Edmar Figueiredo
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2333-1809 / 99994-5600
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:efigueiredo@cge.rj.gov.br">efigueiredo@cge.rj.gov.br</a>
                </span>
            </p>
            
            <br />
            <hr>

            <p class="MsoNormal titulo" id="procuradoria">Procuradoria Geral do Estado</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Lara
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-7398 / 97950-4935
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:torresl@pge.rj.gov.br">torresl@pge.rj.gov.br</a>
                </span>
            </p>


            <br />
            <hr>

            <p class="MsoNormal titulo" id="defensoria">Defensoria Pública Geral do Estado</span></p>
                <p></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Débora Diniz
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-6134 / 97138-6227 / 99448-7438
                    </span>
                </p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                    <span>Valéria Rodrigues 
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-6191
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:imprensa.defensoriarj@gmail.com">imprensa.defensoriarj@gmail.com</a> / 
                        <a href="mailto:debora.defensoriarj@gmail.com">debora.defensoriarj@gmail.com</a>
                    </span>
                </p>
            

                <br />
                <hr>

            <p class="MsoNormal titulo" id="demais-orgaos">Demais órgãos</span></p>
                <p></p>

            <p class="MsoNormal sub-titulo">AgeRio (Agência de Fomento do Estado do Rio de Janeiro)</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                    <span>Luiz Eduardo Souza
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2333-1694 / 99803-7001 / 98596-6185
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:luizsouza@agerio.com.br">luizsouza@agerio.com.br</a> / 
                        <a href="mailto:gecom@agerio.com.br">gecom@agerio.com.br</a>
                    </span>
                </p>
                
            <p class="MsoNormal sub-titulo">AGENERSA – Agência Reguladora de energia e Saneamento Básico do Estado do Rio de Janeiro</span></p>
             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                <span>Ana Patrícia Mendonça
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;99008-7970 / 2332-6478
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:imprensa@agenersa.rj.gov.br">imprensa@agenersa.rj.gov.br</a> / 
                    <a href="mailto:apamendonca@gmail.com">apamendonca@gmail.com</a>
                </span>
            </p>

            <p class="MsoNormal sub-titulo">AGETRANSP (Agência Reguladora de Serviços Públicos Concedidos de Transportes Aquários, 
                    Ferroviários e Metroviários e de Rodovias do Estado do Rio de Janeiro)</span></p>

             <p class="MsoNormal indent"><span class="cargo-titulo">Coordenador de imprensa:</span><br />
                    <span>João Antônio Barros 
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-5489/5495/5445 /&nbsp;98762-4810
                        <a href="mailto:joantobarros@gmail.com" target="_blank">joantobarros@gmail.com</a>
                    </span>
                </p>

             <p class="MsoNormal indent"><span class="cargo-titulo">Assessores:</span><br />
                <span>Marcelo Bastos
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;98363-1142
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:marcelo.agetransp@gmail.com">marcelo.agetransp@gmail.com</a>
                </span><br />
                <span>Marcos Galvão
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;98888-4801
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:marcosgalvao2008@gmail.com">marcosgalvao2008@gmail.com</a><br />
                <span>Ana Lúcia Schneider 
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;&nbsp;99717-4433
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:ana.terzi@agetransp.rj.gov.br">ana.terzi@agetransp.rj.gov.br</a>
                </span>
            </p>

            <p class="MsoNormal sub-titulo">Câmara Metropolitana</span></p>
            <p class="MsoNormal indent">
                    <span>Amanda
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2334-3674
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:amanda.metropolitano@segov.rj.gov.br">amanda.metropolitano@segov.rj.gov.br</a>
                    </span>
                </p>

            <p class="MsoNormal sub-titulo">Cedae (Companhia Estadual de Águas e Esgotos)
                    </span></p>
            <p class="MsoNormal indent">
                    <span class="cargo-titulo">Coordenadora de imprensa:</span><br />
                    <span>Karen Russo 
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2332-3788/3901 / 98528-0068
                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                        <a href="mailto:karen-rodrigues@cedae.com.br">karen-rodrigues@cedae.com.br</a>
                        <a href="mailto:comunicacao@cedae.com.br">comunicacao@cedae.com.br</a>
                    </span><br />
                    <span>Plantão
                        <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;98528-0032
                    </span>
                    </span>
                </p>

            <p class="MsoNormal sub-titulo">IVB (Instituto Vital&nbsp;Brazil)</span></p>
                <p class="MsoNormal indent">
                    <span>Taís Marini
                    <span class="glyphicon glyphicon-phone-alt"></span>&nbsp;2711-9223 (Ramal:187) / 99662-2965 / 98596-6823
                    <span class="glyphicon glyphicon-envelope"></span>&nbsp;
                    <a href="mailto:comunicacao@vitalbrazil.rj.gov.br">comunicacao@vitalbrazil.rj.gov.br</a>
                    <a href="mailto:comunicavitalbrazil@gmail.com">comunicavitalbrazil@gmail.com</a>
                </span>
            </p>






            <!-- /ROW -->
        </div>
        </div>
    </section>






    </div>


    <!--FOOTER-->
    <uc3:CrtRodape ID="CrtRodape1" runat="server" />
    <!--Fecha FOOTER-->
</form>