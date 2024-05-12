# Before the hackweek

## Project ideation and team formation

Though project ideation begins well before the hackweek event, it is expected that the process is ongoing and iterative, and will continue through the event itself with input from participants helping to shape or adapt project goals.

### Project ideation

We invite those who are interested in leading a project to join our organizing team in the months before the hackweek. At a first kick-off meeting, the group of project leads will be guided through brainstorming, identifying overlaps or connections between project ideas, and identifying common needs in hackweek tutorial content that will help projects be successful. After this initial meeting, project leads will work on defining their project by creating a github repository from the project template, defining project tasks, and outlining the anticipated skills that participants will apply in the project. This is all information that hackweek participants will be using to help them select a project team to join. Though projects may change and evolve during the ideation process, and during the hackweek event itself, it is important to begin outlining your initial ideas.
- Think about the following as you begin your project ideation:
  - What problem do you want to solve or explore with your project?
  - What would you like you and your team to learn from the project work?
  - What tools or datasets might your team use?
- Create a project repository from the template (see instructions below)
- Begin filling out basic project information in the README file
  - *Title* and *Introduction*
  - Add your name to the list of *Collaborators*
  - Describe the *Problem*
  - Provide an initial description of *Data and Methods*
  - Outline *Project goals and tasks*
     
### 1-on-1 meetings with hackweek organizers

Hackweek event organizers will be available for 1-on-1 meetings to help you work through developing your project idea. It is best if you first try to document some of your initial project ideas (such as creating a first draft of a project README document) prior to this meeting.
- Schedule a meeting with hackweek organizers to address any questions about how to turn your ideas into a successful hackweek project
- Update or change project information in the README file as you continue to develop your ideas
- Begin creating and organizing additional content required for your project (e.g. write sample code and jupyter notebooks, organize and clean datasets, provide additional reading and learning resources for background information)

### Sharing your ideas and soliciting feedback
At a second group meeting, project leads will again share their projects with one another. This gives them an opportunity to solicit feedback on the feasibility of the project scope, or raise any questions. During this meeting hackweek organizers will present information on how to effectively lead a group project, and guide the project leads through some activities to practice those skills.
- Update or change project information in the README file as you continue to develop your ideas
- Ensure that project materials such as sample code, documentation, and data files are accessible (e.g. sample code and environment file in your project repository on GitHub, data files uploaded to an AWS S3 bucket)

Around the time of this second group meeting, hackweek participants will be browsing all of the project repositories, chatting with project leads on slack, and may begin selecting which one they would like to work on. Throughout the process, hackweek organizers will be available to answer questions and to help participants get connected with a project that fits their learning objectives.

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
