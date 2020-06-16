Linear regression in python R and sas                                                                              
                                                                                                                   
   Model Y = a*x + b                                                                                               
                                                                                                                   
   Three Solutions                                                                                                 
                                                                                                                   
         a. SAS                                                                                                    
         b. R                                                                                                      
         c. Python                                                                                                 
                                                                                                                   
github                                                                                                             
https://tinyurl.com/yb5bsgvq                                                                                       
https://github.com/rogerjdeangelis/utl-linear-regression-in-python-R-and-sas                                       
                                                                                                                   
related to                                                                                                         
https://communities.sas.com/t5/SAS-Programming/python-to-SAS/m-p/523938                                            
                                                                                                                   
*_                   _                                                                                             
(_)_ __  _ __  _   _| |_                                                                                           
| | '_ \| '_ \| | | | __|                                                                                          
| | | | | |_) | |_| | |_                                                                                           
|_|_| |_| .__/ \__,_|\__|                                                                                          
        |_|                                                                                                        
;                                                                                                                  
                                                                                                                   
options validvarname=upcase;                                                                                       
                                                                                                                   
libname sd1 "d:/sd1";                                                                                              
                                                                                                                   
data sd1.have;                                                                                                     
  set sashelp.class(keep=height weight rename=(height=y weight=x));                                                
run;quit;                                                                                                          
                                                                                                                   
libname sd1 clear;                                                                                                 
                                                                                                                   
SD1.HAVE total obs=19                                                                                              
                                                                                                                   
Obs      Y       X                                                                                                 
                                                                                                                   
  1    51.3     50.5                                                                                               
  2    56.3     77.0                                                                                               
  3    56.5     84.0                                                                                               
  4    57.3     83.0                                                                                               
  5    57.5     85.0                                                                                               
  6    59.0     99.5                                                                                               
  7    59.8     84.5                                                                                               
  8    62.5    112.5                                                                                               
  9    62.5     84.0                                                                                               
 10    62.8    102.5                                                                                               
 11    63.5    102.5                                                                                               
 12    64.3     90.0                                                                                               
 13    64.8    128.0                                                                                               
 14    65.3     98.0                                                                                               
 15    66.5    112.0                                                                                               
 16    66.5    112.0                                                                                               
 17    67.0    133.0                                                                                               
 18    69.0    112.5                                                                                               
 19    72.0    150.0                                                                                               
                                                                                                                   
*            _               _                                                                                     
  ___  _   _| |_ _ __  _   _| |_                                                                                   
 / _ \| | | | __| '_ \| | | | __|                                                                                  
| (_) | |_| | |_| |_) | |_| | |_                                                                                   
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                  
                |_|                                                                                                
  __ _     ___  __ _ ___                                                                                           
 / _` |   / __|/ _` / __|                                                                                          
| (_| |_  \__ \ (_| \__ \                                                                                          
 \__,_(_) |___/\__,_|___/                                                                                          
;                                                                                                                  
                                                                                                                   
Report and four table outputs                                                                                      
                                                                                                                   
The REG Procedure                                                                                                  
Model: Weight_Model                                                                                                
Dependent Variable: Y                                                                                              
                                                                                                                   
Number of Observations Read          19                                                                            
Number of Observations Used          19                                                                            
                                                                                                                   
                                                                                                                   
                             Analysis of Variance                                                                  
                                                                                                                   
                                    Sum of           Mean                                                          
Source                   DF        Squares         Square    F Value    Pr > F                                     
                                                                                                                   
Model                     1      364.57626      364.57626      57.08    <.0001                                     
Error                    17      108.58795        6.38753                                                          
Corrected Total          18      473.16421                                                                         
                                                                                                                   
                                                                                                                   
Root MSE              2.52736    R-Square     0.7705                                                               
Dependent Mean       62.33684    Adj R-Sq     0.7570                                                               
Coeff Var             4.05435                                                                                      
                                                                                                                   
                                                                                                                   
                        Parameter Estimates                                                                        
                                                                                                                   
                     Parameter       Standard                                                                      
Variable     DF       Estimate          Error    t Value    Pr > |t|                                               
                                                                                                                   
Intercept     1       42.57014        2.67989      15.89      <.0001                                               
X             1        0.19761        0.02616       7.55      <.0001                                               
                                                                                                                   
                                                                                                                   
WORK.WANT total obs=19                                                                                             
                                                                                                                   
Obs      Y       X        PRED     RESIDUAL                                                                        
                                                                                                                   
  1    51.3     50.5    52.5497    -1.24970                                                                        
  2    56.3     77.0    57.7865    -1.48650                                                                        
  3    56.5     84.0    59.1698    -2.66980                                                                        
  4    57.3     83.0    58.9722    -1.67219                                                                        
  5    57.5     85.0    59.3674    -1.86742                                                                        
 .....                                                                                                             
                                                                                                                   
WORK ANOVA total obs=3                                                                                             
                                                                                                                   
   MODEL        DEPENDENT    SOURCE             DF       SS           MS     FVALUE    PROBF                       
                                                                                                                   
Weight_Model        Y        Model               1    364.576    364.576    57.0763      0                         
Weight_Model        Y        Error              17    108.588      6.388      _          _                         
Weight_Model        Y        Corrected Total    18    473.164       _         _          _                         
                                                                                                                   
                                                                                                                   
WORK.PARAMETERS total obs=2                                                                                        
                                                                                                                   
   MODEL        DEPENDENT    VARIABLE     DF    ESTIMATE     STDERR     TVALUE    PROBT                            
                                                                                                                   
Weight_Model        Y        Intercept     1     42.5701    2.67989    15.8850      0                              
Weight_Model        Y        X             1      0.1976    0.02616     7.5549      0                              
                                                                                                                   
                                                                                                                   
WORK.FITSTAT total obs=3                                                                                           
                                                                                                                   
   MODEL        DEPENDENT    LABEL1            CVALUE1     NVALUE1     LABEL2     CVALUE2    NVALUE2               
                                                                                                                   
Weight_Model        Y        Root MSE           2.52736     2.5274    R-Square    0.7705     0.77051               
Weight_Model        Y        Dependent Mean    62.33684    62.3368    Adj R-Sq    0.7570     0.75701               
Weight_Model        Y        Coeff Var          4.05435     4.0544                           0.00000               
                                                                                                                   
*_        ____                                                                                                     
| |__    |  _ \                                                                                                    
| '_ \   | |_) |                                                                                                   
| |_) |  |  _ <                                                                                                    
|_.__(_) |_| \_\                                                                                                   
                                                                                                                   
;                                                                                                                  
                                                                                                                   
d:/txt/model_summary.txt                                                                                           
                                                                                                                   
Call:                                                                                                              
lm(formula = clas$Y ~ clas$X)                                                                                      
                                                                                                                   
Residuals:                                                                                                         
    Min      1Q  Median      3Q     Max                                                                            
-3.2328 -1.8602 -0.2124  1.7970  4.1982                                                                            
                                                                                                                   
Coefficients:                                                                                                      
            Estimate Std. Error t value Pr(>|t|)                                                                   
(Intercept) 42.57014    2.67989  15.885 1.24e-11 ***                                                               
clas$X       0.19761    0.02616   7.555 7.89e-07 ***                                                               
---                                                                                                                
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1                                                     
                                                                                                                   
Residual standard error: 2.527 on 17 degrees of freedom                                                            
Multiple R-squared:  0.7705,      Adjusted R-squared:  0.757                                                       
F-statistic: 57.08 on 1 and 17 DF,  p-value: 7.887e-07                                                             
                                                                                                                   
                                                                                                                   
                                                                                                                   
WORK.WANT total obs=19                                                                                             
                                                                                                                   
   Y       X      FITTED      RESID                                                                                
                                                                                                                   
 51.3     50.5   52.5497    -1.24970                                                                               
 56.3     77.0   57.7865    -1.48650                                                                               
 56.5     84.0   59.1698    -2.66980                                                                               
 57.3     83.0   58.9722    -1.67219                                                                               
 57.5     85.0   59.3674    -1.86742                                                                               
 59.0     99.5   62.2328    -3.23283                                                                               
...                                                                                                                
                                                                                                                   
WORK.COEF total obs=2                                                                                              
                                                                                                                   
Obs    PARAMTR       VALUE                                                                                         
                                                                                                                   
 1     INTERCEPT    42.5701                                                                                        
 2     SLOPE         0.1976                                                                                        
                                                                                                                   
*                     _   _                                                                                        
  ___     _ __  _   _| |_| |__   ___  _ __                                                                         
 / __|   | '_ \| | | | __| '_ \ / _ \| '_ \                                                                        
| (__ _  | |_) | |_| | |_| | | | (_) | | | |                                                                       
 \___(_) | .__/ \__, |\__|_| |_|\___/|_| |_|                                                                       
         |_|    |___/                                                                                              
;                                                                                                                  
                                                                                                                   
                            OLS Regression Results                                                                 
==============================================================================                                     
Dep. Variable:                      Y   R-squared:                       0.771                                     
Model:                            OLS   Adj. R-squared:                  0.757                                     
Method:                 Least Squares   F-statistic:                     57.08                                     
Date:                Tue, 16 Jun 2020   Prob (F-statistic):           7.89e-07                                     
Time:                        19:12:32   Log-Likelihood:                -43.519                                     
No. Observations:                  19   AIC:                             91.04                                     
Df Residuals:                      17   BIC:                             92.93                                     
Df Model:                           1                                                                              
Covariance Type:            nonrobust                                                                              
==============================================================================                                     
                 coef    std err          t      P>|t|      [0.025      0.975]                                     
------------------------------------------------------------------------------                                     
Intercept     42.5701      2.680     15.885      0.000      36.916      48.224                                     
X              0.1976      0.026      7.555      0.000       0.142       0.253                                     
==============================================================================                                     
Omnibus:                        3.056   Durbin-Watson:                   2.238                                     
Prob(Omnibus):                  0.217   Jarque-Bera (JB):                1.596                                     
Skew:                           0.408   Prob(JB):                        0.450                                     
Kurtosis:                       1.837   Cond. No.                         474.                                     
==============================================================================                                     
                                                                                                                   
                                                                                                                   
Up to 40 obs from WANT total obs=19                                                                                
                                                                                                                   
Obs      Y       X      PREDICT                                                                                    
                                                                                                                   
  1    51.3     50.5    52.5497                                                                                    
  2    56.3     77.0    57.7865                                                                                    
  3    56.5     84.0    59.1698                                                                                    
  4    57.3     83.0    58.9722                                                                                    
  5    57.5     85.0    59.3674                                                                                    
  6    59.0     99.5    62.2328                                                                                    
  7    59.8     84.5    59.2686                                                                                    
  8    62.5    112.5    64.8018                                                                                    
  9    62.5     84.0    59.1698                                                                                    
 ...                                                                                                               
                                                                                                                   
*          _       _   _                                                                                           
 ___  ___ | |_   _| |_(_) ___  _ __  ___                                                                           
/ __|/ _ \| | | | | __| |/ _ \| '_ \/ __|                                                                          
\__ \ (_) | | |_| | |_| | (_) | | | \__ \                                                                          
|___/\___/|_|\__,_|\__|_|\___/|_| |_|___/                                                                          
  __ _     ___  __ _ ___                                                                                           
 / _` |   / __|/ _` / __|                                                                                          
| (_| |_  \__ \ (_| \__ \                                                                                          
 \__,_(_) |___/\__,_|___/                                                                                          
                                                                                                                   
;                                                                                                                  
                                                                                                                   
options validvarname=upcase;                                                                                       
libname sd1 "d:/sd1";                                                                                              
data sd1.class;                                                                                                    
  set sashelp.class(keep=name age weight height);                                                                  
run;quit;                                                                                                          
                                                                                                                   
ods output ANOVA              = anova;                                                                             
ods output ParameterEstimates = parameters;                                                                        
ods output FitStatistics      = fitstat;                                                                           
proc reg data=sd1.have;                                                                                            
 Weight_Model: model y=x ;                                                                                         
 output out=want p=pred r=residual;                                                                                
run;quit;                                                                                                          
                                                                                                                   
*_        ____                                                                                                     
| |__    |  _ \                                                                                                    
| '_ \   | |_) |                                                                                                   
| |_) |  |  _ <                                                                                                    
|_.__(_) |_| \_\                                                                                                   
                                                                                                                   
;                                                                                                                  
                                                                                                                   
options validvarname=upcase;                                                                                       
libname sd1 "d:/sd1";                                                                                              
data sd1.class;                                                                                                    
  set sashelp.class(keep=name age weight height);                                                                  
run;quit;                                                                                                          
                                                                                                                   
%utlfkil(d:/txt/model_summary.txt);                                                                                
%utlfkil(d:/xpt/want.xpt);                                                                                         
                                                                                                                   
proc datasets lib=work nolist;                                                                                     
  delete want coef;                                                                                                
run;quit;                                                                                                          
                                                                                                                   
%utl_submit_r64('                                                                                                  
library(haven);                                                                                                    
library(SASxport);                                                                                                 
library(data.table);                                                                                               
library(backports);                                                                                                
clas<-read_sas("d:/sd1/have.sas7bdat");                                                                            
model <- lm(clas$Y ~ clas$X);                                                                                      
want<-data.table(model$residuals);                                                                                 
want$fitted  <-  model$fitted.values ;                                                                             
want$resid   <-  model$residuals     ;                                                                             
want$Y       <-  clas$Y              ;                                                                             
want$X       <-  clas$X              ;                                                                             
want<-want[,2:5];                                                                                                  
coef    <-  as.data.table(model$coefficients)  ;                                                                   
coef    <-  cbind(c("INTERCEPT","SLOPE"),coef);                                                                    
colnames(coef)<-c("PARAMTR","VALUE");                                                                              
write.xport(want, coef,file="d:/xpt/want.xpt");                                                                    
sink("d:/txt/model_summary.txt");                                                                                  
summary(model);                                                                                                    
sink();                                                                                                            
');                                                                                                                
                                                                                                                   
libname xpt xport "d:/xpt/want.xpt";                                                                               
                                                                                                                   
data want;                                                                                                         
  set xpt.want;                                                                                                    
run;quit;                                                                                                          
                                                                                                                   
data coef;                                                                                                         
  set xpt.coef;                                                                                                    
run;quit;                                                                                                          
                                                                                                                   
libname xpt clear;                                                                                                 
                                                                                                                   
*                     _   _                                                                                        
  ___     _ __  _   _| |_| |__   ___  _ __                                                                         
 / __|   | '_ \| | | | __| '_ \ / _ \| '_ \                                                                        
| (__ _  | |_) | |_| | |_| | | | (_) | | | |                                                                       
 \___(_) | .__/ \__, |\__|_| |_|\___/|_| |_|                                                                       
         |_|    |___/                                                                                              
;                                                                                                                  
                                                                                                                   
%utlfkil(d:/txt/aov.txt);                                                                                          
%utlfkil(d:/xpt/want.xpt);                                                                                         
                                                                                                                   
proc datasets lib=work nolist;                                                                                     
  delete want ;                                                                                                    
run;quit;                                                                                                          
                                                                                                                   
%utl_submit_py64_38("                                                                                              
import pandas as pd;                                                                                               
import numpy as np;                                                                                                
import statsmodels.api as sm;                                                                                      
import xport;                                                                                                      
import xport.v56;                                                                                                  
from sas7bdat import SAS7BDAT;                                                                                     
with SAS7BDAT('d:/sd1/have.sas7bdat') as m:;                                                                       
.   clas = m.to_data_frame();                                                                                      
lm = sm.OLS.from_formula('Y ~ X', clas);                                                                           
result = lm.fit();                                                                                                 
print(result.summary());                                                                                           
predictions = result.predict(clas['X']);                                                                           
print(predictions);                                                                                                
clas['PREDICT']=predictions;                                                                                       
f = open('d:/txt/aov.txt', 'a');                                                                                   
print(result.summary(), file=f);                                                                                   
f.close();                                                                                                         
print(clas);                                                                                                       
want = xport.Dataset(clas, name='WANT', label='Linear Regression');                                                
with open('d:/xpt/want.xpt', 'wb') as f:;                                                                          
.   xport.v56.dump(want, f);                                                                                       
");                                                                                                                
                                                                                                                   
                                                                                                                   
libname xpt xport "d:/xpt/want.xpt";                                                                               
                                                                                                                   
data want;                                                                                                         
  set xpt.want;                                                                                                    
run;quit;                                                                                                          
                                                                                                                   
libname xpt clear;                                                                                                 
                                                                                                                   
                                                                                                                   
