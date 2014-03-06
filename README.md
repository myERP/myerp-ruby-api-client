# myERP API


The myERP API gem allows Ruby developers to programmatically access the data of myERP accounts.

The API is implemented as JSON over HTTP using all four verbs (GET/POST/PUT/DELETE). Each resource, like Account, Item, or Order, has its own URL and is manipulated in isolation. In other words, we’ve tried to make the API follow the REST principles as much as possible.

For more information and detailed documentation about the API visit http://developers.myerp.com

## Installation

To easily install or upgrade to the latest release, use [gem](http://rubygems.org/)

    gem install myerp_api

## Getting Started

The myERP API uses ActiveResource to communicate with the REST web service.

- 1 - Retrieve your API_KEY and your API_EMAIL from the API settings. More information [here](http://developers.myerp.com/docs/1.0/overview/security_authentication.html).

- 2 - Initiate the client by:

```ruby
client = MyERP.client('API_EMAIL', 'API_KEY')
```
- 3 - Now you're ready to make authorized API requests to your domain! Data is returned as hashes:

```ruby
# Retrieve all customers and leads
puts client.customers.all

# Get a specific customer/lead
puts client.customers.find(261367)

# Create a customer
customer = MyERP::Customer.new
customer.type = 2 #individual
customer.status = 1 #customer
customer.first_name = "John"
customer.last_name = "Doe"
customer.email = "john.doe@mail.com"

customer = client.customers.save(customer)
puts "#{customer.full_name} created [id=#{customer.id}]"

# Update some fields
customer.first_name = "Jane"
customer = client.customers.save(customer)
puts "#{customer.full_name} updated [id=#{customer.id}]"

# Delete a customer
customer = client.customers.delete(customer)
puts "#{customer.full_name} deleted [id=#{customer.id}]"

# Bulk creation/modification
customers = client.customers.bulkSave([customer, customer2])
puts customers

# Bulk deletion
customers = client.customers.delete([customer, customer2])
puts customers
```

## Contributing

Thanks for considering contributing to this project.

### Finding something to do

Ask, or pick an issue and comment on it announcing your desire to work on it. Ideally wait until we assign it to you to minimize work duplication.

### Reporting an issue

- Search existing issues before raising a new one.

- Include as much detail as possible.

### Pull requests

- Make it clear in the issue tracker what you are working on, so that someone else doesn't duplicate the work.

- Use a feature branch, not master.

- Rebase your feature branch onto origin/master before raising the PR.

- Keep up to date with changes in master so your PR is easy to merge.

- Be descriptive in your PR message: what is it for, why is it needed, etc.

- Make sure the tests pass

- Squash related commits as much as possible.

### Coding style

- Try to match the existing indent style.

- Don't abuse the pre-processor.

- Don't mix platform-specific stuff into the main code.


## License

The myERP API gem is released under the [MIT License](http://www.opensource.org/licenses/MIT).
