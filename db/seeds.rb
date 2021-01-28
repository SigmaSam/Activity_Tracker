# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([{
        name: 'Emanuel'
    },
    { 
        name: 'Carla' 
    },
    {
        name: 'Micronaut'
    }])

groups = Group.create([
    { name: 'Exercising' },
    { name: 'Studying' },
    { name: 'Meditating' },
    { name: 'Working' }
])

routines = Routine.create([{
    name: 'Push Ups',
    hours: 1,
    group_ids: 2,
    user_id: 1
},
{
    name: 'Paperwork',
    hours: 8,
    group_ids: 4,
    user_id: 2 
},
{
    name: 'Jogging',
    hours: 4,
    group_ids: 2,
    user_id: 2 
},
{
    name: 'Plank',
    hours: 5,
    group_ids: 2,
    user_id: 2 
},
{
    name: 'Weight Lifting',
    hours: 4,
    group_ids: 2,
    user_id: 3 
},
{
    name: 'Coding Challenges',
    hours: 1,
    group_ids: 3,
    user_id: 2 
},
{
    name: 'Sleeping',
    hours: 8,
    user_id: 1 
},
{
    name: 'Spacing Out',
    hours: 2,
    user_id: 3 
},
{
    name: 'Videogames',
    hours: 2,
    user_id: 3 
},{
    name: 'Reading light novels',
    hours: 2,
    user_id: 1 
}])