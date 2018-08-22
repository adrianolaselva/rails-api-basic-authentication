# Exemplo api rails com basic authentication

```sh
curl -X GET \
  http://localhost:3000/posts/1 \
  -H 'Authorization: Basic dXNlckBleGFtcGxlLmNvbTpwYXNzd29yZA=='
```

```json
{
    "post": {
        "id": 1
    }
}
```

```sh
curl -X GET \
  http://localhost:3000/posts/1
```

```json
{
    "error": "Incorrect credentials"
}
```