using demo from '../db/data_model.cds';

service ProjectService {
    // @readonly entity Books as projection on my.Books;

    entity Projects as projection on demo.Projects;
    entity Users as projection on demo.Users;
}
