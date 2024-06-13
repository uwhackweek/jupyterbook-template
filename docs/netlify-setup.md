# Configuring netlify for pull request previews

Public websites for hackweeks have content contributed by many different people, and we want to ensure that they are well-formatted and functional at all times. In order to do this, we ‘preview’ changes to a website to confirm it all looks good before merging new content. There are different ways to accomplish this, but we have found that Netlify is free and works well for public sites. 

## Link netlify to a repository

Netlify organizes websites by 'Site' which is tied to a specific GitHub repository. All preview links created are persistent but not indexed by search engines. If you want to delete them, you can delete the 'Site' from Netlify. Importantly, the Netlify previews are completely decoupled from the main website that is hosted by GitHub pages, so you do not need to worry about overwriting or losing your main event webpage!

1. ### Make sure the Netlify App is installed for your organization

   Go to https://github.com/apps/netlify/installations/select_target or visit GitHub Org settings for GitHub Apps (e.g. https://github.com/organizations/snowex-hackweek/settings/installations):

   ![Add Site](./images/netlify-install-github-app.png)

   Under 'Configure' for Netlify you can select which repositories Netlify has access to: 

   ![Add Site](./images/netlify-repo-access.png)

1. ### Log into netlify and 'Add new site'

   ![Add Site](./images/netlify-addsite.png)

1. ### Select deploy project with GitHub

   ![Link GitHub](./images/netlify-link-github.png)

1. ### Select correct GitHub Organization for website repo

   ![Select org](./images/netlify-select-org.png)

1. ### Select correct repository based on this template (e.g. website-2024)

   ![Select repo](./images/netlify-select-repo.png)

   For 'Site name' enter something informative like `snowex-website-2024` and click 'Deploy'

1. ### Disable netlify main deployment

   Important!! We only want to use Netlify for *Previews* so under 'Site Configuration' -> 'Build & Deploy' -> 'Continuous deployment' -> 'Build settings' select "Stopped Builds"
   (e.g. https://app.netlify.com/sites/snowex-website-2024/configuration/deploys)

   If you do not do this, you will have a public mirror of your website available at your netlify site name (https://snowex-website-2024.netlify.app)

   ![Disable builds](./images/netlify-stop-builds.png)

1. ### Copy unique NETLIFY_SITE_ID to use in GitHub Actions Workflows

   Copy the "Site ID" token string under "Site Details", it will look something like this "f9235abc-688d-45e4-8f62-5519ghi455j1"

   (e.g. https://app.netlify.com/sites/snowex-website-2024/configuration/general)

1. ### Create a NETLIFY_AUTH_TOKEN to use in GitHub Actions workflows

   Go to https://app.netlify.com/user/applications and under 'Personal access token' create a new token with optional expiration. It will look something like this `nfp_8abcUxd2ESPs9yEegb3ATSBst13JicvY135s`

   ![Auth token](./images/netlify-auth-token.png)


1. ### Add GitHub Action Secrets to your repository

   In the end, a website repository needs to have access to both `NETLIFY_AUTH_TOKEN` and a specific `NETLIFY_SITE_ID` for the preview workflow to function:

   ![Repo secrets final](./images/github-repo-secrets2.png)