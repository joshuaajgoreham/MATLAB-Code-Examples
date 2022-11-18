%% Using an API to import data
% SAP Sailing Analysis Example

%This code obtains data using an API from SAP Sailing.
%The system function uses MATLAB to run the built-in "curl" app from the system
%(i.e., computer). The end of the code writes the data to a file on the
%system. Key thing here is you need to run MATLAB as the Administrator
%(right-click on MATLAB icon on desktop to do this). 

% Here is example data from Race 4 at the 2022 49erFX World Championships
system(['curl "https://www.sapsailing.com/sailingserver/api/v1/regattas/', ...
    '49erFX%20Worlds%202022%20-%20Halifax/races/R4%20-%2049FX/competitors/legs">C:\Users\legs_49erFXWorldsR4.json']);
%this code imports the json data into the workspace as a structure
Race4_jsonData = jsondecode(fileread('legs_49erFXWorldsR4.json'));