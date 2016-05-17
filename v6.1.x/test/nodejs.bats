#!/usr/bin/env bats

@test "It should use Node v6.1.0" {
  node -v | grep 6.1.0
}

@test "It should install npm" {
  which npm
}
