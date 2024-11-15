#!/bin/bash

# Define the filename
filename="table.tex"

# Create and write the LaTeX code to table.tex
cat > "$filename" << 'EOF'
\documentclass{article}
\usepackage{pgfplotstable}
\usepackage{booktabs}
\usepackage{longtable}

\begin{document}
	
	\pgfplotstabletypeset[
	col sep=comma,
	header=true,
	columns={age,sex,cp,trestbps,chol,fbs,restecg,thalach,exang,oldpeak,slope,ca,thal,target},
	columns/age/.style={int detect, column type=r},
	columns/sex/.style={int detect, column type=r},
	columns/cp/.style={int detect, column type=r},
	columns/trestbps/.style={int detect, column type=r},
	columns/chol/.style={int detect, column type=r},
	columns/fbs/.style={int detect, column type=r},
	columns/restecg/.style={int detect, column type=r},
	columns/thalach/.style={int detect, column type=r},
	columns/exang/.style={int detect, column type=r},
	columns/oldpeak/.style={fixed, precision=2, column type=r},
	columns/slope/.style={int detect, column type=r},
	columns/ca/.style={int detect, column type=r},
	columns/thal/.style={int detect, column type=r},
	columns/target/.style={int detect, column type=r},
	every head row/.style={before row=\toprule, after row=\midrule},
	every last row/.style={after row=\bottomrule},
	font=\small,
	begin table=\begin{longtable},
		end table=\end{longtable}
	]{heart.csv}
	
\end{document}
EOF

# Confirm completion
echo "LaTeX code has been written to $filename."

