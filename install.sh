#!/bin/bash

# Target directory where the files will be copied
target_dir="/nfs/homes/$USER/.local/bin"

# Check if the target directory exists, create it if it doesn't
if [ ! -d "$target_dir" ]; then
  mkdir -p "$target_dir" || { echo "Error creating the target directory."; exit 1; }
fi

# Copy the files cpp, cppl, dpd, and pkm to the target directory
cp ./bin/cpp ./sh/cppl ./sh/dpd ./sh/pkm ./sh/bap "$target_dir" || { echo "Error copying the files."; exit 1; }

# Give execute permissions (chmod +x) to the copied files
chmod +x "$target_dir/cpp" "$target_dir/cppl" "$target_dir/dpd" "$target_dir/pkm" || { echo "Error setting permissions."; exit 1; }

# Add the target directory to the PATH variable in the ~/.zshrc file
if ! grep -q "export PATH=\"\$PATH:$target_dir\"" "$HOME/.zshrc"; then
  echo "export PATH=\"\$PATH:$target_dir\"" >> "$HOME/.zshrc" || { echo "Error updating the PATH variable."; exit 1; }
fi

# Update the PATH variable in the current session
export PATH="$PATH:$target_dir" || { echo "Error updating the PATH variable in the current session."; exit 1; }

# Inform the user that the installation is complete
echo "GREAT SUCCESS !!!"

# # Remove the directory containing the script
# script_dir="$(cd "$(dirname "$0")" && pwd)"
# rm -rf "$script_dir" || { echo "Error deleting the script's containing directory."; exit 1; }

# echo "... Self destruct !"

# # Empty the trash (remove files from the trash)
# echo "Emptying the trash..."
# rm -rf ~/.local/share/Trash/files/*

# echo "Hasta la vista baby."
