# Preliminary
## Skills Refresher

Our hackweeks focus on applied, hands-on learning, with participants engaging in
extended periods of small-group work. Our tutorials are designed to offer a broad
snapshot of data science tools to support your applied investigations. Due to the
relatively short duration of our events, we are not able to provide comprehensive,
in-depth training in fundamental tools. Rather, our goal is to inform you about
the types of tools we think are best suited to working with your datasets,
leaving details of implementation to be supported through peer-learning and
office hours.

### Typical Workflows and Tools

Here are a few specific scenarios of how hackweek participants typically engage
with data science tools during an event:

* Connecting to a [Jupyter Notebook](https://jupyter.org/) environment and using
  the command line to pull lesson content for a morning of tutorial training.
* Modifying a text file, committing it to Git and pushing changes to GitHub, for
  others on your team to view and edit.
* Opening CSV tabular data in Pandas and using filtering functions to remove
  outliers.
* Accessing a cloud-hosted remote sensing image using Rasterio and plotting it
  on an interactive map.
* Exploring multi-dimensional climate grids using xarray.

These are examples of the types of activities we do at a hackweek in a
collaborative setting. We invite you to reflect on your comfort level with tasks
such as these so that you can arrive at the hackweek with a clarity on where to
dedicate your energy. If wish to focus more energy on learning and implementing
new tools, we will support you with helpers and office hours, and you may have a
bit less time for applied group work. If you are already proficient in a lot of
tools you may find you can dedicate more energy to applied project work, which
we support through facilitated group activities.

## Checklist
### Required setup

```{attention}
Please make sure to find some time to go through the below material before
the hackweek.

__Upon completion you__:
<div>
  <input type="checkbox" name="a1">
  <label for="a1">Joined the Slack workspace</label>
</div>
<div>
  <input type="checkbox" name="a2">
  <label for="a2">Created a EarthData Login</label>
</div>
<div>
  <input type="checkbox" name="a3">
  <label for="a3">Created a GitHub account</label>
</div>
<div>
  <input type="checkbox" name="a4">
  <label for="a4">Can login to the JupyterHub</label>
</div>
<div>
  <input type="checkbox" name="a5">
  <label for="a5">Setup the `git` command after logging into the JupyterHub</label>
</div>
```

#### Slack Account

All of our communication throughout the hackweek will be done using the
{{ '[`{hackweek}` Slack workspace]({url})'.format(hackweek=hackweek, url=slack_workspace_url)}}.
With your invite to the hackweek, you should also have received a separate
email to join the Slack workspace. Upon accepting the invite, please take a moment to
[complete your Slack profile](https://slack.com/help/articles/204092246-Edit-your-profile).
Having your name and picture with your Slack account helps us and your peers
to identify you on Slack and builds a more personal community throughout
the week.

#### EarthData Login

We'll have you download some data from NSIDC for your tutorials and projects.
Visit the [Earthdata](https://www.earthdata.nasa.gov/eosdis/science-system-description/eosdis-components/earthdata-login)
help page and learn how to register, access, and login if you don't already have
an account!

#### GitHub Account

Everyone attending {{ hackweek }} will require obtaining a GitHub account.
Visit [the GitHub help pages](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github)
if you are in need for an account!

(accessing-jupyterhub)=
#### JupyterHub

We will offer all tutorials based on a JupyterHub environment. Please visit the
[Project Pythia Foundation Skills](https://foundations.projectpythia.org/foundations/getting-started-jupyter.html)
to learn more about the components of project Jupyter.

Specifically for the event, we will be using [CryoCloud](https://book.cryointhecloud.com/intro.html).
To get started, please see the [onboarding instructions](https://book.cryointhecloud.com/content/Getting_Started.html)
to gain access.

Optional setup after you are logged in CryoCloud:
* Earthdata authentication to automate data downloads:
  [Configure a netrc file](https://wiki.earthdata.nasa.gov/display/EL/How+To+Access+Data+With+cURL+And+Wget)
* Git authentication:

  All content of the hackweek will be shared via GitHub and interacting with the
  website will be done via the `git` command. See our {ref}`setting-up-git`
  to configure your access.
