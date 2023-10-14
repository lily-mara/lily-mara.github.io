dev :
    hugo serve -D

now :
    #!/usr/bin/env python3
    from datetime import datetime
    import os

    current = 'now/' + datetime.today().strftime('%Y-%m') + '.md'

    if not os.path.exists('content/' + current):
        os.system(f'hugo new {current}')

    os.system(f'code content/{current}')

