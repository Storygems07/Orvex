# ORVEX – AI-Powered Language Assistant

Track: Ai + Languages  
Teammates: [Sai Aashish & Kaatyayni Pandey]  
**Live Demo:** [....]  
**Source Code:** https://github.com/Storygems07/Orvex

## The Problem

Language barriers can make everyday communication, learning, and understanding information difficult. People may struggle to understand spoken conversations, unfamiliar text, or content in another language.

## What We Built

ORVEX is an AI-powered language assistant designed to make multilingual communication easier. It combines translation, voice interaction, live audio interpretation, and language-learning support in one application.

## How It Works

- **AI assistance:** Uses the Google Gemini API to generate language-related responses and explanations.
- **Speech recognition:** Uses the faster-whisper implementation with the tiny Whisper model for speech-to-text processing.
- **Translation:** Helps users understand text and communicate across languages.
- **Live audio and conversation:** Includes tools for live interpretation and two-way conversations.
- **Learn mode:** Provides language-learning lessons and AI tutoring support.
- **Voice responses:** Uses Edge TTS for spoken responses.

The Gemini API key is stored as a server-side environment variable on Render. It is not included in the public source code.

## Results and Testing

We deployed ORVEX as a web application so that users can access it through a browser.

Live application: ( https://orvex-fszn.onrender.com/ )

We tested the application by checking that the website loads and trying its available language-assistance features. We have not included a numerical accuracy score because we did not conduct a formal benchmark evaluation.

## Limitations

- Translation and speech recognition may make mistakes, especially with accents, background noise, or less common languages.
- AI-generated explanations may not always be correct.
- The application depends on external services and API availability.
- The free hosting service may take time to wake up after inactivity.

## What We Would Improve Next

- Evaluate translation and speech-recognition accuracy across more languages.
- Improve response speed and reliability.
- Add more language lessons and practice exercises.
- Conduct structured testing with more users and different accents.

## Sources and Credits

## Sources and Credits

**AI services and models**
- [Google Gemini API](https://ai.google.dev/gemini-api/docs) — AI-powered tutoring, explanations and language-learning content.
- [Whisper tiny model](https://huggingface.co/Systran/faster-whisper-tiny) — Pretrained speech-recognition model.
- [faster-whisper](https://github.com/SYSTRAN/faster-whisper) — Speech-to-text implementation.

**Libraries and frameworks**
- [Flask](https://flask.palletsprojects.com/) — Web application framework.
- [Edge TTS](https://github.com/rany2/edge-tts) — Text-to-speech generation.
- [langdetect](https://pypi.org/project/langdetect/) — Language detection.
- [Pillow](https://python-pillow.org/) — Desktop orb image rendering.
- [Tesseract.js](https://github.com/naptha/tesseract.js) — Browser-based OCR for reading text from images.

**External translation service**
- [MyMemory Translation API](https://mymemory.translated.net/doc/spec.php) — Text translation.

**Development assistance**
- Claude AI — Coding and development assistance.
- Chatgpt - development Guidence

**Datasets:** No separate training dataset was used for this application. The project uses pretrained models and external AI services.

---

*ORVEX is a prototype built to explore how AI can make multilingual communication and language learning more accessible.*
