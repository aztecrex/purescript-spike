module Test.Main where

import Prelude
import Control.Monad.Eff (Eff)
import Test.Assert (assert, ASSERT)

import Euler (answer)

main :: forall t1.
      Eff
        ( assert :: ASSERT
        | t1
        )
        Unit
main = do
  assert (answer == 233168)
