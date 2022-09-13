# AnyStyle-Api

A very minimal Sinatra Ruby API server implementation of AnyStyle Gem to parse
academic reference texts into CSL-JSON.

## Development

clone this repo

```bash
  git clone https://github.com/kurdi-dev/anystyle-api.git
```

install the required Gems from the Gemfile

```bash
  bundle install
```

Spin up the server

```bash
  ruby server.rb
```

## API Reference

#### Parse reference text

```http
  GET /api/v1/parse
```

| Parameter | Type     | Description                                                  |
| :-------- | :------- | :----------------------------------------------------------- |
| `text`    | `string` | **Required**. reference text to be parsed into a json object |

## Contributing

Contributions are always welcome!

## License

[MIT](https://choosealicense.com/licenses/mit/)
