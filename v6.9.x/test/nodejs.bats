#!/usr/bin/env bats

@test "It should use Node v6.9.0" {
  node -v | grep 6.9.0
}

@test "It should install npm" {
  which npm
}
