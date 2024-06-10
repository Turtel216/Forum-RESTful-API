# Forum

## About 

This is a simple implementation of a forum RESTful-API using [Elixir](https://elixir-lang.org/) and the [phoenix framework](https://www.phoenixframework.org/).
This project is based on the Tutorial [Phoenix Framework REST API Crash Course - Introduction + Full Elixir API Tutorial](https://www.youtube.com/watch?v=9xaN44PNxps&t=2163s)

## API 

The created api has the following endpoints:

  * GET api/users
  * GET api/users:id (Also returns all the posts made by that user)
  * POST api/users 
  * GET api/posts 
  * GET api/posts/:id 
  * POST api/posts 
  * PUT api/posts 

## Getting started

To start the Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

**Note**: To run the server a postgresql server must be running
