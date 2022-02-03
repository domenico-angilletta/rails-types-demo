# typed: true
#
# mrkt-1.2.1

class Mrkt::Client
  sig do
    params(
      host: String,
      client_id: String,
      client_secret: String,
      retry_authentication: T::Boolean,
      retry_authentication_count: Integer,
      retry_authentication_wait_seconds: Integer,
    )
      .void
  end

  def initialize(
    host:,
    client_id:,
    client_secret:,
    retry_authentication:,
    retry_authentication_count:,
    retry_authentication_wait_seconds:
  ); end

  sig do
    returns(
      { result: T::Array[{ id: String, name: String }] }
    )
  end

  def browse_programs; end

  sig do
    params(
      program_id: String,
      lead_ids: T::Array[String],
      status: String,
    )
      .returns(
        {
          result: T::Array[{ status: String, success: String }],
        }
      )
  end

  def createupdate_program_members(program_id, lead_ids, status); end

  sig do
    params(
      id: String,
    )
      .returns(
        {
          result: T::Array[{ id: String, email: String, firstName: String, lastName: String }],
        }
      )
  end

  def get_lead_by_id(id); end

  sig do
    params(
      leads: T::Array[{ email: String, firstName: String, lastName: String }],
      lookup_field: Symbol,
    )
      .returns(
        {
          result: T::Array[{ id: String, status: String, success: String }],
        }
      )
  end

  def createupdate_leads(leads, lookup_field:); end

  sig { returns(T::Boolean) }

  def authenticate!; end
end
