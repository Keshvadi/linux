---
title: PDF Manipulation
parent: Common Use Cases
nav_order: 41
layout: default
---

### `pdfunite`

- Description: A utility to manipulate PDF files.

- Example usage:

```bash
    pdfunite file1.pdf file2.pdf file3.pdf output.pdf # Merges file1.pdf, file2.pdf, and file3.pdf into output.pdf
```

```bash
    pdfunite directory/*.pdf output.pdf # Merges all PDFs from 'directory' into a single output.pdf
```

```bash
    pdfunite file1.pdf file2.pdf file3.pdf output.pdf # Merges file1.pdf, file2.pdf, and file3.pdf into output.pdf
    pdfunite output.pdf 3-1 output_rearranged.pdf # Reorders pages in 'output.pdf' (e.g., from 3-1) and saves as 'output_rearranged.pdf'
```

<!--
```bash
pdftk
```

```bash
convert
sudo apt-get install imagemagick
or
sudo apt-get install poppler-utils

convert input.jpg output.pdf
convert -density 300 input.pdf output.png
convert -density 300 input.pdf -quality 100 output.jpg

pdftk original.pdf cat 1 output first_page.pdf
pdftk original.pdf cat 2-end output rest_of_document.pdf
pdftk first_page.pdf rest_of_document.pdf cat output modified.pdf
for file in *.mp4; do ffmpeg -i "$file" -vn -acodec libmp3lame -q:a 4 "${file%.mp4}.mp3"; done

```

```bash

```

```bash

```

```bash

```

```bash

```

```bash

```

```bash

```

```bash

```

```bash

```

---

### `wget`

- Description: A command-line utility for downloading files from the internet.

- Example usage:

  ```bash
  wget https://example.com/file.zip # Downloading a file from a URL
  wget -O output_filename.zip https://example.com/file.zip # Downloading a file and specifying an output filename
  ```

---

### `ssh`

- Description: Secure Shell protocol used for securely connecting to a remote system over a network.

- Example usage:

  ```bash
  ssh username@remote_host # Connecting to a remote server
  ssh -p 2222 username@remote_host # Connecting to a remote server on a specific port
  ```

---

### `scp`

- Description: Securely copy files between a local and a remote system using Secure Copy Protocol (SCP).

- Example usage:

  ```bash
  scp username@remote_host:/remote/file.txt /local/directory/ # Copying from remote to local
  scp /local/file.txt username@remote_host:/remote/directory/ # Copying from local to remote
  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ``` -->

---
