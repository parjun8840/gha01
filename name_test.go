package main
import "testing"

func TestSum(t *testing.T) {
  tables := []struct {
    x int
    y int
    n int
  }{
    {1, 1, 2},
    {1, 2, 3},
    {2, 2, 4},
    {5, 2, 7},
  }

  for _, table := range tables {
    total := Sum(table.x, table.y)
    if total != table.n {
      t.Errorf("Sum of (%d+%d) was incorrect, got: %d, want: %d.", table.x, table.y, total, table.n)
    }
  }
}

type testCase struct {
    arg1 int
    arg2 int
    want int
}

func TestMultiply(t *testing.T) {
    cases := []testCase{
        {2, 3, 6},
        {10, 5, 50},
        {-8, -3, 24},
        {0, 9, 0},
        {-7, 6, -42},
    }

    for _, tc := range cases {
        got := Multiply(tc.arg1, tc.arg2)
        if tc.want != got {
            t.Errorf("Expected '%d', but got '%d'", tc.want, got)
        }
    }
}
