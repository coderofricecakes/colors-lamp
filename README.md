# COLORS

A full-stack LAMP web application where users can register, log in, and save/manage a personal list of favorite colors.

## Description

COLORS is a simple CRUD demo app built to practice full-stack LAMP development. Users create an account, log in, and can add, view, and search a personal list of colors tied to their account. It follows a typical three-tier structure: a static HTML/CSS/JS frontend, a PHP API layer, and a MySQL database.

## Technologies Used

- **Frontend:** HTML, CSS, JavaScript (vanilla)
- **Backend:** PHP
- **Database:** MySQL 8.0
- **Server:** Apache (LAMP stack) on Ubuntu 24.04
- **Hosting:** DigitalOcean droplet
- **HTTPS:** Certbot / Let's Encrypt
- **DNS:** GoDaddy (domain: ricecakemedia.com)

## High-Level Setup Instructions

1. Provision an Ubuntu server with Apache, MySQL 8.0, and PHP installed (a LAMP marketplace image is easiest).
2. Create the `COP4331` database with `Users` and `Colors` tables.
3. Create a dedicated MySQL application user (do not use `root`) and grant it access to `COP4331` only.
4. Copy the frontend files and `LAMPAPI/` folder to your web root (e.g. `/var/www/html/`).
5. Copy `LAMPAPI/db_config.example.php` to `LAMPAPI/db_config.php` and fill in your real database credentials.
6. Update the API base URL in `js/code.js` (the `urlBase` variable) to match your server's domain.
7. Point your domain's DNS A record at the server's IP, and issue an HTTPS certificate with Certbot.

## How to Run and Access the Application

- Visit the deployed site in a browser: `https://ricecakemedia.com`
- Register a new account, or use the test account:
  - Username: `testuser`
  - Password: `test123`
- Once logged in, add colors to your list and use the search bar to filter them.

## Assumptions & Limitations

- No password reset / email verification flow is implemented; this is a lab-scale demo, not production-hardened.
- Real MySQL credentials live in `LAMPAPI/db_config.php`, which is gitignored; use `db_config.example.php` as a template.
- **AI usage:** Claude (Anthropic) helped debug DNS propagation, HTTPS/mixed-content errors, and MySQL 8.0's stricter authentication and password requirements, and wrote the README.

## Author

Josiah Lopez ([@coderofricecakes](https://github.com/coderofricecakes))
