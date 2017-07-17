#!/usr/bin/env bats

@test "It should use Node v8.1.4" {
  node -v | grep 8.1.4
}

@test "It should install npm" {
  which npm
}
