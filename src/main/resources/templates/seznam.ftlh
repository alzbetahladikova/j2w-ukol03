[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
[#list vizitky]
    [#items as vizitka]

<div class="seznam">
    <!--
    <a href="/detail">
        <div class="vizitka">
            <div class="jmeno">Dita (Přikrylová) Formánková</div>
            <div class="firma">Czechitas z. s.</div>
            <div class="udaje">
                <div class="adresa">
                    <div>Václavské náměstí 837/11</div>
                    <div><span>11000</span> Praha 1</div>
                </div>
                <div class="kontakty">
                    <div><i class="las la-at"></i> <span>dita@czechitas.cs</span></div>
                    <div><i class="las la-phone-alt"></i> <span>+420 800123456</span></div>
                    <div><i class="las la-globe"></i> <span>www.czechitas.cz</span></div>
                </div>
            </div>
        </div>
    </a>

    <a href="/detail">
        <div class="vizitka">
            <div class="jmeno">Barbora Bühnová</div>
            <div class="firma">Czechitas z. s.</div>
            <div class="udaje">
                <div class="adresa">
                    <div>Václavské náměstí 837/11</div>
                    <div><span>11000</span> Praha 1</div>
                </div>
                <div class="kontakty">
                    <div><i class="las la-phone-alt"></i> <span>+420 800123456</span></div>
                    <div><i class="las la-globe"></i> <span>www.czechitas.cz</span></div>
                </div>
            </div>
        </div>
    </a>

    <a href="/detail">
        <div class="vizitka">
            <div class="jmeno">Monika Ptáčníková</div>
            <div class="firma">Czechitas z. s.</div>
            <div class="udaje">
                <div class="adresa">
                    <div>Václavské náměstí 837/11</div>
                    <div><span>11000</span> Praha 1</div>
                </div>
                <div class="kontakty">
                    <div><i class="las la-at"></i> <span>monika@czechitas.cs</span></div>
                    <div><i class="las la-phone-alt"></i> <span>+420 800123456</span></div>
                    <div><i class="las la-globe"></i> <span>www.czechitas.cz</span></div>
                </div>
            </div>
        </div>
    </a>

    <a href="/detail">
        <div class="vizitka">
            <div class="jmeno">Mirka Zatloukalová</div>
            <div class="firma">Czechitas z. s.</div>
            <div class="udaje">
                <div class="adresa">
                    <div>Václavské náměstí 837/11</div>
                    <div><span>11000</span> Praha 1</div>
                </div>
                <div class="kontakty">
                    <div><i class="las la-at"></i> <span>mirka@czechitas.cs</span></div>
                    <div><i class="las la-globe"></i> <span>www.czechitas.cz</span></div>
                </div>
            </div>
        </div>
    </a>
</div>
-->
        <a href="/detail/${vizitka?index}">
            <div class="vizitka">
                <div class="jmeno">${vizitka.jmeno}</div>
                <div class="firma">${(vizitka.firma)!"-"}</div>
                <div class="udaje">
                    <div class="adresa">
                        <div>${vizitka.ulice}</div>
                        <div><span>${vizitka.obecPsc}</span></div>
                    </div>
                    <div class="kontakty">
                        <div><i class="las la-at"></i> <span>${vizitka.email}</span></div>
                        <div><i class="las la-phone-alt"></i> <span>${vizitka.telefon}</span></div>
                        <div><i class="las la-globe"></i> <span>${vizitka.web}</span></div>
                    </div>
                </div>
            </div>
        </a>

    [/#items]
[#else]
    <div>
      <strong> Pusto prázdno. Není tu žádná vizika.</strong>
    </div>
[/#list]

</body>
</html>
