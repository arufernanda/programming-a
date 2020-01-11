package specs

import (
	"exercises/internal/conditionals"
	"github.com/stretchr/testify/assert"
	"testing"
)

func TestSum(t *testing.T) {
	assert.Equal(t, 3, conditionals.Sum(1, 2), "two sum two equal three")
}
