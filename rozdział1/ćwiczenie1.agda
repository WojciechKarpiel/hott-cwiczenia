{-# OPTIONS --without-K --rewriting #-}

module rozdział1.ćwiczenie1 where

open import HoTT


_o_ : ∀ {i j k} {A : Set i}{B : Set j}{C : Set k}
  → (B → C)
  → (A → B)
  → (A → C)
g o f =  λ x → g (f x)


o-assoc : ∀ {i j k l} {A : Type i}{B : Type j}{C : Type k}{D : Type l}
        → (h : C → D)(g : B → C)(f : A → B)
        → (h o (g o f)) == ((h o g) o f)
o-assoc f g h = idp
