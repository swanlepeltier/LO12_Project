(defrule regle-1
  (achat beurre)
  =>
  (assert (achat confiture))
  (printout t "Règle activée : beurre => confiture" crlf))

(defrule regle-2
  (achat confiture)
  =>
  (assert (achat beurre))
  (printout t "Règle activée : confiture => beurre" crlf))

(defrule regle-3
  (achat beurre)
  =>
  (assert (achat pain))
  (printout t "Règle activée : beurre => pain" crlf))

(defrule regle-4
  (achat confiture)
  =>
  (assert (achat pain))
  (printout t "Règle activée : confiture => pain" crlf))

(deffacts cas-test
  (achat beurre)
