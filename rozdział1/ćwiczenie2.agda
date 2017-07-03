{-# OPTIONS --without-K --rewriting #-}

module rozdział1.ćwiczenie2 where

open import HoTT

-- Tylko dla Σ bo nie wiem jak się robi zwykłe pary, musiałbym sam definiować

module Σ-Rec {i j k}{A : Type i}{B : A → Type j}{C : Type k}
             (d : (x : A) → (B x) → C) where
  Σ-rec : Σ A B → C
  Σ-rec p = d (fst p) (snd p)

  Σ-rec-jest-git : (x : A)(y : B x) → Σ-rec (x , y) == d x y
  Σ-rec-jest-git x y = idp
             
