import os
import re

def find_readme_files(root_dir):
    readme_files = []
    for root, dirs, files in os.walk(root_dir):
        for file in files:
            if file.lower() == 'readme.md':
                path = os.path.join(root, file)
                readme_files.append(path)
    readme_files.sort()
    return readme_files

def get_title_from_file(file_path):
    with open(file_path, 'r', encoding='utf-8') as file:
        for line in file:
            if line.startswith('# '):
                return line.strip('# ').strip()
    return "README"

def update_footer_links(readme_files):
    for i, file_path in enumerate(readme_files):
        prev_file_title = get_title_from_file(readme_files[i - 1]) if i > 0 else None
        next_file_title = get_title_from_file(readme_files[i + 1]) if i < len(readme_files) - 1 else None

        # Read the file and split its content to remove the existing footer
        with open(file_path, 'r', encoding='utf-8') as file:
            content = file.read()
            content, _ = re.split(r'<!-- FooterStart -->', content, 1)

        # Prepare the new footer
        footer = "\n<!-- FooterStart -->\n---\n"
        links = []
        if prev_file_title:
            prev_link = os.path.relpath(readme_files[i - 1], os.path.dirname(file_path))
            links.append(f"[← {prev_file_title}]({prev_link})")
        if next_file_title:
            next_link = os.path.relpath(readme_files[i + 1], os.path.dirname(file_path))
            links.append(f"[{next_file_title} →]({next_link})")
        footer += " | ".join(links) + "\n<!-- FooterEnd -->\n"

        # Write the updated content with the new footer back to the file
        with open(file_path, 'w', encoding='utf-8') as file:
            file.write(content.strip() + footer)

if __name__ == "__main__":
    root_directory = os.getenv('PROJECT_HOME', os.getcwd())  # Use PROJECT_HOME env var, default to current working directory
    readme_files = find_readme_files(root_directory)
    update_footer_links(readme_files)
