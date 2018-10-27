{% if page.comments && theme.gitalk.enable %}

  <link rel="stylesheet" href="https://unpkg.com/gitalk/dist/gitalk.css">

  <script src="https://unpkg.com/gitalk/dist/gitalk.min.js"></script>

  <script type="text/javascript">
      var gitalk = new Gitalk({
        clientID: '{{ theme.gitalk.ClientID }}',
        clientSecret: '{{ theme.gitalk.ClientSecret }}',
        repo: '{{ theme.gitalk.repo }}',
        owner: '{{ theme.gitalk.owner }}',
        admin: ['{{ theme.gitalk.adminUser }}'],
        perPage: {{ theme.gitalk.perPage }},
        labels: ['{{ theme.gitalk.labels }}'],
        pagerDirection: '{{ theme.gitalk.pagerDirection }}'
      })
      gitalk.render('gitalk-container')           
  </script>

{% endif %}
