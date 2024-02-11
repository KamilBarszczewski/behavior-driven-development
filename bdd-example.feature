Feature: Proces wyszukiana produktu i jego zakup w sklepie Media Expert

Background:
    Użytkownik zalogował się na swoje konto na stronie Media Expert

Scenario: Wyszukiwanie produktu
    Given Użytkownik znajduje sę na stronie głównej wybranego sklepu
    When Użytkownik wyszukuje produkt o nazwie "Smartwatch"
    And Użytkownik wybiera checkbox "Dostępność: Dostępny natychmiast"
    And Użytkownik wybiera checkbox "Marka: Garmin"
    And Użytkownik klika przycisk "Zastosuj filtry"
    Then Użytkownik otrzymuje wyniki wyszukiwania

Scenario: Dodawanie produktu do koszyka
    Given Użytkownik wyświetla wynik wyszukiwania
    When Użytkownik klika wybrany produkt
    And Użytkownik wybiera ilość produktu do zakupu
    And Użytkownik dodaje produkt do koszyka
    Then Produkt jest dodany do koszyka

Scenario: Przechodzenie przez proces zamówienia
    Given Użytkownik przegląda zawartość koszyka
    When Użytkownik klika przycisk "Dalej
    And Użytkownik wybiera formę dostawy
    And Użytkownik wybiera formę płatności
    And Użytkownik potwierdza zamówienie, klikając przycisk "Złóż zamówienie"
    Then Zamówienie zostaje złożone

Scenario: Walidacja zakupu
    Given Użytkownik otrzymuje potwierdzenie zamówienia
    When Użytkownik sprawdza szczegóły zamówienia: (numer zamówienia, planowana data dostawy)
    And Użytkownik potwierdza poprawność informacji o produkcie, ilości, cenie i dostawie są poprawne
    Then Zakup jest zwalidowany


