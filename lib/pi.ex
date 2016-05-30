defmodule Pi do
  def compute(bound) do
    :math.sqrt(12.0) * Enum.sum( for k <- 0..bound, do: ( :math.pow(-1/3, k) / ( 2*k + 1 ) ) )
  end

  def compute2(bound) do
    # a=13591409
    # b=545140134
    # c=649320
    # sum = 12*Enum.sum( for k <- 0..bound do
    #   n1 = :math.pow(-1, k)
    #   n2 = factorial(6*k)
    #   n3 = a+b*k
    #   d1 = factorial(3*k)
    #   d2 = :math.pow(factorial(k), 3)
    #   d3 = :math.pow(c, 3*k + 3/2)
    #   ((n1*n2*n3) / (d1*d2*d3))
    # end )
    # 1/sum
    4*Enum.sum( for k <- 1..bound, do: :math.pow(-1, k+1)/(2*k - 1) )
  end

  def factorial(0), do: 1
  def factorial(n), do: n*factorial(n-1)
end
