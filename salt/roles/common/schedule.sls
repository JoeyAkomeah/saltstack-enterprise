salt_minion_schedule:
  file.managed:
    - name: /etc/salt/minion.d/schedule.conf
    - contents: |
        schedule:
          highstate:
            function: state.highstate
            minutes: 1




