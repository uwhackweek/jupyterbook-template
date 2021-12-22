# Team

Add html to get the #speakers-section from the index.html files created by cookiecutter.

The first time through nothing will render on this team page, but once the splash site is generated and the book re-generated the team content will appear here.
It will be updated any time the splash page is updated and then the jupyterbook is updated (we could set up an action that does these updates specifically if the team.yaml page is modified?)


<object data="index.html"
        id="speakers-section"
        width="500">
</object>

<iframe data="index.html#speakers-section"
        width="300"
        loading="eager">
</iframe>


<include src="index.html">Team should be shown here</include>


