#!/usr/bin/env bats

@test "It should use Node v6.2.0" {
  node -v | grep 6.2.0
}

@test "It should install npm" {
  which npm
}
