# Automatically generated on 2015-03-30T09:46:32-07:00
# DO NOT EDIT or your changes may be overwritten
        
require 'xdr'

module Stellar
  class CurrencyType < XDR::Enum
    member :native,  0
    member :iso4217, 1

    seal
  end
end