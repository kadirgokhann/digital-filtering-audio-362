Noise Removal Using Digital Filters

Objective: Design and analyze digital bandstop filters to remove localized noise in an audio signal using FIR and IIR filters in MATLAB.

📌 Scenario
An audio recording of a mathematics lecture is corrupted by periodic noise (similar to cicada sounds). The noise is isolated within a specific frequency range and must be removed using digital filters. You are provided with a sample audio file: sample.wav.

🔍 Instructions
1. Spectrogram Analysis
Use spectrogram() in MATLAB to identify the frequency range of the noise (f1, f2).

Focus on silent regions to detect noise presence.

Deliverable: Plot the spectrogram and explain the selection of frequency boundaries.

2. FIR Filter Design
Design a 256th-order FIR bandstop filter using fir1().

Use cutoff frequencies: (f1 - 500 Hz, f2 + 500 Hz).

The filter should significantly reduce the noise if f1 and f2 are accurately chosen.

3. IIR Filter Design
Design three types of IIR bandstop filters using:

Butterworth filter: butter()

Chebyshev Type I filter: cheby1() with R = 0.1

Elliptic filter: ellip() with R = 0.1

4. Filter Evaluation
Start with n = 3 for each IIR filter.

Plot log-magnitude frequency responses using freqz(), ranging from 2000 Hz to 8000 Hz.

Perform trial and error to adjust n such that each IIR filter performs comparably to the FIR filter.

Deliverables:

Final chosen n values for each IIR filter.

Frequency response plots (log10 scale).

Pole-zero plots using zplane().

5. Spectrogram Comparison
Apply the FIR and each IIR filter to sample.wav.

Plot the spectrograms of the filtered outputs.

Save the resulting .wav files.

Goal: Show noise suppression in the targeted frequency range.

6. Stability Investigation
Gradually increase n until IIR filters become numerically unstable.

Identify the smallest n for each filter that leads to instability.

Plot frequency responses of unstable filters and discuss signs of instability (e.g., ripples, gain spikes).

Deliverable: Include these plots and brief interpretations.

💡 Helpful MATLAB Functions
matlab
Copy
Edit
audioread, audiowrite
spectrogram, abs, log10
fir1, butter, cheby1, ellip
freqz, zplane
filter
📄 Report Checklist
 Original and filtered spectrograms

 Filter design parameters

 Frequency response and pole-zero plots

 Filter performance comparisons

 Observations and justifications for design choices

 Discussion of instability behavior

📨 Submission Notes
Submit the following:

MATLAB source code

PDF report

Filtered audio files (.wav)

If file size exceeds platform limits (e.g., Moodle), send via email as instructed.
