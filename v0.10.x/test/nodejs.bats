#!/usr/bin/env bats

@test "It should use Node v0.10.38" {
  node -v | grep 0.10.38
}

@test "It should install npm" {
  which npm
}
