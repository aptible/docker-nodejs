#!/usr/bin/env bats

@test "It should use Node v4.0.0" {
  node -v | grep 4.0.0
}

@test "It should install npm" {
  which npm
}
