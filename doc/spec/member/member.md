# Member API Spec

## Find All Member
GET /api/member

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": [
    {
      "id": "04a92d43-c8ae-4548-8ecc-104ec47cc577"
      "short_name": "Ella",
      "full_name": "Gabriela Abigail",
      "generation": 10,
      "birth_date": "07-08-2006",
      "jikoshoukai": "Ohayo! Konnichiwa! Oyasumi! Aku ingin ada di setiap harimu. Hai, Aku Ella!",
      "kabesha_image": "https://jkt48lab.safatanc.com/image/kabesha/ella.png",
      "social_media": [
        {
          "code": "instagram",
          "name": "Instagram",
          "url": "https://www.instagram.com/jkt48.ella.a/",
          "followers": 539000
        },
        ...
      ],
      "status": "active",
      "join_date": "18-12-2021",
      "graduate_date": null,
      "lastshow_date": null,
      "created_at": 1710862121,
      "updated_at": 1710862121
    },
    ...
  ]
}
```

## Find Member by Short Name
GET /api/member/:short_name

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": {
    "id": "04a92d43-c8ae-4548-8ecc-104ec47cc577"
    "short_name": "Ella",
    "full_name": "Gabriela Abigail",
    "generation": 10,
    "birth_date": "07-08-2006",
    "jikoshoukai": "Ohayo! Konnichiwa! Oyasumi! Aku ingin ada di setiap harimu. Hai, Aku Ella!",
    "kabesha_image": "https://jkt48lab.safatanc.com/image/kabesha/ella.png",
    "social_media": [
      {
        "code": "instagram",
        "name": "Instagram",
        "url": "https://www.instagram.com/jkt48.ella.a/",
        "followers": 539000
      },
      ...
    ],
    "status": "active",
    "join_date": "18-12-2021",
    "graduate_date": null,
    "lastshow_date": null,
    "created_at": 1710862121,
    "updated_at": 1710862121
  }
}
```

Example Error Response (404 Not Found)
```
{
  "status": 404,
  "error": "member with short_name ellayy not found",
  "data": null
}
```

## Add Member
POST /api/member

Example Request
```
{
  "short_name": "Ella",
  "full_name": "Gabriela Abigail",
  "generation": 10,
  "birth_date": "07-08-2006",
  "jikoshoukai": "Ohayo! Konnichiwa! Oyasumi! Aku ingin ada di setiap harimu. Hai, Aku Ella!",
  "kabesha_image": "https://jkt48lab.safatanc.com/image/kabesha/ella.png",
  "social_media": [
    {
      "code": "instagram",
      "name": "Instagram",
      "url": "https://www.instagram.com/jkt48.ella.a/",
      "followers": 539000
    },
    ...
  ],
  "status": "active",
  "join_date": "18-12-2021",
  "graduate_date": null,
  "lastshow_date": null,
  "created_at": 1710862121,
  "updated_at": 1710862121
}
```

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": {
    "id": "04a92d43-c8ae-4548-8ecc-104ec47cc577"
    "short_name": "Ella",
    "full_name": "Gabriela Abigail",
    "generation": 10,
    "birth_date": "07-08-2006",
    "jikoshoukai": "Ohayo! Konnichiwa! Oyasumi! Aku ingin ada di setiap harimu. Hai, Aku Ella!",
    "kabesha_image": "https://jkt48lab.safatanc.com/image/kabesha/ella.png",
    "social_media": [
      {
        "code": "instagram",
        "name": "Instagram",
        "url": "https://www.instagram.com/jkt48.ella.a/",
        "followers": 539000
      },
      ...
    ],
    "status": "active",
    "join_date": "18-12-2021",
    "graduate_date": null,
    "lastshow_date": null,
    "created_at": 1710862121,
    "updated_at": 1710862121
  }
}
```

## Update Member
PUT /api/member/:short_name
Example Request
```
{
  "kabesha_image": "https://jkt48lab.safatanc.com/image/kabesha/ella_new.png",
}
```

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": {
    "id": "04a92d43-c8ae-4548-8ecc-104ec47cc577"
    "short_name": "Ella",
    "full_name": "Gabriela Abigail",
    "generation": 10,
    "birth_date": "07-08-2006",
    "jikoshoukai": "Ohayo! Konnichiwa! Oyasumi! Aku ingin ada di setiap harimu. Hai, Aku Ella!",
    "kabesha_image": "https://jkt48lab.safatanc.com/image/kabesha/ella_new.png",
    "social_media": [
      {
        "code": "instagram",
        "name": "Instagram",
        "url": "https://www.instagram.com/jkt48.ella.a/",
        "followers": 539000
      },
      ...
    ],
    "status": "active",
    "join_date": "18-12-2021",
    "graduate_date": null,
    "lastshow_date": null,
    "created_at": 1710862121,
    "updated_at": 1710862121
  }
}
```

Example Error Response (404 Not Found)
```
{
  "status": 404,
  "error": "member with short_name ellayy not found",
  "data": null
}
```

## Delete Member
DELETE /api/member/:short_name

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": null
}
```

Example Error Response (404 Not Found)
```
{
  "status": 404,
  "error": "member with short_name ellayy not found",
  "data": null
}
```