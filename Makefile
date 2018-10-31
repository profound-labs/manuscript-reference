MD_TO_DOCX=-f markdown_github+smart -t docx
DOCX_TO_MD=-f docx -t markdown_github+smart

# TODO pandoc's markdown_github doesn't wrap lines, and "fold -w 80 -s" breaks
# links and doesn't count unicode letters the same way as emacs

glossary-en-docx-to-md:
	pandoc $(DOCX_TO_MD) dhamma-glossary-EN.docx > ./markdown/dhamma-glossary-EN.md

glossary-en-md-to-docx:
	pandoc $(MD_TO_DOCX) ./markdown/dhamma-glossary-EN.md -o dhamma-glossary-EN.docx

glossary-pt-docx-to-md:
	pandoc $(DOCX_TO_MD) dhamma-glossary-PT.docx > ./markdown/dhamma-glossary-PT.md

glossary-pt-md-to-docx:
	pandoc $(MD_TO_DOCX) ./markdown/dhamma-glossary-PT.md -o dhamma-glossary-PT.docx

glossary-it-docx-to-md:
	pandoc $(DOCX_TO_MD) dhamma-glossary-IT.docx > ./markdown/dhamma-glossary-IT.md

glossary-it-md-to-docx:
	pandoc $(MD_TO_DOCX) ./markdown/dhamma-glossary-IT.md -o dhamma-glossary-IT.docx

pali-docx-to-md:
	pandoc $(DOCX_TO_MD) pali-spelling.docx > ./markdown/pali-spelling.md

pali-md-to-docx:
	pandoc $(MD_TO_DOCX) ./markdown/pali-spelling.md -o pali-spelling.docx
