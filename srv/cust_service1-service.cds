using {com.acc.selectincds as my} from '../db/modeling1';

service PartnersService @(path: '/browse1') {

    entity Partners           as projection on my.BusinessPartnerEntity;

    entity Partners2          as
        select from my.BusinessPartnerEntity {

            id,
            name,
            country

        };

    entity Partners1          as
        select from my.BusinessPartnerEntity {
            *
        };

    entity CustomersUSA       as
        select from my.BusinessPartnerEntity {

            id,
            name,
            country

        }

        where
            country = 'USA';


    entity HomelessCustomers  as
        select from my.BusinessPartnerEntity {
            *
        }

        where
            country is null;


    entity HomelessCustomers1 as
        select from my.BusinessPartnerEntity {

            id,
            name,
            country as homeCountry

        }
        where
                country is     null
            and name    is not null;

    entity FirstTenCustomers  as
        select from my.BusinessPartnerEntity {
            *
        }

        where
            id between 100 and 300;


    entity CustomersUnknown   as
        select from my.BusinessPartnerEntity {
            *
        }

        where
            country like '%know%';


    entity CustomersNotNull

    as
        select from my.BusinessPartnerEntity[country is not null]{
            *
        };


    entity CustomersNotUSA

    as
        select from my.BusinessPartnerEntity[country != 'USA']{
            *
        };

}
