CREATE DATABASE patent;
SHOW DATABASES;
USE patent;

-- Create Patents table
CREATE TABLE Patents (
    patent_number VARCHAR(255) PRIMARY KEY,
    title VARCHAR(255),
    inventor_name VARCHAR(255),
    patent_class VARCHAR(255),
    filing_date DATE,
    assignee_name VARCHAR(255),
    abstract TEXT
);

-- Insert sample data
INSERT INTO Patents (patent_number, title, inventor_name, patent_class, filing_date, assignee_name, abstract)
VALUES 
    ('US8708903B2', 'Patient monitoring appliance', 'Bao Tran', 'Class A', '2013-03-11', 'Bao Tran', 'A wireless system for a person includes a wearable appliance monitoring one or more body parameters a plurality of wireless nodes in communication with the wearable appliance and a remote computer coupled to the wireless nodes to provide information to an authorized remote user'),
    ('US9820657B2', 'Mobile wireless appliance', 'Bao Tran', 'Class C', '2015-05-20', 'Koninklijke Philips NV', 'A wireless system for a person includes a wearable appliance with an accelerometer a wireless device in communication with the wearable appliance and a remote computer coupled to the wireless device to provide information to an authorized remote user'),
    ('US2018293873A1', 'System and method for detecting hand hygiene compliance', 'Peng Liu Yang Liu Jiapeng Huang', 'Class B', '2018-04-05', 'Microsensor Labs LLC', 'A system and method for detecting hand hygiene compliance is disclosed Hand hygiene is important in various contexts, including hospital settings, home settings, work settings, and school settings'),
    ('US11045271B1', 'Robotic medical system', 'Bao Q Tran', 'Class A', '2021-02-09', 'Bao Q Tran', 'A system includes a camera an AI visual processor to classify and recognize human anatomical features, and a processor to control robot movement to reach a selected anatomical target'),
    ('US2019013960A1', 'Switched Wireless Signaling', 'Laurence P Sadwick', 'Class C', '2017-02-28', 'Innosys Inc', 'A wireless control system includes multiple wireless transmitters and a control circuit configured to transmit information from the wireless transmitters, wherein the control circuit is configured to selectably enable and disable each of the wireless transmitters'),
    ('US11497405B2', 'Method and apparatus for biological evaluation', 'Marcio Marc Abreu', 'Class A', '2018-01-12', 'Brain Tunnelgenix Technologies Corp', 'A medical device for monitoring biological parameters through an Abreu Brain Thermal Tunnel (ABTT) is provided By monitoring and analyzing the temperature of the ABTT, it is possible to diagnosis changes in a patient or subject under a variety of conditions, including predicting the course of medical conditions Furthermore, since the ABTT is predictive, analysis of the ABTT may be used to control mechanisms for safety when an impending medical condition makes such operation hazardous'),
    ('US11357426B2', 'Glucose management', 'Bao Tran', 'Class A', '2020-01-15', 'Bao Tran', 'Systems and methods are disclosed for monitoring a user by calibrating one or more noninvasive sensors to track a user glucose level at one or more user physical activity conditions generating a calibration based on the one or more user conditions and in real time detecting a current user condition and applying the calibration to accurately estimate the user glucose or insulin level'),
    ('US2015269825A1', 'Patient monitoring appliance', 'Bao Tran', 'Class C', '2014-03-20', 'Bao Tran', 'A wireless system monitoring system includes a wireless telephone and a wearable appliance in communication with the wireless telephone, the appliance monitoring activity with an accelerometer and one or more additional sensors to detect movement or vital sign'),
    ('EP4165524A1', 'Wearable sensor system configured for monitoring and modeling health data', 'Landy Toth Robert S Schwartz', 'Class B', '2021-07-13', 'LifeLens Technologies Inc', 'An apparatus comprises at least one processing device configured to generate a model of an outbreak of a disease based on physiological monitoring and location data received from wearable devices of a plurality of users, to determine a first subset of the plurality of users that have potentially contracted the disease based on a comparison of the physiological monitoring data and known symptoms of the disease, to identify a second subset of the plurality of users that are at risk for contracting the disease from the first subset of the plurality of users utilizing the model of the outbreak of the disease and the location data, and to generate notifications for delivery to the plurality of users comprising information related to outbreak of the disease and measures for at least one of treating and mitigating spread of the disease'),
    ('US11587428B2', 'Incident response system', 'John A Stone Ryan A Piaskowski', 'Class A', '2021-03-10', 'Johnson Controls Tyco IP Holdings LLP', 'Systems and methods for responding to incidents in a building are provided One method includes performing operations including retrieving data relating to one or more onpremises building devices of the building, determining the incident relating to the one or more onpremises building devices, and determining a plurality of potential responses to the incident The operations further include analyzing the plurality of potential responses and determining relative risks of the potential responses to the incident and transmitting, to a first onpremises building device of the onpremises building devices, data indicating the incident and at least one of the plurality of potential responses based on the relative risks of the potential responses'),
    ('US2021338631A1', 'Systems and methods for treating coronavirus', 'Michael Mong Bao Tran', 'Class A', '2021-04-05', 'Michael Mong Bao Tran', 'Provided herein are methods of treatment, including methods of treating subjects having or at risk of having or having a viral infection, and specifically a SARSCoV2 viral infection The methods provided include the administration of 4methylumbelliferone (4MU), palmitoylethanolamide (PEA), reservatrol, fisetin, H2, nebulized hyaluronidase or combinations thereof Also provided herein are a respiratory assistance device, methods of generating a customized respiratory assistance device, methods of treating a coronavirus infection, and methods of inhibiting a coronavirus infectivity, virulence and/or spread'),
    ('AU2013216643B2', 'Methods compositions and devices for inducing stasis in cells tissues organs and organisms', 'Eric Blackstone Mark B Roth', 'Class A', '2013-08-15', 'Fred Hutchinson Cancer Research Center', 'The present invention concerns the use of oxygen antagonists for inducing stasis in cells, tissues, and/or organs in vivo or in an organism overall It includes methods and apparatuses for achieving stasis in any of these biological materials, so as to preserve and/or protect them In specific embodiments, therapeutic methods and apparatuses for organ transplantation, hyperthermia, wound healing, hemorrhagic shock, cardioplegia for bypass surgery, neurodegeneration, hypothermia, and cancer is provided'),
    ('US2023277838A1', 'Vagal nerve stimulation therapy', 'J P Errico Bruce J Simon Peter Staats', 'Class A', '2023-01-02', 'Electrocore Inc', 'Devices, systems and methods are provided for symptoms in');

-- Search by Patent Number
SELECT * FROM Patents
WHERE patent_number = 'US2015269825A1';

-- Search by Title Keywords
SELECT * FROM Patents
WHERE title LIKE '%Glucose management%';

-- Search by Inventor Name
SELECT * FROM Patents
WHERE inventor_name IN ('Laurence P Sadwick');

-- Search by Patent Classification
SELECT * FROM Patents
WHERE patent_class = 'Class A';

-- Search by Assignee Name
SELECT * FROM Patents
WHERE assignee_name = 'Microsensor Labs LLC';

-- Search by Abstract Keywords
SELECT * FROM Patents
WHERE abstract LIKE '%A system includes a camera an AI visual processor to classify and recognize human anatomical features, and a processor to control robot movement to reach a selected anatomical target%';

-- Search by Filling Date
SELECT * FROM Patents
WHERE filing_date LIKE '2014-03-20';