# Automatically generated on 2015-03-30T09:46:31-07:00
# DO NOT EDIT or your changes may be overwritten
        
require 'xdr'

module Stellar
  class StellarMessage < XDR::Union
    switch_on MessageType, :type

    switch :error_msg,         :error
    switch :hello,             :hello
    switch :dont_have,         :dont_have
    switch :get_peers
    switch :peers,             :peers
    switch :get_tx_set,        :tx_set_hash
    switch :tx_set,            :tx_set
    switch :get_validations,   :ledger_hash
    switch :validations,       :validations
    switch :transaction,       :transaction
    switch :get_scp_quorumset, :q_set_hash
    switch :scp_quorumset,     :q_set
    switch :scp_message,       :envelope

    attribute :error,       Error
    attribute :hello,       Hello
    attribute :dont_have,   DontHave
    attribute :peers,       XDR::VarArray[PeerAddress]
    attribute :tx_set_hash, Uint256
    attribute :tx_set,      TransactionSet
    attribute :ledger_hash, Uint256
    attribute :validations, XDR::VarArray[SCPEnvelope]
    attribute :transaction, TransactionEnvelope
    attribute :q_set_hash,  Uint256
    attribute :q_set,       SCPQuorumSet
    attribute :envelope,    SCPEnvelope
  end
end