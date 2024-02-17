clc; clear;
% Define the folder containing the PNG images
folder = 'C:/Users/Mr. Ashis Pradhan/Documents/MATLAB/2023_Journal_chatacter/ip1'; 


% Get a list of all PNG files in the folder
fileList = dir(fullfile(folder, '*.png'));

% Preallocate a cell array to store the images
numImages = numel(fileList);

%Dimension of image 28x28 (784, if flattened), 8 bit
input_samples=zeros(numImages, 784, 'uint8');


% Read and store the images
for i = 1:numImages
    filename = fullfile(folder, fileList(i).name);
    ip = imread(filename);
    
    % Reshape the input patterns to a 1 x 784(28x28) image
    input_samples(i,:)= reshape(ip, [1 784]);
end
total_rows_db=i;

% Read and store the images
for count=1: total_rows_db
    
    temp=input_samples(count,:);
    ip = reshape(temp, [28 28]);
    ip = imrotate(ip,315);
    %input_samples(i,:)= reshape(ip, [1 784]);
    fname=strcat('C:/Users/Mr. Ashis Pradhan/Documents/MATLAB/2023_Journal_chatacter/ip/', int2str(count), '.png');
    imwrite(ip, fname);
    
end