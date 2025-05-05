# Forum - Phoenix REST API

A modern RESTful API for forum discussions built with [Elixir](https://elixir-lang.org/) and the [Phoenix Framework](https://www.phoenixframework.org/).

![Phoenix Framework](https://hexdocs.pm/phoenix/assets/logo.png)

## Features

- Complete user management system
- Post creation and management
- RESTful API design principles
- PostgreSQL database for reliable data storage
- Containerized with Docker for easy setup and deployment

## API Endpoints

### Users
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET    | `/api/users` | List all users |
| GET    | `/api/users/:id` | Get user details (includes all posts by that user) |
| POST   | `/api/users` | Create a new user |

### Posts
| Method | Endpoint | Description |
|--------|----------|-------------|
| GET    | `/api/posts` | List all posts |
| GET    | `/api/posts/:id` | Get details of a specific post |
| POST   | `/api/posts` | Create a new post |
| PUT    | `/api/posts/:id` | Update an existing post |

## Getting Started

### Prerequisites

- [Elixir](https://elixir-lang.org/install.html) (1.14 or later)
- [Phoenix Framework](https://hexdocs.pm/phoenix/installation.html)
- [PostgreSQL](https://www.postgresql.org/download/)
- [Docker](https://www.docker.com/get-started/) (optional, for containerized setup)

### Traditional Setup

1. Clone the repository
   ```bash
   git clone https://github.com/forum-api/forum.git
   cd forum
   ```

2. Install dependencies
   ```bash
   mix setup
   ```

3. Configure your database in `config/dev.exs` (if not using Docker)

4. Set up the database
   ```bash
   mix ecto.setup
   ```

5. Start the Phoenix server
   ```bash
   mix phx.server
   ```

6. Visit [`localhost:4000`](http://localhost:4000) in your browser

### Docker Setup (Recommended)

1. Clone the repository
   ```bash
   git clone https://github.com/yourusername/forum.git
   cd forum
   ```

2. Start the application with Docker Compose
   ```bash
   docker-compose up
   ```

3. The API will be available at [`localhost:4000`](http://localhost:4000)

## Development

### Running Tests
```bash
mix test
```

### Interactive Elixir Shell
```bash
iex -S mix
```

## Project Structure

- `lib/forum/` - Core application logic
- `lib/forum_web/` - Web-related modules (controllers, views, etc.)
- `priv/repo/migrations/` - Database migrations
- `test/` - Test files

## Technologies

- **Elixir** - Functional programming language
- **Phoenix Framework** - Web framework for Elixir
- **PostgreSQL** - Relational database
- **Docker** - Containerization platform

## Learning Resources

This project is based on the tutorial [Phoenix Framework REST API Crash Course](https://www.youtube.com/watch?v=9xaN44PNxps).

Additional resources:
- [Phoenix Documentation](https://hexdocs.pm/phoenix/overview.html)
- [Elixir Documentation](https://elixir-lang.org/docs.html)
- [Ecto Documentation](https://hexdocs.pm/ecto/Ecto.html) (Phoenix's database library)

## License

This project is licensed under the MIT License - see the LICENSE file for details.
