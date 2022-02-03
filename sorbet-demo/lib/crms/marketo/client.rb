# typed: strict
require "mrkt"

class Crms::Marketo::Client
  extend T::Sig

  class Error < StandardError; end
  class AuthenticationError < Error; end
  class ConnectionError < Error; end
  class EntityNotFoundError < Error; end

  # sig do
  #   params(
  #     client_id: String,
  #     client_secret: String,
  #     hostname: String,
  #   )
  #     .void
  # end

  def initialize(client_id:, client_secret:, hostname:)
    @client_id = client_id
    @client_secret = client_secret
    @hostname = hostname
  end

  sig { returns(T::Boolean) }

  def valid_credentials?
    client.authenticate!
    true
  rescue Faraday::ConnectionFailed, Mrkt::Errors::Error
    false
  end

  # Creates or updates a lead on marketo, using email as lookup key
  sig do
    params(
      email: String,
      firstname: String,
      lastname: String,
    )
      .returns({ id: String, status: String, success: String })
  end

  def upsert_lead(email, firstname, lastname)
    with_wrapped_errors do
      response = client.createupdate_leads(
        [
          { email: email, firstName: firstname, lastName: lastname },
        ],
        lookup_field: :email,
      )

      result = response[:result].first
      {
        id: result[:id],
        status: result[:status],
        success: response[:success],
      }
    end
  end

  sig do
    params(
      program_id: String,
      lead_id: String,
      status: String,
    )
      .returns({ status: String, success: String })
  end

  def upsert_program_member(program_id, lead_id, status)
    with_wrapped_errors do
      response = client.createupdate_program_members(program_id, [lead_id], status)
      # TODO: Not sure if we want to raise or return success = false
      result = response[:result].first
      {
        status: result[:status],
        success: response[:success],
      }
    end
  end

  sig do
    params(id: String)
      .returns(
        T.nilable(
          {
            id: String,
            email: String,
            firstname: String,
            lastname: String,
          }
        )
      )
  end

  def get_lead(id)
    with_wrapped_errors do
      response = client.get_lead_by_id(id)

      result = response[:result].first
      return unless result

      {
        id: result[:id],
        email: result[:email],
        firstname: result[:firstName],
        lastname: result[:lastName],
      }
    end
  end

  sig { returns(T::Array[{ id: String, name: String }]) }

  def list_programs
    with_wrapped_errors do
      response = client.browse_programs

      result = response[:result]
      result.map { |program| program.slice(:id, :name) }
    end
  end

  private

  sig do
    returns(Mrkt::Client)
  end

  def client
    @client = T.let(@client, T.nilable(Mrkt::Client))

    @client ||= ::Mrkt::Client.new(
      host: @hostname,
      client_id: @client_id,
      client_secret: @client_secret,
      retry_authentication: true,
      retry_authentication_count: 3,
      retry_authentication_wait_seconds: 1,
    )
  end

  sig { params(blk: T.untyped).returns(T.untyped) }

  def with_wrapped_errors(&blk)
    yield
  rescue Mrkt::Errors::ObjectNotFound => e
    raise EntityNotFoundError, e
  rescue Mrkt::Errors::Error => e
    raise AuthenticationError, e
  rescue Faraday::ConnectionFailed => e
    raise ConnectionError, e
  end
end
