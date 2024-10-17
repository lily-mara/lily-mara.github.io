set positional-arguments

# List the available recipes
default:
    @just --list

# TODO: should also live-update mermaid files
# Run the auto-updating hugo dev server to preview the site
dev :
    just clean
    hugo serve -D

clean :
    rm -rf public

# Make a new post, arguments will be used as the name
post *args:
    #!/usr/bin/env python3
    from datetime import datetime
    import os
    import sys

    prefix = 'posts/' + datetime.today().strftime('%Y-%m')

    slug = '-'.join(sys.argv[1:]).replace(' ', '-').lower()
    filename = f'{prefix}-{slug}/index.md'

    os.system(f'hugo new {filename}')
    os.system(f'zed content/{filename}')

# Compile the site
build : mermaid
    hugo

build-draft : mermaid
    hugo -D

# Compile mermaid .mmd files into SVG files
mermaid :
    #!/usr/bin/env python3
    from glob import glob
    import os
    from pathlib import Path

    for path in glob('**/*.mmd', recursive=True):
        input_path = Path(path)
        output_path = input_path.parent / (input_path.stem + '.svg')

        cmd = f'mmdc -i {input_path} -o {output_path}'
        print(cmd)
        os.system(cmd)

clip SLUG :
    #!/usr/bin/env python3
    from datetime import datetime
    import os
    import sys

    current = 'clips/' + datetime.today().strftime('%Y-%m-%d') + '-' + sys.argv[1] + '.md'
    os.system(f'hugo new {current}')
    os.system(f'zed content/{current}')

# Create a new "/now" entry for the current year/month
now :
    #!/usr/bin/env python3
    from datetime import datetime
    import os

    current = 'now/' + datetime.today().strftime('%Y-%m') + '.md'

    if not os.path.exists('content/' + current):
        os.system(f'hugo new {current}')

    os.system(f'zed content/{current}')
