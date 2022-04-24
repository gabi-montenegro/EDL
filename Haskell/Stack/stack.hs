module Stack (Stack, emptyStack, push, pop, top, size,
	      listToStack, isElement, mapStack, reverseStack,
	      partitionStack) where

import List
import Maybe

data Stack a = St [a]

listToStack  = St
emptyStack   = St []
push (St s)  = St . (flip (:)) s
mapStack f   = St . map f . stackToList
reverseStack = St . reverse . stackToList
isElement s  = isJust . (flip find) (stackToList s) . (==)
isEmpty      = null   . stackToList
top          = head   . stackToList
size         = length . stackToList

pop (St (h:t)) = (h, St t)
pop _          = error "Attempt to pop an empty stack."

partitionStack f (St s)
    = (\(a1, a2) -> (St a1, St a2)) $ partition f s

-- Helper function:
stackToList :: Stack a -> [a]
stackToList (St s) = s