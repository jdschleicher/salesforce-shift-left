# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)

# WIKI

### WHAT IS THE CICD LOCAL REPOSITORY?
  * A central location to host a sample Salesforce Unlocked Package project to perform Continuous Integration (CI) / Continuous Delivery (CD) against as well as other shift-left practices. 
  
### HOW CAN THIS BE USEFUL?
  * With the majority of main functions performed in the CI/CD jobs that kick off from a Solution Integrator's Release branch, we can smoke-out any potential issues in our code base that may cause the main CI/CD jobs to fail. Being able to perform these functions at a User Story level allows us to fix an issue where it was created by the individual who has the most knowledge about the functionality, and also greatly removes the amount of variables to allow us to focus our efforts when troubleshooting.
  * If we can smoke-out and capture issues at the front-line development level then we can prevent the costly back and forth exchanges from release team to developers trying to understand what could be causing the build failures

### WHAT LOCAL CI/CD AND SHIFT-LEFT FUNCTIONALITY ARE AVAILABLE?
  * Please see this repository's [WIKI](https://github.com/jdschleicher/salesforce-shift-left/wiki) for a list of available CI/CD local functionality and other shift-left practices along with associated documentation

  Below are the key features within the cicd_local directory referenced in this WIKI:

  * [Customer Personas](https://github.com/jdschleicher/salesforce-shift-left/wiki/Customer-Personas)
     * [Insert User Records (Customer Personas) into a Salesforce Environment](https://github.com/jdschleicher/salesforce-shift-left/wiki/CUSTOMER-PERSONA-SCRIPTS-IN-ACTION-GIFs#insert_user_records_from_personas)
     * [Populate Customer Personas from a list of existing Usernames](https://github.com/jdschleicher/salesforce-shift-left/wiki/CUSTOMER-PERSONA-SCRIPTS-IN-ACTION-GIFs#populate_user_persona_from_populate_user_detail)
  * [Git Hooks](https://github.com/jdschleicher/salesforce-shift-left/wiki/Git-Hooks) 
    * [Code scanner off of post-commit Script](https://github.com/jdschleicher/salesforce-shift-left/wiki/GIT-HOOKS-SCRIPT-LOGIC-PERFORMED#post-commit-codescanner-script)
    * [Unit Testing off of post-commit Script](https://github.com/jdschleicher/salesforce-shift-left/wiki/GIT-HOOKS-SCRIPT-LOGIC-PERFORMED#post-commit-unit-testing-script)
  * [Org Data Seeding and Generating Recipes with Snowfakery and Texei](https://github.com/jdschleicher/salesforce-shift-left/wiki/Org-Data-Seeding-and-Generating-Recipes-with-Snowfakery-and-Texei)
  * [Code Scanner with SFDX CLI plugin](https://github.com/jdschleicher/salesforce-shift-left/wiki/Code-scanner-with-SFDX-CLI-plugin)
  * [Unit Testing](https://github.com/jdschleicher/salesforce-shift-left/wiki/UNIT-TESTING) 
