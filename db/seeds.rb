# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{
        name: 'Micronaut'
    },
    { 
        name: 'User' 
    },
    {
        name: 'Admin'
    }])

groups = Group.create([{
    name: 'External'
},
{

    name: 'Exercising',
    icon:'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fstatic3.businessinsider.com%2Fimage%2F57a0b934dd08956a398b48a2-1200%2Fpeople-are-exercising-more-and-eating-healthier.jpg'
},
{
    name: 'Studying',
    icon: 'http://www.heysigmund.com/wp-content/uploads/Studying-9-Scientifically-Proven-Ways-to-Supercharge-Your-Learning.jpg'

},
{
    name: 'Meditating',
    icon: 'https://static.parade.com/wp-content/uploads/2016/12/meditating-woman-ftr.jpg'
},
{
    name: 'Working',
    icon: 'https://picjumbo.com/wp-content/uploads/business-woman-working-on-laptop-in-her-office-2210x1473.jpg'
}])

routines = Routine.create([{

}])