#rake db:seed

# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# rails generate model User name:string email:string username:string password:string author:boolean admin:boolean

# rails generate model Comment text:text user_id:integer post_id:integer

# rails generate model Post title:string time:timestamp description:text image:string user_id:integer


# class Post < ActiveRecord::Base
#   belongs_to :user, :as => owner
#   has_many :comments
#   has_many :users, :through => comments, :as commentors
# end

# class Comment < ActiveRecord::Base
#   belongs_to :post
#   belongs_to :user, :as => owner
# end

# class User < ActiveRecord::Base
#   has many :posts
#   has_many :comments
# end

# {title: 'Weird Historical Photos that Actually Happened, I still cannot believe # 3', description: 'It’s almost impossible to believe that the things depicted in these photos occurred since, well, the advent of photography. It’s almost unfathomable that life was so different a mere 50, 75 or 100 years ago. These photos serve as an excellent reminder that the things we know and are familiar with change rapidly. Imagine how our photos will look to a future generation in, say, 100 years from now.', image: ,user_id: 1
#   },
# TO DO: INCLUDE IMAGE HERE:
posts = Post.create([{title:"Check out Hugh Jackman absolutely loving the subway, casually on his way to latenight interview", description: "Just one of the people, except ridiculously good looking...", image: "http://i.imgur.com/O9BfwUC.jpg", user_id: 1
  }])

users = User.create([{name: 'Nelson Schubart', email: 'nelson.schubart@gmail.com', username: 'NSCHUB01', password: 'Nellyb2040', author: true, administrator: true}, {name: 'Jake Gross', email: 'jacob.gross@gmail.com', username: 'JGROSSS123', password: 'Apple12', author: true, administrator: false}, {name: 'Randome User', email: 'random.user@gmail.com', username: 'RAND123', password: 'Apple123', author: false, administrator: false}])

comments = Comment.create({text: 'wow, cray cray photos!', user_id: 3, post_id: 1
  })

