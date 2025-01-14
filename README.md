# Computer Vision, Machine Learning and Deep Learning Projects

Table of Contents:

1. [Deep Learning](#deep-learning)
    * [VAE for mnist dataset](#vae-for-mnist-dataset)
    * [GAN for MNIST and CIFAR-10 dataset](#GAN-for-MNIST-and-CIFAR-10-dataset)
    * [skin_diseases_for_10_case](skin-diseases-for-10-case)
    * [Read Number from Image by CNN](#read-number-from-image-by-cnn)
    * [Nationality Prediction from Names Using RNN](#nationality-Prediction-from-Names-Using-RNN)
    * [Supervised vs. Unsupervised Learning on the MNIST and USA_Housing Dataset](#Supervised-vs.-Unsupervised-Learning-on-the-MNIST-and-USA_Housing-Dataset)
    * [Advanced Classifier Model Summary](Advanced-Classifier-Model-Summary)
    * [Image Classification](#image-classification)
    * [Read Text by Pytesseract](#read-text-by-pytesseract)
    * [A Simple Method to Remove Objects from Photos](#a-simple-method-to-remove-objects-from-photos)
    * [Text Classification for Hotel Comments (NLP)](#text-classification-for-hotel-comments-nlp)
    * [Student Grade Prediction Using Multi-Layer Perceptron](#Student-Grade-Prediction-Using-Multi-Layer-Perceptron)
    * [Cancer Prediction using Logistic Regression](#cancer-prediction-using-logistic-regression)
2. [Computer Vision](#Computer-Vision)
    * [Seam Carving for Content-Aware Image Resizing](#seam-carving-for-content-aware-image-resizing)
    * [Detecting Improper Sitting with Computer Vision](#detecting-improper-sitting-with-computer-vision)
    * [Body Posture Detection with OpenCV](#body-posture-detection-with-opencv)
    * [Eye Tracking](#Eye-Tracking)
    * [Hand Gesture Recognition with OpenCV and CVZone](#hand-gesture-recognition-with-opencv-and-cvzone)
    * [Picture Colorization](#picture-colorization)
    * [Face Detection with OpenCV](#face-detection-with-opencv)
    * [Eye and Smile Detection with OpenCV](#eye-and-smile-detection-with-opencv)
    * [Moving Object Detection with OpenCV](#moving-object-detection-with-opencv)
    * [Template Matching with OpenCV](#template-matching-with-opencv)
3. [Computer Vision Assignment](#computer-vision-assignment)
    * [Steganography with MATLAB](#steganography-with-matlab)
    * [Image Resizing with MATLAB](#image-resizing-with-matlab)
    * [Image Denoising and Persian Number Recognition with MATLAB](#image-denoising-and-persian-number-recognition-with-matlab)
    * [Jigsaw Puzzle Solver with MATLAB](#jigsaw-puzzle-solver-with-matlab)


## **Deep Learning**



<hr style="border: 2px solid #000;">


### VAE for mnist dataset

![Annotation 2024-09-10 140639](https://github.com/user-attachments/assets/f1e9b659-b5e0-476c-810a-50431ebdaf43)


A **Variational Autoencoder (VAE)** is a type of generative model that can learn to encode data (like images) into a compressed latent space and then decode it back to reconstruct the original input. VAEs are particularly useful for generating new data samples similar to the input data. Let's discuss the concept and how a VAE can be applied to the MNIST dataset.

#### Overview of VAE:

1. **Encoder**: This part of the model takes an input (e.g., an MNIST digit image) and maps it to a distribution in the latent space (usually a normal distribution). Instead of encoding the input directly as a single point in the latent space, the encoder outputs parameters of a distribution (mean and variance).

2. **Latent Space**: This is a lower-dimensional space where the data is represented. A VAE learns to represent the input data distribution in this space, making it easier to sample new data points.

3. **Decoder**: The decoder maps points from the latent space back to the original data space. Given a point in the latent space, the decoder tries to reconstruct an image (e.g., an MNIST digit).

4. **Loss Function**: The VAE uses a combination of two losses:
   - **Reconstruction Loss**: Measures how well the reconstructed output matches the input (e.g., pixel-wise difference between original and generated images).
   - **KL Divergence Loss**: Measures how close the learned latent space distribution is to a prior distribution (typically a standard normal distribution).

#### Applying VAE to MNIST

#### Steps:

1. **Load the MNIST dataset**:
   MNIST is a dataset of handwritten digits. Each image is 28x28 pixels, grayscale, and labeled with the corresponding digit (0-9).

2. **Define the Encoder**:
   The encoder takes the input image and outputs two vectors, representing the mean and log variance of the latent distribution.

3. **Latent Sampling**:
   Use the mean and variance to sample from the latent space using the "reparameterization trick," which allows gradients to flow during backpropagation.

4. **Define the Decoder**:
   The decoder takes samples from the latent space and tries to reconstruct the original image.

5. **Train the VAE**:
   Train the model using both reconstruction loss and KL divergence to ensure that the latent space is organized and can generate valid images.
   
-----
### GAN for MNIST and CIFAR-10 dataset

![Annotation 2024-09-10 141817](https://github.com/user-attachments/assets/1267069a-7934-47a7-9a7b-0f58a8816d25)


A **Generative Adversarial Network (GAN)** is a type of neural network architecture used to generate new data points from an existing dataset. GANs consist of two components:

1. **Generator**: Generates fake samples from random noise.
2. **Discriminator**: Distinguishes between real and fake samples.

These two networks are trained simultaneously: the generator tries to fool the discriminator by generating realistic data, while the discriminator tries to correctly identify real vs. fake data. Over time, the generator gets better at creating realistic data.

Let's walk through how to implement a GAN for both the **MNIST** (handwritten digits) and **CIFAR-10** (natural images) datasets using TensorFlow/Keras.

#### Steps:
1. **Load the Dataset**: For both MNIST and CIFAR-10.
2. **Build the Generator**: A neural network that generates fake images from random noise.
3. **Build the Discriminator**: A neural network that classifies images as real or fake.
4. **GAN Model**: The combination of generator and discriminator.
5. **Training Loop**: Train the generator and discriminator iteratively.
   
------
### skin_diseases_for_10_case

This project aims to classify skin diseases into 10 categories using a deep learning model. The model is built on EfficientNet V2 and fine-tuned for the skin disease dataset.

![photo_2024-12-01_16-09-02](https://github.com/user-attachments/assets/f8ed99cd-6f88-4429-a06c-07c5845bd297)


#### Features

- **Dataset**: The dataset contains images of skin diseases with labels for each class.
- **Model**: The model uses EfficientNet V2 as a base and adds custom layers for classification.
- **Training**: The model is trained on a subset of the dataset, with separate training, validation, and test sets.
- **Prediction**: The model can predict the class of a given skin disease image.

#### Dataset

The dataset contains images of skin diseases and their corresponding labels. It is used for training and evaluating the model. 

The dataset is available in the following directory:
```
/kaggle/input/skin-diseases-for-10-case/IMG_CLASSES
```
------

### Read Number from Image by CNN

![Annotation 2024-07-19 182319](https://github.com/user-attachments/assets/9a5e8e86-1e40-49b4-b574-f910d4dcc2ae)

#### Overview

This project utilizes a Convolutional Neural Network (CNN) to read and classify numbers and symbols from images. The dataset contains images labeled with various classes, including digits and special characters.

#### Dataset

The dataset consists of 60,000 images with the following classes:

- **Digits**: '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'
- **Special Characters**: 'dot', 'minus', 'plus', 'slash', 'x', 'y', 'z', 'w'

Each image in the dataset is labeled according to one of these classes.

#### Instructions

1. **Data Preparation**: Ensure the dataset of 60,000 images is organized and labeled correctly. The images should be accessible in a format suitable for loading into the CNN model.

2. **Loading the Data**: Use `PyTorch` library  to load and preprocess the images. Normalize the images and perform any necessary data augmentation.

3. **Model Architecture**: Define the architecture of the CNN. Typical layers include convolutional layers, activation functions, pooling layers, and fully connected layers.

4. **Training the Model**: Split the dataset into training and validation sets. Train the CNN model using the training set, monitoring its performance on the validation set.

5. **Evaluation**: Evaluate the model's performance using metrics such as accuracy and loss. Fine-tune the model parameters as needed.

6. **Prediction**: Use the trained model to predict classes for new images.

----------------

### Nationality Prediction from Names Using RNN

![photo_2024-07-19_18-28-18](https://github.com/user-attachments/assets/48a2fd97-1c0a-40ad-8ed7-ba9dc225c6bd)

#### Overview

This project uses a Recurrent Neural Network (RNN) to predict the nationality of a person based on their name. The RNN model is trained to classify names into different nationalities by learning patterns in character sequences.

#### Dataset

The dataset consists of names labeled with their corresponding nationalities. Each name is used to train the RNN to recognize patterns that are indicative of different nationalities.

#### Instructions

1. **Data Preparation**: Ensure the dataset is structured with names and their associated nationalities. The dataset should be in a format compatible with the provided code, typically CSV or similar.

2. **Loading the Data**: Use the provided Jupyter Notebook to load and preprocess the dataset. This involves encoding names and nationalities into formats suitable for the RNN model.

3. **Model Architecture**: The notebook defines an RNN model that includes layers such as embedding, LSTM/GRU, and dense layers. Review and adjust the architecture as needed for your dataset.

4. **Training the Model**: Split the data into training and validation sets. Train the RNN model using the training set, monitoring its performance on the validation set.

5. **Evaluation**: Evaluate the model's performance using accuracy and other relevant metrics. Adjust model parameters and hyperparameters to improve performance.

6. **Prediction**: Use the trained RNN model to predict the nationality of new names.

----------

### Supervised vs. Unsupervised Learning on the MNIST and USA_Housing Dataset

![photo_2024-11-26_21-19-05](https://github.com/user-attachments/assets/d28c8eb1-108d-4186-97c5-d5dd5f6ae0b7)

#### Overview  
This project explores the differences between supervised and unsupervised learning using the USA_Housing and MNIST dataset, which consists of handwritten digits (0-9). We will implement and compare the performance of:

1. Supervised Learning: Using algorithms like Logistic Regression to classify the digits.
2. Unsupervised Learning: Applying techniques such as K-Means Clustering and Principal Component Analysis (PCA) to uncover patterns without labeled data.

#### Objectives  
- Understand the key differences between supervised and unsupervised learning.
- Implement supervised learning models to classify MNIST digits.
- Use unsupervised learning models to group similar digits and visualize data.

----------
### Advanced Classifier Model Summary


#### Overview  

![photo_2024-11-26_21-32-32](https://github.com/user-attachments/assets/c7fe629f-c1ad-4eeb-a52a-69ed12563e22)


The AdvancedClassifier class is designed for binary classification using PyTorch. It employs a neural network architecture.

#### Datasets

- Utilizes synthetic datasets generated by:
  - make_blobs for clustering.
  - make_moons for non-linear classification tasks.

#### Objectives  

This setup aims to effectively learn from complex patterns in the provided datasets.

-------

### image classification

![photo1658265613](https://user-images.githubusercontent.com/98982133/179850660-1c54cdb5-15b8-414f-bcfe-b1f951fd5183.jpeg)

#### Overview

This project focuses on image classification using TensorFlow. The goal is to recognize and classify different types of animals or objects from images. For example, the model can identify whether an image contains a dog, cat, or other specified categories.

#### Dataset

The dataset consists of labeled images of various animals or objects(CIFAR-10). Each image is tagged with its corresponding class label, such as 'dog', 'cat', or other categories. Ensure that the dataset is well-organized and split into training and test sets.

#### Instructions

1. **Data Preparation**: Organize and preprocess the dataset. This may involve resizing images, normalizing pixel values, and augmenting the data to improve model performance. Ensure that images are labeled correctly and stored in a structured format.

2. **Loading the Data**: Use TensorFlow and `tf.data` API to load and preprocess the images. This involves creating a dataset pipeline that efficiently handles image loading, preprocessing, and batching.

3. **Model Architecture**: Define the architecture of the convolutional neural network (CNN) using TensorFlow. Typical architectures include layers such as convolutional layers, pooling layers, and fully connected layers.

4. **Training the Model**: Train the CNN model on the training dataset. Use techniques such as dropout and regularization to prevent overfitting. Monitor the model's performance on the validation set and adjust hyperparameters as necessary.

5. **Evaluation**: Evaluate the model's accuracy and performance on the test set using metrics such as accuracy, precision, recall, and F1 score. Analyze the results to ensure the model meets the desired performance criteria.

6. **Prediction**: Use the trained model to classify new images. Implement a function to preprocess the input image and obtain predictions from the model.

----------------------

### Read text by pytesseract
![photo1658265897](https://user-images.githubusercontent.com/98982133/179851338-dfd68156-6ddf-4d38-8355-9e426c3007c7.jpeg)
![photo1658265912](https://user-images.githubusercontent.com/98982133/179851400-2e015c88-2396-4a6e-9aba-29eb41a419b1.jpeg)

This project uses PyTesseract, an OCR (Optical Character Recognition) tool, to extract text from images. PyTesseract is a Python wrapper for Google's Tesseract-OCR Engine.

-------

### A Simple Method to Remove Objects from Photos

![remove](https://user-images.githubusercontent.com/98982133/183724316-c727b5d3-91a4-44b2-b5b5-f48ef6e105ea.png)

-------

### Text Classification for Hotel Comments (NLP)

![Annotation 2024-09-10 162829](https://github.com/user-attachments/assets/496bdb8e-9a8e-4fc6-9ac9-009b1034ffe0)


This project focuses on classifying hotel comments to determine their sentiment rating on a scale from 1 to 5. The goal is to develop a natural language processing (NLP) model that can accurately predict the rating based on the text of the comments.

#### Overview

The dataset used for this project consists of 15,000 hotel comments, which are stored in a CSV file. Each comment is associated with a rating from 1 to 5, representing the sentiment of the review.

#### Data

- **File**: `word.csv`
- **Columns**: 
  - `comment` - The text of the hotel review.
  - `rating` - The rating assigned to the review (1 to 5).

#### Steps

1. **Data Loading**: Load the data from the CSV file using a library like pandas.
2. **Preprocessing**: 
   - Clean the text data (e.g., remove punctuation, convert to lowercase).
   - Tokenize the text and possibly apply techniques like stemming or lemmatization.
3. **Feature Extraction**: Convert text data into numerical features using methods like TF-IDF or word embeddings.
4. **Model Training**: Train a classification model (e.g., Logistic Regression, Random Forest, or a Neural Network) to predict the rating.
5. **Evaluation**: Evaluate the model’s performance using metrics such as accuracy, precision, recall, and F1 score.
6. **Prediction**: Use the trained model to predict ratings for new comments.

------------

### Cancer Prediction using logistic regression

![Annotation 2024-07-19 182442](https://github.com/user-attachments/assets/5993291c-c416-4225-bdae-e974f8357d35)


#### Overview

This project implements a logistic regression model to predict cancer diagnoses based on patient data. The data is read from a CSV file and includes various patient attributes related to cancer.

#### Dataset

The dataset used for training and testing the model includes the following columns:

- **S/N**: Serial number
- **Year**: Year of data collection
- **Age**: Age of the patient
- **Menopause**: Menopause status (1 for post-menopausal, 0 for pre-menopausal)
- **Tumor Size (cm)**: Size of the tumor in centimeters
- **Inv-Nodes**: Number of lymph nodes with cancer
- **Breast**: Side of the breast (Left or Right)
- **Metastasis**: Presence of metastasis (1 for yes, 0 for no)
- **Breast Quadrant**: Quadrant of the breast where the tumor is located
- **History**: Family history of cancer (1 for yes, 0 for no)
- **Diagnosis Result**: Result of the diagnosis (Benign or Malignant)

#### Instructions

1. **Data Preparation**: Ensure that the dataset is in CSV format and properly formatted with the columns as described above.

2. **Loading the Data**: Use a library like `pandas` to read the CSV file into a DataFrame.

3. **Feature Selection**: Choose relevant features for the logistic regression model and preprocess the data as necessary (e.g., encoding categorical variables).

4. **Model Training**: Split the data into training and testing sets. Train the logistic regression model using the training set.

5. **Evaluation**: Evaluate the model's performance using metrics such as accuracy, precision, recall, and the ROC curve.

6. **Prediction**: Use the trained model to make predictions on new data.

-------

### Student Grade Prediction Using Multi-Layer Perceptron

![feduc-08-1106679-g005](https://github.com/user-attachments/assets/2ce3c80d-97fe-4d0b-ab7a-7328e1a496fc)


#### Overview

This project uses a Multi-Layer Perceptron (MLP) to predict student grades based on various input features. The MLP model is trained to make predictions on student performance by learning from historical data.

#### Dataset

The dataset contains features related to student performance and the target variable is the student's grade. Each record includes input features such as study hours, sleep hours
, and other relevant attributes.

#### Instructions

1. **Data Preparation**: Ensure that the dataset is organized with relevant features and the target variable (grades). The dataset should be in a format compatible with the provided code, typically CSV or similar.

2. **Loading the Data**: Use the provided Jupyter Notebook to load and preprocess the dataset. This includes handling missing values, encoding categorical variables, and splitting the data into training and test sets.

3. **Model Architecture**: The notebook defines an MLP model with one or more hidden layers. Review the architecture and adjust the number of layers, neurons, activation functions, and other parameters as needed.

4. **Training the Model**: Train the MLP model using the training dataset. Monitor performance metrics such as accuracy or mean squared error on the validation set.

5. **Evaluation**: Evaluate the model's performance on the test set using metrics such as accuracy, mean squared error, or R-squared. Fine-tune the model parameters as necessary to improve performance.

6. **Prediction**: Use the trained MLP model to make predictions on new student data.
   
--------------------------------------------------------------------------------------------------------------------


## **Computer Vision**

### seam carving for content-aware image resizing


![Annotation 2024-09-10 152601](https://github.com/user-attachments/assets/cb6169fd-97ad-4ebf-b6f8-127c8ae3f55d)


**Seam carving** is a technique used for content-aware image resizing. Instead of uniformly shrinking or expanding an image, seam carving intelligently removes or adds pixels along paths of least importance, allowing important features (like people or objects) to remain undistorted.

#### Key Concepts:

1. **Seams**: A seam is a connected path of pixels that extends from one side of the image to the opposite side (top to bottom or left to right). The seam is chosen to have the least significance (based on some energy function).
   
2. **Energy Function**: This function calculates the "importance" of a pixel. Common choices include the gradient magnitude of the image (e.g., using Sobel filters) to find areas of high contrast or edge information, which are considered more important.

3. **Seam Removal**: The process involves finding the seam with the lowest energy and removing it, reducing the image size without distorting important content.

4. **Seam Insertion**: To enlarge an image, seams with the lowest energy can be duplicated, which adds pixels to the image without distorting key features.

#### Steps of Seam Carving:
1. **Compute Energy Map**: 
   - An energy map is created by calculating the gradient magnitude of the image. This highlights areas of high importance (like edges).
   
2. **Find Optimal Seam**: 
   - Using dynamic programming, the seam with the lowest cumulative energy is found. This seam is a continuous path of connected pixels that spans the image.

3. **Remove or Insert Seam**: 
   - For reducing size, remove the seam. For enlarging, duplicate the seam.

![castle1-1](https://github.com/user-attachments/assets/171458be-2c41-4211-8552-7f5f763b7cb9)

-----------

### Detecting Improper Sitting with Computer Vision

![photo_2023-08-16_02-03-44](https://github.com/ALItaheri1380/ImageProcessing-MachineLearning-deepLearning/assets/98982133/4b638adf-6110-49f6-a72c-c97e8010b1a3)


#### Overview

This project uses computer vision techniques to detect improper sitting posture in real-time. By analyzing video input, the system assesses body alignment and posture, providing feedback on whether the sitting posture is correct or incorrect.

#### Code Overview

The code performs the following tasks:

1. **Setup**: Utilizes OpenCV for video capture, Mediapipe for pose estimation, and Win32 API for sound alerts.

2. **Posture Detection**:
   - **Find Distance**: Calculates the distance between shoulder points to determine alignment.
   - **Find Angle**: Measures neck and torso inclinations to evaluate posture.

3. **Real-Time Analysis**:
   - Captures video frames and processes them to extract key points for posture assessment.
   - Determines if the posture is correct based on predefined angle thresholds.
   - Displays real-time feedback on the screen, including posture metrics and alerts.

4. **Alerts**:
   - Sounds an alert if bad posture is detected for more than 5 seconds.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install opencv-python mediapipe pywin32
   ```

2. **Run the Script**: Execute the script to start video capture and posture analysis.
   ```bash
   python detect_improper_sitting.py
   ```

3. **Usage**: Adjust posture in front of the camera. The system will provide feedback on your sitting posture and sound an alert if necessary.

-------------------

### Body Posture Detection with OpenCV

![BodyPostureDetection](https://user-images.githubusercontent.com/98982133/184558489-1dfe871c-be28-4161-88b2-132bdd0e5bcd.png)


#### Overview

This project employs OpenCV to detect and analyze body posture in real-time. The system captures video input and evaluates body alignment to determine if the posture is correct or incorrect.

#### Key Features

- **Real-Time Detection**: Analyzes video frames to assess body posture.
- **Pose Estimation**: Uses OpenCV's capabilities to identify key body landmarks.
- **Posture Feedback**: Provides visual feedback on posture alignment.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install opencv-python
   ```

2. **Run the Script**: Start the posture detection system by running the provided script.
   ```bash
   python posture_detection.py
   ```

3. **Usage**: Position yourself in front of the camera. The system will display real-time feedback on your posture and alert you if your posture deviates from the expected alignment.

----------
### Eye Tracking


![Annotation 2024-09-10 165539](https://github.com/user-attachments/assets/5f17734c-c5d3-4633-b901-e9a5692d90cd)



This project demonstrates a eye tracking system using OpenCV and CVZone libraries. The system captures video from a webcam, detects faces and facial landmarks, and tracks the movement of the eyes to determine their gaze direction.

#### Overview

The script uses the CVZone library for face and face mesh detection and OpenCV for image processing and gaze tracking. The main goal is to determine whether the gaze is directed towards the right, left, or center of the screen based on the position of the iris within the eye region.

#### Code Explanation

1. **Imports and Setup**: The script imports necessary libraries and initializes the face and face mesh detectors.

2. **Video Capture**: The script captures video from the webcam.

3. **Face and Eye Detection**:
   - **Face Detection**: Detects faces in the frame.
   - **Face Mesh Detection**: Detects facial landmarks.
   - **Eye Region Extraction**: Extracts the region of interest (ROI) around the right eye.

4. **Gaze Tracking**:
   - Converts the extracted eye ROI to grayscale and applies a binary threshold to detect the iris.
   - Finds contours and determines the center of the largest contour (representing the iris).
   - Calculates the gaze direction based on the position of the iris relative to the center of the eye.

5. **Display and Interaction**:
   - Draws a circle at the center of the iris and prints the gaze direction (Right, Left, Center).
   - Shows the processed frame with eye tracking in a window.
   - Exits the loop if the 'o' key is pressed.


---------------------


### Hand Gesture Recognition with OpenCV and CVZone


![hand_gesture](https://user-images.githubusercontent.com/98982133/183730040-c9021f9d-8e31-4904-b013-58c46ca3df3a.png)



#### Overview

This project demonstrates hand gesture recognition using OpenCV and the CVZone library. The system captures video input, detects hand gestures, and calculates the distance between specific hand landmarks.

#### Code Overview

The code performs the following tasks:

1. **Setup**: Initializes video capture using OpenCV and sets up the HandDetector from CVZone.

2. **Hand Detection**:
   - Captures frames from the camera.
   - Uses the HandDetector to locate and track hand landmarks.
   - Calculates the distance between the thumb and index finger.

3. **Display**:
   - Displays the video feed with detected hand gestures.
   - Prints the distance between the thumb and index finger to the console.

4. **Exit**:
   - Exits the loop and closes the video feed when the 'o' key is pressed.

## Instructions

1. **Install Dependencies**:
   ```bash
   pip install opencv-python cvzone
   ```

2. **Run the Script**: Execute the script to start hand gesture recognition.
   ```bash
   python hand_gesture_recognition.py
   ```

3. **Usage**: Position your hand in front of the camera. The system will display the video feed and print the distance between your thumb and index finger.


------------------


### Picture Colorization

![colorizepicture](https://user-images.githubusercontent.com/98982133/185639463-7ad5d466-05e0-459c-bc52-0d29e20cdcb2.png)


#### Overview

This project demonstrates how to colorize black-and-white images using advanced image processing techniques. The provided Jupyter Notebook guides you through the process of applying color to grayscale images.

#### Code Overview

The code in the Jupyter Notebook performs the following tasks:

1. **Load and Preprocess Images**: Reads grayscale images and prepares them for colorization.
2. **Colorization Model**: Applies a pre-trained model or colorization algorithm to add color to the grayscale images.
3. **Display Results**: Shows the colorized images alongside the original grayscale images for comparison.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install numpy matplotlib opencv-python
   ```

2. **Download the Notebook**: Access the Jupyter Notebook from [ColorizePicture.ipynb](https://github.com/ALItaheri1380/ImageProcessing-MachineLearning-deepLearning/blob/main/ImageProcessing/ColorizePicture.ipynb).

3. **Run the Notebook**:
   - Open the notebook in Jupyter Lab or Jupyter Notebook.
   - Follow the instructions within the notebook to colorize your images.

4. **Usage**: Load your grayscale images into the notebook and execute the colorization code to transform them into color images.

----

### Face Detection with OpenCV


![faceDetector](https://user-images.githubusercontent.com/98982133/183729247-6195bd3d-1fb9-4aa4-ba24-bf9f1f059094.png)


#### Overview

This project demonstrates face detection using OpenCV. The provided Python script utilizes pre-trained Haar Cascade Classifiers to detect faces in images.

#### Code Overview

The code performs the following tasks:

1. **Setup**: Initializes the Haar Cascade Classifier for face detection.
2. **Load Image**: Reads an image from a specified file.
3. **Face Detection**:
   - Processes the image to detect faces using the Haar Cascade Classifier.
   - Draws rectangles around detected faces.
4. **Display Results**: Shows the processed image with detected faces highlighted.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install opencv-python
   ```

2. **Download the Script**: Access the Python script from [face_encoding.py](https://github.com/ALItaheri1380/ImageProcessing-MachineLearning-deepLearning/blob/main/ImageProcessing/face_encoding.py).

3. **Run the Script**:
   - Modify the script to specify the path to your image file.
   - Execute the script to detect faces in the image.
   ```bash
   python face_encoding.py
   ```

4. **Usage**: The script will display the image with detected faces highlighted. Ensure that the image path is correctly set in the script.

----------

#### Overview

This project demonstrates face detection using OpenCV. The provided Python script utilizes OpenCV's pre-trained Haar Cascade Classifier to detect faces in images or video streams.

#### Code Overview

The code performs the following tasks:

1. **Setup**: Initializes the Haar Cascade Classifier for face detection.
2. **Load Image or Video**: Captures images or video frames from the specified source.
3. **Face Detection**:
   - Processes each frame to detect faces using the Haar Cascade Classifier.
   - Draws rectangles around detected faces.
4. **Display Results**: Shows the processed image or video feed with detected faces highlighted.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install opencv-python
   ```

2. **Download the Script**: Access the Python script from [faceDetector.py](https://github.com/ALItaheri1380/ImageProcessing-MachineLearning-deepLearning/blob/main/ImageProcessing/faceDetector.py).

3. **Run the Script**:
   - To detect faces in an image, modify the script to read from an image file.
   - To detect faces in a video stream, run the script to capture video from a camera or video file.
   ```bash
   python faceDetector.py
   ```

4. **Usage**: The script will display the image or video feed with detected faces highlighted. Press 'q' to exit the video feed.


-------


### Eye and Smile Detection with OpenCV


![EyeAndSmile](https://user-images.githubusercontent.com/98982133/183731323-a51bf7dc-9472-4e03-a66d-575ce6b98d1d.png)


#### Overview

This project demonstrates eye and smile detection using OpenCV. The provided Python script utilizes pre-trained Haar Cascade Classifiers to detect eyes and smiles in images or video streams.

#### Code Overview

The code performs the following tasks:

1. **Setup**: Initializes Haar Cascade Classifiers for detecting eyes and smiles.
2. **Load Image or Video**: Captures images or video frames from the specified source.
3. **Detection**:
   - Detects eyes and smiles within each frame using the Haar Cascade Classifiers.
   - Draws rectangles around detected eyes and smiles.
4. **Display Results**: Shows the processed image or video feed with detected eyes and smiles highlighted.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install opencv-python
   ```

2. **Download the Script**: Access the Python script from [EyeAndSmile.py](https://github.com/ALItaheri1380/ImageProcessing-MachineLearning-deepLearning/blob/main/ImageProcessing/EyeAndSmile.py).

3. **Run the Script**:
   - To detect eyes and smiles in an image, modify the script to read from an image file.
   - To detect eyes and smiles in a video stream, run the script to capture video from a camera or video file.
   ```bash
   python EyeAndSmile.py
   ```

4. **Usage**: The script will display the image or video feed with detected eyes and smiles highlighted. Press 'q' to exit the video feed.

---------------


### Moving Object Detection with OpenCV


![movingobjectDetector](https://user-images.githubusercontent.com/98982133/183732391-2cde7d81-0c3b-4b10-86bc-86a742f13fa0.png)


#### Overview

This project demonstrates moving object detection using OpenCV. The provided Python script uses background subtraction techniques to identify and track moving objects in video streams.

#### Code Overview

The code performs the following tasks:

1. **Setup**: Initializes the video capture and background subtractor.
2. **Capture Video**: Reads frames from a video source (e.g., webcam).
3. **Moving Object Detection**:
   - Applies background subtraction to detect moving objects.
   - Highlights detected moving objects with contours.
4. **Display Results**: Shows the processed video feed with moving objects highlighted.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install opencv-python
   ```

2. **Download the Script**: Access the Python script from [movingobjectDetector.py](https://github.com/ALItaheri1380/ImageProcessing-MachineLearning-deepLearning/blob/main/ImageProcessing/movingobjectDetector.py).

3. **Run the Script**:
   - Execute the script to start detecting moving objects from the video source (e.g., webcam).
   ```bash
   python movingobjectDetector.py
   ```

4. **Usage**: The script will display the video feed with moving objects highlighted. Press 'q' to exit the video feed.

----------------------

### Template Matching with OpenCV

![112](https://user-images.githubusercontent.com/98982133/179502509-3d94ad7c-61ee-4699-ad04-279810d1e753.png)


![12](https://user-images.githubusercontent.com/98982133/179502918-fe0304c0-38cc-4358-9be1-19bf12dc97dd.jpeg)


#### Overview

This project demonstrates template matching using OpenCV. The provided Python script finds and highlights occurrences of a template image within a main image.

#### Code Overview

The code performs the following tasks:

1. **Load Images**:
   - Loads the main image and the template image in grayscale.

2. **Template Matching**:
   - Applies template matching using OpenCV's `matchTemplate` function.
   - Identifies locations in the main image where the template matches.

3. **Highlight Matches**:
   - Draws rectangles around detected matches of the template in the main image.

4. **Display Results**:
   - Displays the processed main image with highlighted matches.

#### Instructions

1. **Install Dependencies**:
   ```bash
   pip install numpy opencv-python
   ```

2. **Prepare Images**:
   - Place the main image (`1.jpg`) and template image (`2.jpg`) in the same directory as the script.

3. **Run the Script**:
   - Execute the script to perform template matching and visualize the results.
   ```bash
   python template_matching.py
   ```

4. **Usage**: The script will display the main image with rectangles drawn around the detected areas where the template matches. Press any key to close the displayed image window.

------- 

## Computer vision assignment 

#### Steganography with MATLAB

![Annotation 2024-07-19 211409](https://github.com/user-attachments/assets/7c088d9b-c282-4646-84d8-b35883808186)

#### Overview

This project demonstrates steganography techniques using MATLAB. The provided MATLAB code hides information within an image.

#### Code Overview

- **Embed Information**: Hides a secret message or data within a cover image.
- **Extract Information**: Retrieves the hidden message or data from the stego image.

#### Instructions

1. **Prepare MATLAB**:
   - Ensure you have MATLAB installed.

2. **Run the Code**:
   - Open the MATLAB script and execute it to hide and extract information from images.

3. **Usage**:
   - Follow the script instructions to provide the cover image and the message to hide.

-----

#### Image Resizing with MATLAB


![Annotation 2024-07-19 211611](https://github.com/user-attachments/assets/08348de4-aeb0-4131-a1ab-cca46bb816d3)


#### Overview

This project demonstrates various image resizing techniques using MATLAB. The provided MATLAB code implements and compares multiple resizing methods, including custom approaches.

#### Methods Used

1. **Bilinear**: Interpolation method that considers the closest four pixels to determine the new pixel value.
2. **Chessboard Distance**: Resizing using a chessboard distance metric.
3. **CityBlock Distance**: Resizing based on the Manhattan distance between pixels.
4. **Euclidean Distance**: Resizing based on the Euclidean distance between pixels.
5. **Neighbor**: Nearest-neighbor interpolation method.
6. **Custom Method**: A novel resizing technique with improved accuracy as noted in the report.

#### Code Overview

- **Image Resizing**: Implements and applies the aforementioned resizing methods.
- **Comparison**: Compares the performance and accuracy of each resizing technique.

#### Instructions

1. **Prepare MATLAB**:
   - Ensure you have MATLAB installed.

2. **Run the Code**:
   - Open the MATLAB script and execute it to apply different resizing methods on images.

3. **Usage**:
   - Follow the script instructions to provide the input images and view results for each resizing method.

------------

### Image Denoising and Persian Number Recognition with MATLAB

#### Overview

This project consists of two parts:
1. **Image Denoising**: Implements various methods to remove salt-and-pepper noise from images, including a custom innovative method that outperforms conventional methods.
2. **Noise Removal and Number Recognition**: Removes remaining noise, identifies Persian numbers using template matching, and annotates the results on the image.

#### Part One: Image Denoising

- **Methods**:
  - Implements standard methods for removing salt-and-pepper noise.
  - **Innovative Method**: A novel approach with superior accuracy and higher PSNR even against 90% noise, as demonstrated in the report.


![Annotation 2024-07-19 211115](https://github.com/user-attachments/assets/dfa62089-e9f7-41c7-aab3-d8fe58e78dfc)


#### Part Two: Noise Removal and Persian Number Recognition

- **Noise Removal**: Applies advanced techniques to clean up the image after initial denoising.
- **Number Recognition**:
  - Uses Depth-First Search (DFS) to find number ranges in the image.
  - Compares detected numbers with template images to classify them.
  - Determines positivity (red) or negativity (blue) of numbers.
  - Resizes numbers to match templates and annotates the result (green) at the bottom of the image.


![ResultImage_5_35](https://github.com/user-attachments/assets/56365a2c-e727-4acf-94be-a09c9c9fbc9c)


#### Code Overview

- **Denoising**: Provides implementations for various denoising methods and evaluates their performance.
- **Recognition and Annotation**: Processes images to identify Persian numbers and display results with accuracy.

#### Instructions

1. **Prepare MATLAB**:
   - Ensure MATLAB is installed on your system.

2. **Run the Code**:
   - Open the MATLAB scripts for each part and execute them.
   - For part one, observe the denoising results and PSNR values.
   - For part two, review the noise removal, number recognition, and annotation results.

3. **Usage**:
   - Provide the input images as required.
   - Follow the script instructions to view results and analyze performance.


-------------


### Jigsaw Puzzle Solver with MATLAB

#### Overview

This project focuses on solving jigsaw puzzles by arranging pieces based on edge similarity. The provided MATLAB code uses PSNR (Peak Signal-to-Noise Ratio) to match edges and correctly place puzzle pieces.

### Code Overview

- **Edge Matching**: Calculates the PSNR of the edges between puzzle pieces to determine which pieces fit best together.
- **Puzzle Assembly**: Places each puzzle piece in its correct position based on edge similarity.
- 
input image:

![photo_2024-07-19_22-04-45](https://github.com/user-attachments/assets/3183448c-162d-4c09-8157-e7fae0487578)


**Result**

![photo_2024-07-19_21-00-56](https://github.com/user-attachments/assets/d6d46f1d-d7a5-4b56-a667-aac681740361)
