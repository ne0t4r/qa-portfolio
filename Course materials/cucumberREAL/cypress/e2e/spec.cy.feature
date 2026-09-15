Feature: Testujem filtrovanie na podstranke www.localhost:4200/pages/tables/smart-table/

Scenario: Overujem funkcnost kategorie Smart Table
  Given Testovanie funkcnosti podstranky 'Smart Table'
  When Otestovanie funkcnost miest na v pisovanie z hladiska hodnot
  When Otestovanie mazania textu z miest pre vpisovanie
  When Otestovanie funkcnosti pridania novej osoby
  When Otestovanie funkcnosti odstranenia osoby
  When Otestovanie funkcnosti editacie zaznamu
  When Otestovanie funkcnosti filtrovania cez vsetky filtre
  Then Otestovanie funkcnosti buttonov v spodnej casti na strankovanie