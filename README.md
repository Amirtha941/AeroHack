
----------

# 🚁 Aerohack 2025 – Bird Deterrence System for Medical Delivery Drones

A complete multi-module solution developed for **Collins Aerospace – Aerohack 2025**.  
This project focuses on designing an **intelligent bird-interaction and deterrence system** to protect medical drones during flight, while staying within strict constraints:

-   **Weight:** ≤ 1.5 kg
    
-   **Cost:** ≤ ₹50,000
    
-   **Power:** Suitable for a quadcopter platform
    
-   **Robustness:** Must work in real-world weather + biological behavior scenarios
    

----------

## 📂 Repository Structure

### **1. Presentation**

-   `Aerohack_Design Challenge_Electronics.pptx`  
    Full final presentation with:
    
    -   System workflow
        
    -   Module explanations
        
    -   Engineering reasoning
        
    -   Simulations & visualizations
        
    -   Final conclusions
        

----------

### **2. Simulations** (`Simulations/`)

Contains all Python & MATLAB implementations for each module:

-   `module_1_path_distortion.ipynb`
    
-   `Module1_PathDistortion_3D.m`
    
-   `module2_doppler_fft.ipynb`
    
-   `module4_ir_pulse.ipynb`
    
-   `PNG/` outputs for each module
    
-   `PathDistortion3D.gif`
    

Simulated subsystems:

-   IMU-based path flicker
    
-   Doppler-based bird approach analysis
    
-   IR-pulse deterrence
    
-   3D trajectory distortion visualizations
    

----------

### **3. Diagrams & Visuals** (`Diagrams_Visuals/`)

-   `FlowChart.png`
    
-   `System Workflow.png`
    
-   `Polarization Flicker.png`
    
-   `Plasma Arc Flicker.png`
    

High-clarity diagrams used in the presentation.

----------

### **4. Cost & Weight Analysis**

-   `Bill of Materials.pdf`  
    Contains:
    
    -   Full component list
        
    -   Cost breakdown
        
    -   Weight justification
        
    -   Power considerations
        

----------

### **5. Documentation**

-   `README_Notes/README.txt` (original notes)
    
-   `My Journey_Aerohack2025.txt` — Personal reflection & thought process.
    

----------

##  How to Run the Simulations

### **Python files (.ipynb)**

Open in:

-   Jupyter Notebook
    
-   VS Code with Python extension
    
-   Google Colab
    

Required packages:

```
numpy scipy
matplotlib
pyplot
````

### **MATLAB (.m file)**

-   Open `Module1_PathDistortion_3D.m` in MATLAB R2023/R2024.
    
-   Run script to generate:
    
    -   3D flight path distortions
        
    -   Flicker animation (`PathDistortion3D.gif`)
        

----------

##  Key Features of the Solution

 - **Bio-inspired deterrence** (flicker + polarization + IR)  
 - **Sensor-based detection** for early bird approach  
 - **3-module signal pipeline** (path distortion → Doppler → IR)  
 - **Weather-resilient design**  
 - **Operates within cost + weight constraints**  
 - **Optimized for medical drone missions**  
 - **Simulation-driven validation**

----------

## 🏁 Final Outcome

A fully validated concept that:

-   Works within real-world constraints
    
-   Uses biology + physics + engineering
    
-   Provides measurable deterrence effect
    
-   Supports safe medical delivery flights
    

This repo contains every simulation, diagram, plot, and workflow needed to understand and reproduce the solution.
