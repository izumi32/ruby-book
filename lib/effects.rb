module Effects

  def self.reverse
    ->(words) do
      words.split(" ").map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    ->(words) do
      # words.split(" ").map { |str| str.chars.map { |s| s * n }.join }.join(" ")
      words.chars.map { |s| s == ' ' ? s : s * rate }.join
    end
  end
end
