
(* Bonus: Dowód że paradoksu barowego (bez ograniczania się do isProp, typów decydowalnych, więc nie dokońca tekigo jak oryginał) nie da się odwzorować w HoTT 
https://en.wikipedia.org/wiki/Drinker_paradox *)

Require Import HoTT.

Definition dowód: (forall Ziomek: Type,
                      (forall ZiomekPije: Ziomek -> Type,
                          ((exists x: Ziomek, ZiomekPije x)
                           -> (forall y: Ziomek, ZiomekPije y))))
                  -> Empty :=
  let pijeAleTylkoCzasem: Bool -> Type := fun b => match b with
                                                   | true => Unit
                                                   | false => Empty
                                                   end
  in fun jedenPijeWszyscyPiją =>
       jedenPijeWszyscyPiją Bool pijeAleTylkoCzasem (true; tt) false.
