# Before the hackweek

## Project Leaders Kick-off Meeting

The purpose for the kickoff meeting is for organizers and project leads to meet and discuss what projects are being created for the hackweek. Typically, each hackweek has about 10 projects that are offered. Most will begin development during the kick-off meeting, but it’s possible that the organizers might identify missing projects in need of development that could have wider-ranging benefits to the research community, such as a database or community library. 

Goals/Outcomes: 
* Identify projects and discuss scope and possible content
* Identify project lead and co-leads
* Identify gaps in project portfolio and decide if will solicit additional leads
* Discuss timeline, milestones, check-ins, and individualized project development suppor

## Project Development & Support

After the initial meeting, project leads will work on defining their project and creating a GitHub repository from the project template. This includes defining the project tasks and outlining the anticipated skills that participants will apply in the project. This information will be posted to the website for participants to review before the hackweek

Think about the following as you begin to formulate your project idea:
* What problem do you want to solve or explore with your project?
* What would you like you and your team to learn from the project work?
* What tools or datasets might your team use?
* What mini-tutorials/demos could be useful to some/all team members?

Hackweek event organizers will reach out to each project lead team to schedule a project check-in meeting. Feedback from previous hackweeks indicated that check-ins would help project development on track avoiding scrambling to bring all the pieces together the week or night before that hackweek. A check-in offers an additional thought partner with someone that has experience with previous hackweeks to talk through design decisions such as scope, tasks, skills needed/nice to have. It is best if you first try to document some of your initial project ideas (such as creating a first draft of a project README document) prior to this meeting.

### Project Development Milestones:

1. [Create a project repository from the template](#organizing-your-project-on-github)
    - Begin filling out basic project information in the README file:
      - *Title* and *Introduction*
      - Add your name to the list of *Collaborators*
      - Describe the *Problem*
      - Provide an initial description of *Data and Methods*
      - Outline *Project goals and tasks*
2. Schedule and hold your first check-in meeting with hackweek organizers
3. Update project information in the README file before the hackweek
4. Prepare any content required for your project (e.g. write sample code and Jupyter notebooks, organize and clean datasets, provide additional reading and learning resources for background information)


## Project Facilitation Training

Project Facilitation Training will be held a few weeks before the hackweek. The first part of this meeting project leads will give a brief overview of how they are organizing their projects and the mini-tutorials team members might need to work on the project. This time will give projects lead an opportunity to learn from each other and identify any overlapping tutorial needs that might be creatively co-organized.  

During the second half, hackweek organizers will present information on how to effectively facilitate a group project with a diverse team, with varying skills, skill-levels, and learning desires. The goal of this training is to chat about some of the common scenarios that project leads might encounter and offer suggestions, so that leads can feel better equipped and more relaxed to work with what shows up.

### Final Project Development Milestones:
1. Update or change project information in the README file 
2. Ensure that project materials such as sample code, documentation, and data files are accessible (e.g. sample code and environment file in your project repository on GitHub, data files uploaded to an AWS S3 bucket)
3. Prepare any mini-tutorials needed or that will be co-developed with other leads
4. Post project updates in Slack and chat with interested participants answering questions

---

## Organizing your project on GitHub

We encourage all teams to use GitHub to coordinate sharing of ideas, data and code. Additional tools may also be provided by the hackweek organizers, such as a Slack workspace for communication (hackweek organizers can set up a Slack channel for your project team).

### Project Name

Before getting started, you'll need a name for your project. A team exploring snow surface temperatures used the name "hot-pow", and one looking at ice-ocean interactions was called "floes-are-swell". Keep it short and memorable, and most of all, have fun!

### Use our GitHub Project Template

We have created a GitHub template that is pre-populated with directories and a README layout the we find works well with most teams.

We encourage all teams to create a new GitHub repository within the {{hackweek}} Organization, even if it is just to point to an already-existing repository or package your team is contributing to for their project.

* Go to: {{ '[https://github.com/{name}/sample_project_repository](https://github.com/{name}/sample_project_repository)'.format(name=hackweek) }}

* Click the green "Use this template" button on right side of page:

![new-repo-screenshot](../img/project-template.png)

* Choose "Create a new repository"
* Name your repository using a short name.
* We recommend choosing "Public" (so other participants can follow progress). You can also select Private for now and make Public before final presentation.
* Add a "topic" to your repository details (click on the gear icon next to the "About" section on your repository page) to help others find your work (e.g. `uw-hackweek-snowex2024`)

Visit the [GitHub documentation](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template) for more details on creating a repository from a template.

### Create a new GitHub team within the {{hackweek}} Organization
GitHub teams provide a convenient way for you to set permissions on your project repository for groups of people, rather than having to do this for each individual on your team. 

1. Go to the "Teams" tab near the top of the GitHub {{hackweek}} Organization page: {{ '[https://github.com/orgs/{name}/teams](https://github.com/orgs/{name}/teams)'.format(name=hackweek) }}
2. Click green “New team” button
3. Use your short project name for "Team name"
4. Set the team to visibility "Visible"
5. Click on the "Create Team" button
6. Add all team members by clicking the “Members” tab and the green “Add a member” button

#### Add the project team to your project repo

1. Go to the new repository you just created 
2. Click “Settings” tab in upper right corner
3. Select “Manage access” on left side of page
4. Add your team name under the "Manage access" section
5. Select “write” to enable all team members to make commits

Visit the [GitHub documentation](https://docs.github.com/en/organizations/organizing-members-into-teams/creating-a-team) for more details on creating a team.
