# Fake-Currency-Detection-Using-Image-Processing-in-MATLAB
 Fake currency Detection using Digital Image Processing in MATLAB


Contents

Abstract

Introduction

Problem solving statements &objective

Methodology

Experimental Results & Analysis

Conclusion

References
 
Abstract

Fake Currency has always been an issue which has created a lot of problems in the market. The increasing technological advancements have made the possibility for creating more counterfeit currency which are circulated in the market which reduces the overall economy of the country. There are machines present at banks and other commercial areas to check the authenticity of the currencies. But a common man does not have access to such systems and hence a need for a software to detect fake currency arises, which can be used by common people. This proposed system uses Image Processing to detect whether the currency is genuine or counterfeit. The system is designed completely using Python programming language. It consists of the steps such as grayscale conversion, edge detection, segmentation, etc. which are performed using suitable methods.
 
Introduction

Different countries around the world use different types of currencies for the monetary exchange of some kinds of goods. One common problem faced by many countries related to currency, is the inclusion of fake currency in the system. India is one of the countries that face a lot of problems and huge losses due to the fake currencies. Due to this there are losses in the overall economy of the country‘s currencyvalue. The technological advancements have made a pathway for currencies to be duplicated such that it cannot be normally recognized . Advanced printers and new editing computer softwares are used to create counterfeit currencies. Fake currencies can just be slipped into bundles of genuine currency which is how they are usually circulated in the market.
 
Problem solving statements &objective

Problem solving statement : Detecting Fake currencies
Objective :To detect a currency note using Matlabs.

Methodology
 
 
A.	Image Acquisition:The image of the currency that has to be checked or verified as a genuine currency is taken as an input for the system. The input image can be acquired using techniques like scanning the image or clicking a picture with the phone and then uploading it to the system.
B.	Grey Scale Conversion: Conversion of a color image to a grayscale image requires more knowledge about the color image. A pixel color in an image is a combination of three colors Red, Green, and Blue (RGB).Similarly, A Grayscale image can be viewed as a single layered image. Different techniques can be used to convert a coloured image to grayscale image. 
C.	Edge Detection:Edge detection is an image processing technique for finding the boundaries of objects within images It works by detecting discontinuities in brightness. Edge detection is used for image segmentation and data extraction in areas such as image processing, computer vision, and machine vision. The purpose of detecting sharp changes in image brightness is to capture important events and changes in properties of the world. Edge detection helps to detect all the edges of the necessary ROI to perform various operations in the latter stages.
D.	Segmentation:Image segmentation is the process of dividing an image into multiple parts. This is typically used to identify objects or other relevant information in digital images.  shows a few examples of the techniques that can be used to perform segmentation.
E.	Feature Extraction:Feature extraction is a type of dimensionality reduction that efficiently represents interesting parts of an image as a compact feature vector. This approach is useful when image sizes are large and a reduced feature representation is required to quickly complete tasks such as image matching and retrieval. The features are extracted and then used for comparison in the further step
F.	Comparison:The features that are extracted from the previous step are used for comparing with the stored features and then the results are displayed as to the currency being genuine or fake using SSIM.


Experimental analysis and output


The image is compared using structural similarity index
 To check similarity of input image and real image 
If the accuracy of the input image is more  than 99.995 accurate it is considered real else it is displayed as fake
 
 



 
  
Conclusion
Currency use is a necessity for survival and hence it is always necessary to keep in track of its originality. Paper currencies are used much more in India and hence a system to detect the fake currency is needed. As the new currencies are used in the market, the proposed system seems to be useful to detect the currency to be genuine or not. This system compares more features for feature extraction than other proposed systems. It also shows where the differences are in the currencies instead of simply displaying the result.
References
[1] Fake Indian Currency Note [Online]. Available: https://en.wikipedia.org/wiki/Fake_Indian_currency_note
[2]Trupti Pathrabe G and Swapnili Karmore 2011 Int. J. CompTrends Tech 152-156
[3] Eshita Pilania, Bhavika Arora, ―Recognition of Fake Currency Based on Security Thread Feature of Currency‖ International Journal Of Engineering And Computer Science, ISSN: 2319-7242
[4] Fake currency detectors using machines [Online]. Available: https://en.wikipedia.org/wiki/Currency_detector
[5] Pramod Kaler, ―Study of Grayscale image in Image processing‖ International Journal on Recent and Innovation Trends in Computing and Communication, ISSN: 2321-8169, Volume: 4 Issue: 11
