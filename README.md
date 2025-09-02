# 🚀 ALU Functional Verification Project

This project demonstrates the **functional verification** of a simple 4-bit Arithmetic Logic Unit (ALU) using **Verilog**.  
The ALU supports basic operations like ADD, SUB, AND, OR, XOR, and NOT.  
Verification is done using a **self-checking testbench**.

---

## 📂 Project Structure

---

## 🔧 ALU Design (alu.v)
- 4-bit inputs `a` and `b`  
- 3-bit opcode `op` to select operation  
- Supported operations:
  - `000` → ADD  
  - `001` → SUB  
  - `010` → AND  
  - `011` → OR  
  - `100` → XOR  
  - `101` → NOT  

---

## 🧪 Verification (tb_alu.v)
- Self-checking testbench  
- Applies test vectors automatically  
- Displays **PASS/FAIL** for each operation in simulation log  

Example output from simulation:

---

## ▶️ Run on EDA Playground
You can simulate this project online:  

👉 [Click here to open on EDA Playground](https://edaplayground.com/)  

Steps:  
1. Create a new playground.  
2. Paste `alu.v` in **File 1 (alu.v)**.  
3. Paste `tb_alu.v` in **File 2 (tb_alu.v)**.  
4. Select **Icarus Verilog (iverilog)** as the simulator.  
5. Click **Run**.  

---

## 🌟 Author
- **Kasarla Jathin Krishna**  
B.Tech – Electronics and Communication Engineering (ECE)  
Passionate about **VLSI Functional Verification**  

---

## 📌 License
This project is open-source. You can freely use and modify it for learning.
