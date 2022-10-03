-- Privileges for `fastgrad_api`@`%`
GRANT USAGE ON *.* TO `fastgrad_api`@`%` IDENTIFIED BY PASSWORD '*376AD3B59CDFA305A42C9BE633C1BE41E124A3EF';
GRANT SELECT, INSERT, UPDATE, DELETE ON `fastgrad`.* TO `fastgrad_api`@`%`;


-- Privileges for `supertokens_users`@`%`
GRANT USAGE ON *.* TO `supertokens_users`@`%` IDENTIFIED BY PASSWORD '*8965A0FDC44B36238DD93C8EE509C323D3D26F25';
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP ON `supertokens`.* TO `supertokens_users`@`%`;

