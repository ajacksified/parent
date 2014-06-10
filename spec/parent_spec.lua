local parent = require 'parent'

describe('parent', function()
  it('returns the proper string for 0', function()
    assert.are.equal(parent(0), '@')
  end)

  it('returns the proper string for 1', function()
    assert.are.equal(parent(1), '@@parent')
  end)

  it('returns the proper string for 2', function()
    assert.are.equal(parent(2), '@@@grandparent')
  end)

  it('returns the proper string for 3', function()
    assert.are.equal(parent(3), '@@@@greatgrandparent')
  end)

  it('returns the proper string for 4', function()
    assert.are.equal(parent(4), '@@@@@greatgreatgrandparent')
  end)
end)
