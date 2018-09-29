# Containers 0.6.0.1 bug demo

Run:

```
$ nix-shell --run "cabal new-run containers-bug"
<…>

demonstrates a bug FAILED [1]

Failures:

  app/Main.hs:37:7:
  1) demonstrates a bug
       Falsifiable (after 5 tests and 1 shrink):
         [SpeakerBackRight,SpeakerBackLeft]
       expected: fromList [SpeakerBackLeft,SpeakerBackRight]
        but got: fromList [SpeakerBackRight,SpeakerBackLeft]

  To rerun use: --match "/demonstrates a bug/"

Randomized with seed 734218656

Finished in 0.0007 seconds
1 example, 1 failure
```
