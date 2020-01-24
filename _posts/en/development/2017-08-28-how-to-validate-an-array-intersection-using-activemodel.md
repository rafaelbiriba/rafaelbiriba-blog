---
layout: post
title: How to validate an array intersection using activemodel
excerpt: "If you are trying to validate if an array is included in another array, I have the perfect gem to recommend to you."
category: [en, development]
lang: en
tags: [ruby, activemodel, validation]
comments: true
share: true
ads: true
---

If you are trying to validate if an array is included in another array, I have the perfect gem to recommend to you.

Imagine the following **User** class:

```ruby
class User < ActiveRecord::Base
  VALID_PERMISSION = ["read", "write", "share"]
end
```

I need to create a validation, to avoid the creation of new users with invalid permissions.

```ruby
User.create!(permission: ["read", "admin"])
# Should fail. But it won't! YET! :)
```

Unfortunately, activemodel only has validate_inclusion_of which validate if a single value is included in an array, which doesn't solve my problem.

Because of that, I created a gem called [**active_model_validates_intersection_of**](https://github.com/rafaelbiriba/active_model_validates_intersection_of) that implements the method **validates_intersection_of** to handle this kind of validation.

For the installation, you just need to install the gem:

```ruby
  gem "active_model_validates_intersection_of"
```

The usage is very simple:

```ruby
class User < ActiveRecord::Base
  VALID_PERMISSION = ["read", "write", "share"]
  validates_intersection_of :permission, in: DEFAULT_PERMISSION
end

User.create!(permission: ["read", "admin"])
# Raise a validation error

user = User.new(permission: ["read", "admin"])
user.valid? # False
```

I hope that this gem helps you with your array validation! You can also read the full documentation at the [gem github page](https://github.com/rafaelbiriba/active_model_validates_intersection_of).

If you have any questions or feedbacks, please let me know! Enjoy it :)
