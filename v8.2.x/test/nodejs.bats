#!/usr/bin/env bats

@test "It should use Node v8.2.1" {
  node -v | grep 8.2.1
}

@test "It should install npm" {
  which npm
}
