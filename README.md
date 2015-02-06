# thesis

## Lumines-regler

Lumines är ett tetrisinspirerat pusselspel. Spelaren får en sekvens av 2x2-block där varje ruta är en av två färger. Spelet handlar om att bygga 2x2-block av samma färg. Blocken kan dela på rutor, alltså innehåller ett 2x3-block två 2x2-block inom sig.

I takt med spelmusiken går en linje genom spelplanen och “suger upp” de byggda 2x2-blocken. Detta kan förenklas genom att säga att man får placera __K__ block i följd innan 2x2-blocken räknas.

En till förenkling (se tetris-avhandling) är att anta att spelaren vet alla block som kommer i förväg. Ingen begränsning på hur fort spelaren kan rotera blocken ställs heller.

## Möjliga frågeställningar

* Maximera poäng (antalet byggda 2x2-block om inte bonusar räknas in)
    * Beslutsproblem: kan minst K poäng uppnås?
* Maximera spelade block innan slut
    * Beslutsproblem: Kan spelaren vara vid liv efter minst K block?
* Minimera höjden på den högsta stapeln efter en viss sekvens av block
    * Beslutsproblem: Har alla staplar högst höjd K efter sekvens?

## Övrigt

* Approximering (avgörbart?)
* Heuristik

## Avgränsningar

* Spelaren vet alla block i förväg (offline, se tetris)
   * Utvidgning: K-lookahead
* Spelaren kan genomföra hur många rotationer och translationer som helst
   * Utvidgning: blocket faller, spelaren hinner bara göra vissa rotationer
* Spelaren kan bara placera ett 2x2-block innan blocken på spelplanen räknas (ryms i "hur många som helst")
   * Utvigdning: Spelaren kan placera K st block i taget
   * Ännu svårare: Markören förflyttar sig som i spelet, vissa block räknas tidigare än andra
   * Alternativ: spelaren kan placera hur många block som helst innan de räknas (troligen enklast beräkningsmässigt)
* Inga bonuspoäng, ingen super-ruta
