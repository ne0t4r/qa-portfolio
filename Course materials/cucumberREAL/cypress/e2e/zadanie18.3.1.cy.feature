Feature: Testovanie funkcionality stranky https://www.dovoznakupov.sk a zakupenie lubovolneho poctu produktov

Scenario: Overovanie funkcionality stranky
  Given Otestovanie správneho zobrazenia stránky
  When Otestovanie správneho prijatia súborov cookie
  When Otestovanie správneho zobrazenia telefónneho čísla v hlavičke domovskej stránky
  When Otestovanie funkčnosti, zobrazenia a obsahu tlačidiel v hlavičke stránky pre 'Otváracie hodiny', 'Dôležité informácie' a 'Možnosti a ceny doručenia'
  When Otestovanie funkcionality filtrovania po vyhľadaní produktov
  When Otestovanie pridania produktov z každej kategórie do nákupného košíka
  When Otestovanie správneho pridávania produktov do nákupného košíka
  When Otestovanie funkčnosti nákupného košíka
  Then Otestovanie funkčnosti registračného formuláru