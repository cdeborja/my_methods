def my_rotate(idx)
  idx.times do
    move_me = self.shift
    self << move_me
  end
end
