using { MyDemoApp1 as my } from '../db/schema';

using MyDemoApp1 from '../db/schema';

@path : 'service/MyDemoApp1'
service MyDemoApp1Service
{
    entity Products as
        projection on my.Products
        {
            *
        };
}

annotate MyDemoApp1Service with @requires :
[
    'authenticated-user'
];
