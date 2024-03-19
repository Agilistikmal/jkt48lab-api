# Member Social Media API

## Get Social Media Details
GET /api/member/:short_name/social_media

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": {
    "member_short_name": "Ella",
    "social_media": [
      {
        "code": "instagram",
        "name": "Instagram",
        "url": "https://www.instagram.com/jkt48.ella.a/",
        "followers": 539000
      },
      ...
    ]
  }
}
```

## Add Social Media
POST /api/member/:short_name/social_media

Example Request
```
[
  {
    "code": "tiktok",
    "name": "TikTok",
    "url": "https://tiktok.com/jkt48.ella.a/",
    "followers": 600000
  },
  ...
]
```

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": {
    "member_short_name": "Ella",
    "social_media": [
      {
        "code": "instagram",
        "name": "Instagram",
        "url": "https://www.instagram.com/jkt48.ella.a/",
        "followers": 539000
      },
      {
        "code": "tiktok",
        "name": "TikTok",
        "url": "https://tiktok.com/jkt48.ella.a/",
        "followers": 600000
      },
      ...
    ]
  }
}
```

## Edit Social Media
PUT /api/member/:short_name/social_media/:code

Example Request
```
{
  "followers": 823000
}
```

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": {
    "member_short_name": "Ella",
    "social_media": [
      {
        "code": "instagram",
        "name": "Instagram",
        "url": "https://www.instagram.com/jkt48.ella.a/",
        "followers": 823000
      },
      {
        "code": "tiktok",
        "name": "TikTok",
        "url": "https://tiktok.com/jkt48.ella.a/",
        "followers": 600000
      },
      ...
    ]
  }
}
```

## Delete Social Media
DELETE /api/member/:short_name/social_media/:code

Example Success Response
```
{
  "status": 200,
  "error": null,
  "data": null
}
```