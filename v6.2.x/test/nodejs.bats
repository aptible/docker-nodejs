#!/usr/bin/env bats

@test "It should use Node v6.2.2" {
  node -v | grep 6.2.2
}

@test "It should install npm" {
  which npm
}
