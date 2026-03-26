package model

import "testing"

func TestUser(T *testing.T) *User {
	return &User{
		Email:    "user@example.org",
		Password: "password",
	}
}
