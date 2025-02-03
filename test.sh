#!/usr/bin/env sh

# Step 1: Run the build script
echo "Running build script..."
sh scripts/build
if [ $? -ne 0 ]; then
  echo "Build script failed."
  exit 1
fi

# Step 2: Verify the output
OUTPUT_FILE="package.tar.gz"
if [ -f "$OUTPUT_FILE" ]; then
  echo "Build succeeded, $OUTPUT_FILE created."
else
  echo "Build failed, $OUTPUT_FILE not created."
  exit 1
fi

# Step 3: Generate the Copilot Analysis Report
echo "Generating Copilot Analysis Report..."

cat << EOF > copilot_analysis_report.md
# Copilot Analysis Report

## Build Process
- The build script was executed successfully.
- The output package \`$OUTPUT_FILE\` was created.

## Repository Analysis
- The repository \`smol-edge\` contains a minimal Fastly Compute service.
- The main components include configuration, WebAssembly module, build and deploy scripts.

## Copilot Opinion
- The repository appears to be benevolent, aimed at creating a small and efficient Fastly Compute service.
- No indications of malevolent purposes were found.

EOF

echo "Copilot Analysis Report generated: copilot_analysis_report.md"
