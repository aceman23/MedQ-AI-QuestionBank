//
//  QuestionBank.swift
//  MedQAI
//
//  Created by Developer on 3/26/25.
//
import Foundation

class QuestionBank {
    static let shared = QuestionBank()
    init() {}
    
    /**
     the value of correctOptionIndex: 0-3(out of 4 options),
     */
    var questions: [Question] = [
        Question(
            id:1,
            imageAbove: "GSW",
            text: "While staffing a small community emergency department, two teenage boys, one 13 and one 17, are dropped off by friends who state they were at a party when they were both shot.\n\nA scout CXR of the more ill appearing child is below.\n\nWhat is the next best step?",
            imageMiddle: "GSWcxr",
            options: ["Transfer the patient as your facility does not have the capacity to stabilize the patient further.", "Keep the patient in your ER until blood pressures are stable for at least one hour.", "Call their parents to ask for permission for transfer.", "Transfuse 1 unit pRBCs before transfer."],
            // Add other incorrect options as needed
            correctOptionIndex: 0,
            imageBelow: nil,
            explanation: "These patients necessitate immediate transfer to a level 1 trauma center given significant GSW by buckshot.\n\nAccording to EMTALA Interpretive Guidelines – Responsibilities of Medicare Participating Hospitals in Emergency Cases (Appendix V): “If a hospital is unable to stabilize an individual within its capability, an appropriate transfer should be implemented.”\n\nSimilarly, per EMTALA §489.24(e) Restricting Transfer Until the Individual Is Stabilized (1) General: If an individual at a hospital has an emergency medical condition that has not been stabilized, the hospital may not transfer the individual unless— (B) A physician (within the meaning of Section 1861(r)(1) of the Act) has signed a certification that, based upon the information available at the time of transfer, the medical benefits reasonably expected from the provision of appropriate medical treatment at another medical facility outweigh the increased risks to the individual.\n\nIn addition to documenting the above, that the benefit of transfer to a trauma center outweighs the risks of transfer, there are Four Requirements for an Appropriate Transfer:\n\n1. Transferring hospital provides medical treatment within its capacity.\n2. The receiving facility has available space and qualified personnel AND has agreed to accept the patient.\n3. The transferring hospital sends to the receiving facility all medical records that are available at the time of transfer.\n4. The transfer is effected through qualified personnel and transportation equipment. Note that the physician at the sending hospital (not the receiving hospital) has the responsibility to determine the appropriate mode, equipment and attendants for transfer. An EMT may not always be “qualified personnel”, and this is up to the sending provider.",
            citation: "https://www.cms.gov/regulations-and-guidance/legislation/emtala",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Trauma"
        ),
        
        Question(
            id:2,
            imageAbove: nil,
            text: "What medical decision making tools should you utilize to most accurately diagnose sepsis?",
            imageMiddle: nil,
            options: ["SIRS criteria.", "Sepsis 2 Guidelines.", "Hypotension.", "SIRS criteria and qSOFA."],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            qSOFA is newer and outperforming SIRS criteria, but has not caught on in the emergency medicine world as it was born out of ICU-based data.
            
            With qSOFA, at least 2 of 3 criteria must be met: SBP<100, RR>21, GCS<15.
            
            SIRS is defined by two or more of: Temp>38 or <36, HR>90, RR>20, WBC>12 or <4. Example of source of infection is ‘pulmonary’ or ‘integument (skin)’, represented by cough, or skin rash, respectively.
            
            Note that RR is the only common criteria among decision tools.
            """,
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7929579/",
            isSample: true,
            videoExplain: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/MedQ+-+Signs+of+Sepsis+Animation+-+faster.MOV"), // Fixed URL //
            video: nil,
            subject: "Infectious Disease"),
        
        Question(
            id:3,
            imageAbove: nil,
            text:"""
                 A 54 year-old female with past medical history of myasthenia gravis and chronic respiratory failure now five days status post tracheostomy placement is bleeding approximately 100cc per minute out of the traech site. 
                 
                 As you prepare for her arrival what equipment should you prepare?
                 """,
            imageMiddle: nil,
            options: ["Additional tracheostomy tubes.",
                      "Miller laryngoscope blade.",
                      "Yankauer suction.",
                      "Sterile gloves and a 10 cc syringe. " ],
            correctOptionIndex: 3,
            imageBelow: "TIFistula",
            explanation: """
    This patient is presenting with the feared complication of tracheoinnominate fistula (TIF) bleeding.

    The reported incidence of TIF is under 1% in most studies. In the majority of patients (about 70%), TIF develops after 48 hours and within the first 3 weeks after placement. However, TIF has been reported in patients 1 or more years from initial placement of tracheostomy.

    The Utley maneuver can immediately control the hemorrhage. In this maneuver, place a finger through the incision to apply direct pressure on the artery against the posterior sternum and compress it. A similar tamponade effect can be achieved via the over-inflation of the cuff of the tracheostomy tube.

    Similar to prep for MTP, one should immediately call for additional assistance for additional personnel to maintain control of hemorrhage simultaneous with airway management. For example, one assistant may place a hand in the tracheostomy site to perform an Utley’s, while you secure the airway. For airway equipment selection, the best option is to place a cuffed endotracheal tube beyond the site of bleeding.

    Having numerous suction devices readied will also be helpful, secondary to the equipment that are critical for performing a hemostasis achieving procedure.

""",
            citation: "https://www.ncbi.nlm.nih.gov/books/NBK482505/",
            isSample: true,
            videoExplain: nil,
            video: URL(string:"https://medqvideos.s3.us-west-1.amazonaws.com/Wheelchair.mp4"),
            subject: "Airway"),
        
        Question(
            id:4,
            text: "A 24 yr old with PMH of nephrolithiasis presents with sudden colicky, right-sided flank pain, polyuria and hematuria.\n\nAfter ordering pain medication and a fluid bolus, what imaging study should be performed?",
            imageMiddle: nil,
            options: [
                "Cat Scan Abdomen/Pelvis.",
                "MRI Abdomen.",
                "KUB.",
                "Ultrasound."
            ],
            correctOptionIndex: 3,
            imageBelow: "KidneyCrisp",
            explanation: """
            Below is a diagram showing percent chance a stone completely passes based on location in the ureter.
            
            In a 2019 systematic review of 232 articles by Moore, et al, among young patients with low BMIs, renal ultrasound has as high as 96% sensitivity for stones. There is consensus that among patients with typical symptoms of stones who achieve adequate pain relief, ultrasound is the imaging study of choice.
            
            Also recall there are three common narrowed anatomic locations for a stone to get lodged, at the uretoropelvic junction (UPJ) (leaving the kidney), the ureteral crossing of the illiacs (iliac vessels) and the ureterovesical junction (UVJ). The farther the stone has passed along its course the more likely it will pass sooner, as shown in the image below.
            
            While the majority of renal stones under 6 mm will pass (>80%) without procedural intervention, small lodged stones can cause serious morbidity and mortality, especially in the setting of coexisting infection. If a urinary tract infection is present in the setting of obstructing stone, this is an indication for a procedural intervention to remove the stone. Otherwise, infection source control will not be achieved as purulent material builds up behind a stone.
            """,
            citation: "https://www.jacr.org/article/S1546-1440(19)30424-7/fulltext",
            isSample: true,
            subject: "Nephrology"),
        Question(
            id:5,
            imageAbove:"FentUser",
            text: "A 39 year old male daily fentanyl user (intranasal route) presents to your emergency department requesting buprenorphine for support “going cold turkey”. \n\nWhich of the following presentations suggests he is an ideal buprenorphine candidate?",
            options: [
                "Last use of intravenous fentanyl in the last 2 hours with no symptoms.",
                "Last use of intravenous fentanyl 16 hours ago and with severe vomiting and anxiety.",
                "Last use of intranasal fentanyl in the last 4 hours and with very mild headache.",
                "Last use of intranasal fentanyl in the last 12 hours and moderate symptoms."
            ],
            correctOptionIndex: 3,
            explanation: """
            In the United States, buprenorphine can be dispensed by an opioid treatment program and can be prescribed by any provider who is licensed under state law and possesses a valid Drug Enforcement Administration (DEA) registration. In 2023 the Consolidated Appropriations Act removed the requirement of obtaining a federally required DATA waiver (X-Waiver).
            
            Buprenorphine acts as a partial agonist at the mu-opioid receptor and has a prolonged duration of action due to its high affinity for the receptor. It is also an antagonist at the kappa opioid receptor. Pharmacologic effects are similar to full opioid agonists (eg, morphine, methadone), but with a "ceiling effect" at high doses across a range of pharmacodynamic measures. This lowers the potential for adverse effects from overdose (eg, respiratory depression).
            
            Because it is a partial agonist at the mu-opioid receptor, initiation of buprenorphine may lead to withdrawal symptoms in patients who have recently used opioids. To minimize this risk, it should be initiated when a patient begins to show objective, observable signs of moderate withdrawal, usually six hours or longer after the last dose of a short-acting opioid, and potentially longer (24 hours to 48 hours) following the use of long-acting opioids, but before severe withdrawal symptoms occur.
            
            Note that the mode (IV vs IN etc) of a patient’s opioid abuse is less important than the time since last use and whether it was short or long acting.
            
            Bothersome mild withdrawal symptoms during this time can be treated with a variety of over-the-counter and prescription medications, such as acetaminophen for aches, antacids for indigestion, loperamide for diarrhea, and hydroxyzine or clonidine for anxiety and restlessness.
            
            Buprenorphine suppresses withdrawal for 24 to 48 hours; typical dosing for OUD is every 24 hours. Peak plasma levels occur at approximately 90 minutes and increase linearly with dose.
            """,
            citation: """
            Substance Abuse and a Mental Health Services Administration. Removal of DATA Waiver (X-Waiver) Requirement. https://www.samhsa.gov/medications-substance-use-disorders/removal-data-waiver-requirement (Accessed on February 07, 2023).
            
            Walsh SL, Preston KL, Stitzer ML, et al. Clinical pharmacology of buprenorphine: ceiling effects at high doses. Clin Pharmacol Ther 1994; 55:569.
            """,
            isSample: true,
            subject: "Addiction Medicine"),
        Question(
            id:6,
            imageAbove: "MigraineMuseum",  // Include your image name or path here
            text: "A 24F with no PMH presents with gradual onset unilateral throbbing headache with one episode of non-bloody, non-bilious emesis. The headache was preceded by some brief flashing lights. She has a strong history of syncope with IVs.\n\nWhat medication should be started?",
            imageMiddle: nil,
            options: [
                "Aspirin 324mg PO.",
                "Toradol 15mg IM.",
                "Compazine 10mg PO.",
                "Zofran 4-8mg PO."
            ],
            correctOptionIndex: 3,
            explanation: """
            Migraine headache can be treated with PO Zofran 4-8mg PO once (preferably a disintegrating tablet) quite effectively.
            
            While NSAIDs have traditionally been first line, the serotonin modulating effect of ondansetron can be utilized first line as well. Disintegrating tabs are particularly useful with patients are intolerant of IV and IM medications. A short prescription for Zofran PRN in addition to recommending keeping a diary for triggers and referral to a neurologist are also important to add to the treatment plan.
            """,
            citation: "https://www.contemporarypediatrics.com/view/ondansetron-effective-acute-migraine", // No citation provided in the raw data for this question
            isSample: true,
            subject: "Addiction Medicine"),
        
        Question(
            id:7,
            imageAbove: "BleedingIsFunFinal",
            text: "A 74 year-old woman presents 1 day post-op from an open mitral valve repair with lightheadedness.\n\nVitals are: BP 74/30 RR 24 HR 120 02 96%.She appears extremely pale and weak.\n\nIn addition to ordering pRBCs for transfusion, to improve hemostasis you should administer:",
            imageMiddle: nil,
            options: [
                "FFP.",
                "TXA.",
                "Protamine.",
                "PCC."
            ],
            correctOptionIndex: 3,
            explanation: """
            Cardiac surgery imposes multiple stressors on the coagulation system, resulting in systemic derangements that include the depletion of enzymatic coagulation factors to a degree that impairs thrombin generation and may lead to excessive bleeding and transfusion.
            
            A 2021 randomized pilot trial published in JAMA suggests that cardiac-surgery associated coagulopathy should be treated with PCC over FFP because of reduced bleeding severity and improved hemostatic outcomes. Hemostatic therapy was not required at the 4-hour time point for 43 patients (80%) in the PCC group and for 32 patients (68%) in the FFP group (P = .25) nor at the 24-hour time point for 41 patients (76%) in the PCC group and for 31 patients (66%) patients in the FFP group (P = .28). The median numbers of units for 24-hour cumulative transfusions (red blood cells, platelets) were 6.0 U in the PCC group and 10 U in the FFP group.\n\n During the first 24 hours after start of cardiac surgery, 15 patients (28%) in the PCC group and 8 patients (17%) in the FFP group received no red blood cells (P = .24). Chest tube drainage was significantly lower in the PCC group both at 12 hours (median volume, 310 mL vs 500; P < .001) and at 24 hours (median volume, 450 mL  vs 700 mL; P < .001) after surgery.\n\nAdverse events and thromboembolic events were similar between groups, as were durations of mechanical ventilation, ICU and hospital length of stays. There were 2 deaths (3.7%) in the PCC group and 2 deaths (4.1%) in the FFP group.
            
            While compositions can be manufacturer dependent, 4-factor PCCs generally contain vitamin K–dependent coagulation factors (factors II, VII, IX, and X), the anticoagulant proteins C and S, and small amounts of heparin. The advantages of PCCs relative to FFP are that they are pathogen reduced, do not require ABO blood group matching or thawing (allowing for near-patient storage and timely administration), are manufactured from pooled plasma (decreasing the risk of transfusion-related acute lung injury), require substantially lower volumes to achieve dose equivalence with FFP (decreasing the risk of transfusion-associated circulatory overload), and may lead to greater thrombin generation (improving hemostatic effectiveness).
            """,
            citation: "https://jamanetwork.com/journals/jamanetworkopen/fullarticle/2778079",
            isSample: true,
            subject: "Cardiology"),
        
        Question(
            id:8,
            imageAbove: "Billing",  // Remember to provide the image name or path if you want to associate one with the question.
            text: "Since January 1, 2023, CPT Evaluation and Management Codes and Guidelines have changed, per the recommendations set by the American Medical Association. \n\nSince this date, which most impacts level of coding (and thus billing)?",
            imageMiddle: nil,
            options: [
                "History and Physical details.",
                "Medical decision making complexity.",
                "Medications ordered.",
                "Medical decision making complexity or time spent with patient."
            ],
            correctOptionIndex: 3,
            explanation: """
            To summarize the 42 page AMA CPT Evaluation and Management (E/M) Code and Guidelines Changes which began January 1, 2023, the two factors which most impact levels of E/M services are 1) the level of the medical decision making (MDM): straightforward, low, moderate, or high (complexities) and 2) total time for E/M services performed on the date of the encounter.
            
            MDM includes establishing diagnoses, assessing the status of a condition, and/or selecting a management option. MDM is further defined by three elements. The elements are:
            ■ The number and complexity of problem(s) that are addressed during the encounter.
            ■ The amount and/or complexity of data to be reviewed and analyzed. These data include medical records, prior studies, newly ordered laboratory tests and images, which were reviewed and analyzed for the encounter. This also includes information obtained and considered from interprofessional communications (consults, discussion with PCPs, etc..).
            ■ The risk of complications, morbidity or mortality given your patient’s clinical state.
            
            The take home points here are that when documenting in your MDM section of your note, it is imperative to describe the complexity of problems, complexity of data assessed and risk of complications, or decompensation.
            
            In one MDM example: To summarize, Mrs Smith is a 68 year-old-female with a past medical history of coronary artery disease status post PCI, HFrEF and valvular disease warranting TAVR as well as insulin-dependent DMT2 presenting with one day of rapidly progressive shortness of breath to the point she can only speak in one word sentences, found to be volume overloaded, cool to the touch and hypoxic to 75% on room air, requiring positive pressure ventilation to maintain an oxygen saturation of 94%. I have a high concern for cardiogenic versus septic shock. Her bedside examination as well as elevated pro-BNP and chest X-Ray findings are consistent with severe pulmonary edema. Accompanying lactic acidosis and leukocytosis to 20 cells/HPF also raise suspicion for underlying severe sepsis due to a pulmonary source. Patient’s associated severe acute kidney disease compounds the clinical picture and puts patient at high risk of further decompensation. Patient’s emergency department course was notable for drop in blood pressure with MAPs less than 65, warranting vasopressor support. Broad spectrum antibiotics were administered. Cardiology was consulted and requested the patient be placed on a Bumex drip. Patient will require extremely close monitoring in our intensive care unit given the very high risk of decompensation, as well as ongoing need for several titratable medications. Mrs Smith’s husband was updated regarding all results. I spent approximately 45 minutes at the bedside answering the family’s questions.
            """,
            citation: "https://www.ama-assn.org/system/files/2023-e-m-descriptors-guidelines.pdf",
            isSample: true,
            subject: "Billing and Coding"),
        
        Question(
            id:9,
            imageAbove: "PatientCare",
            text: "Which of the following most impact patient rating scales?",
            options: ["Personability.", "Etiquette.", "Professionalism.", "Time factors."],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "While professionalism, personability and etiquette are all important factors in patient satisfaction, research suggests that time-based factors are most important.\n\nSpecifically, three of the top five factors that most improved patient satisfaction with their physician were ‘ease of scheduling’, ‘minimal wait time’ and ‘not feeling rushed during their visit’. The other two factors were: ‘knowledge of treatment costs in advance’ (#2) and ‘expertise of providers’ (#4). \n\nThis evidence underscores the value of effective time-budgeting while on shift. One evidence backed method to increase perceived time spent with patients is to sit down while speaking with patients.",
            citation: "Beaver, L. (2018). The US telehealth market: The market, drivers, threats, and opportunities for incumbents and newcomers. Business Insider Intelligence Report.",
            isSample: true,
            subject: "Bedside Manner"),
        
        Question(
            id:10,
            imageAbove:"AntibioticKnight",
            text:"What combination of antibiotics is appropriate for a critically ill, septic patient, with a pulmonary source?",
            imageMiddle: nil,
            options: ["Vancomycin and Zosyn.",
                      "Cefepime and Linezolid.",
                      "Doxycycline.",
                      "Vancomycin, Zosyn, Azithromycin. " ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
                    Zosyn should go into the patient first, as is standard for sepsis patients, covering for the dreaded gram negative organisms, including Psuedomonas. Vancomycin is necessary because while there may be a remote possibility of MRSA in the lungs, it causes high mortality if left untreated. History of lung abscess and recent chest surgery patients are particularly concerning for MRSA infections. Finally, Azithromycin is necessary to cover for “atypicals”.
                    
                    If a patient has a penicillin allergy, switch Zosyn to Cefepime or Ceftazidime.
                    
                    If a patient has a Macrolide (Azithromycin) allergy switch to Doxy or Levaquin for atypical coverage.
                    
                    """,
            citation: "https://med.stanford.edu/content/dam/sm/bugsanddrugs/documents/clinicalpathways/SHC-Sepsis-ABX-Guideline.pdf",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"),
        
        Question(
            id:11,
            text: "What is considered a normal end-tidal-CO2 range for a healthy person?",
            imageMiddle: nil,
            options: ["20-30 mm Hg.", "30-40 mm Hg.", "45-55 mm Hg.", "35-45 mm Hg."],
            correctOptionIndex: 3,
            explanation: """
                    Capnography, also commonly called “end tidal” (end-tidal CO2), is a tool which measure exhaled CO2, and is especially useful for early detection of respiratory depression and return of spontaneous circulation, during CPR.
                    
                    A normal range of “end-tidal” seen on capnography is between 35 and 45 mm Hg.
                    """,
            citation: "https://www.nejm.org/doi/pdf/10.1056/NEJMvcm1105237",
            isSample: true,
            subject: "Airway"),
        
        Question(
            id:12,
            text: "A 67-year-old male with PMH of CHF presents with sudden shortness of breath. He is found by EMS to be tachypneic to 50 and hypoxic to 70% on room air. After failing non-rebreather, a CPAP is applied.\n\nWhat is one contraindication to CPAP?",
            imageMiddle: nil,
            options: ["Age >80.", "History of GI bleeding.", "Increased work of breathing.", "Hemodynamic instability."],
            correctOptionIndex: 3,
            explanation: """
                    Non-invasive positive pressure ventilation (NIPPV) for critically ill patients in either hypoxemic or hypercapnic respiratory failure has staved off innumerable intubations since its advent by allowing time for medical treatments to take effect. Patients may also benefit from NIPPV if their respiratory muscles are tiring, despite adequate oxygen saturation.
                    
                    Absolute Contraindications of PPV
                    
                    - Facial trauma/burns
                    - Fixed upper airway obstruction
                    - Active vomiting
                    - Respiratory or cardiac arrest[13]
                    
                    Relative Contraindications
                    
                    - A recent facial, upper airway, or upper GI tract surgery
                    - Inability to protect the airway
                    - Life-threatening hypoxemia
                    - Medical or hemodynamic instability (hypotensive shock, myocardial infarction requiring intervention, uncontrolled ischemia or arrhythmias)
                    - Altered mental status/agitation
                    - Bowel obstruction
                    - Copious respiratory secretions
                    - Undrained pneumothorax
                    
                    """,
            citation:"""
            https://www.merckmanuals.com/professional/critical-care-medicine/how-to-do-other-airway-procedures/how-to-do-noninvasive-positive-pressure-ventilation
            
            https://www.ncbi.nlm.nih.gov/books/NBK578188/
            """,
            isSample: true,
            subject: "Cardiology"),
        
        Question(
            id:13,
            text: "A 78M with hypertension develops sudden ripping back pain immediately after feeling “like he was struck in the back with a bat”.\n\nWhat is the imaging modality of choice for the correct diagnosis?",
            options: [
                "CXR.",
                "MRI.",
                "VQ Scan.",
                "CT Angio Chest."
            ],
            correctOptionIndex: 3,
            imageBelow: "Aorta",
            explanation: """
            Sudden severe back pain should trigger immediate concern for aortic dissection and a CT Angio study. The majority of dissections are Type B (descending aorta; distal to left subclavian), which are managed non-operatively with blood pressure control. You should discuss these with a vascular surgeon to confirm the plan of care, which typically includes starting nicardipine and esmolol drips, and getting  the patient to an ICU. SBP goal is <140 and HR goal <100.
            
            If a patient has a type A dissection (ascending aorta), they will need surgery.
            
            In patients that don’t present with classic dissection symptoms but you are still concerned, use the combination of an AHA Aortic Dissection Score and a d-dimer. Dissection scores of 0 can have a CXR done to evaluate for widened mediastinum (>6-8cm is wide), another sign of dissection.
            
            Dissection scores of 1 with a negative d-dimer only fail in ruling out acute dissection in 0.3% of cases.
            """,
            citation: "https://www.ahajournals.org/doi/10.1161/circulationaha.110.988568#:~:text=Evaluation%20of%20patients%20with%20known,3%20is%20considered%20high%20risk. \n\nhttps://www.ahajournals.org/doi/10.1161/CIRCULATIONAHA.117.029457",
            isSample: true,
            subject: "Thoracic"),
        
        Question(
            id:14,
            text: "Which of the following scoring systems or decision rules can be used to risk stratify patients diagnosed with pulmonary embolism that can be safely managed as an outpatient?",
            options: [
                "LRINEC score.",
                "CURB-65.",
                "HAS-BLED.",
                "PESI."
            ],
            correctOptionIndex: 3,
            explanation: """
            The HOME-PE trial showed that risk stratification with either the PESI (simplified pulmonary embolism index) or Hestia criteria can identify approximately one-third of PE patients who can be safely treated at home.
            
            Both systems of risk stratification generally assess patient factors like age, sex and medical problems (CHF, bleeding history, etc.) as well as acute clinical findings like heart rate and blood pressure. Both criteria can also be easily accessed and data quickly inputted via MDCalc web app for decision support. See figures below for the comprehensive criteria.
            
            Several options for outpatient anticoagulation exist, including the most novel agents: apixaban, dabigatran, edoxaban and rivaroxaban.
            
            Of note, NOACs appear more beneficial in some aspects than classic heparin treatment, such as avoiding frequent injections and repeated monitoring for dose adjustments. Their application offers the possibility of a single oral drug regimen, replacing the use of parenteral treatment and warfarin.
            
            Although the use of NOACs/direct oral anticoagulants is well-suited to outpatient treatment, there are some contraindicated cases such as severe renal/ hepatic impairment or antiphospholipid antibody syndrome. In addition, their use is inappropriate during pregnancy or lactation.
            
            Vitamin K antagonists (VKA) appear as an alternative to NOACs, but they should be given concurrently with parenteral anticoagulation for at least 5 days and until an international normalized ratio (INR) of 2–3 is reached.
            
            The LRINEC (Laboratory Risk Indicator for Necrotizing Fasciitis) score was developed to distinguish necrotizing fasciitis (nec fasc) from severe cellulitis.
            
            Curb 65 estimates 30-day mortality of community-acquired pneumonia and is helps determine if patients can be treated outpatient versus inpatient.
            
            HAS-BLED estimates risk of major bleeding for patients with atrial fibrillation (AF) on anti-coagulation. In concert with CHA2DS2-VASc a HAS-BLED score helps clinicians decide whether to start anti-coagulation in patients with AF.
            """,
            citation: "https://www.acc.org/Latest-in-Cardiology/Clinical-Trials/2020/08/29/12/57/HOME-PE",
            isSample: true,
            subject: "Airway"),
        
        Question(
            id:15,
            imageAbove:"Angioedema",
            text: "A 39 year old M with obesity and hypertension recently placed on lisinopril for blood pressure presents with sudden swelling of her tongue. The oral exam is above.\n\nWhat medication can be administered to reduce orolingual swelling?",
            options: ["Methylprednisolone IV.", "Epinephrine IM.", "Tranexamic acid.", "Fresh frozen plasma."],
            correctOptionIndex: 3,
            explanation: """
                    Airway management is the most critical component of angioedema patients. However, some medications are available at your disposal. Fresh frozen plasma (administered as a 2 unit infusion) and icatibant are two types of treatment for bradykinin related angioedema.
                    """,
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5298931/",
            isSample: true,
            subject: "Allergy"),
        
        Question(
            id:16,
            text: "A 58 year old with PMH of COPD, chronic respiratory failure status post tracheostomy arrives in your department with worsening 02 saturation from baseline of 93% to 88% on vent settings that include FiO2 100% and a PEEP of 5.\n\nWhich of the following combinations of ventilatory pressures would suggest a process in addition to COPD?",
            options: [
                "High peak pressure, normal plateau pressure.",
                "Low peak pressure, normal plateau pressure.",
                "Normal peak pressure, high plateau pressure.",
                "High peak pressure, high plateau pressure."
            ],
            correctOptionIndex: 3,
            explanation: """
            A patient with COPD who has superimposed pneumonia will present with high peak and plateau pressures.
            
            An additional diagnostic tool that can be incorporated during your evaluation of the tracheostomy patient includes hooking up a tracheostomy to the ventilator to evaluate for peak pressures as well as plateau pressure. The peak pressure will be immediately available data on your ventilator screen while you will need to select an inspiratory pause to determine plateau pressure.
            
            In general, an acceptable max peak pressure (Ppeak) is 40 (cm H20). High peak pressures reflect resistance in the entire airway (airway and alveolar resistance) and can be seen with a kinked ET tube or bronchospasm, including COPD.
            
            Elevated plateau pressures (greater than 25-30 cm H20) reflect poor lung compliance and can be seen with pneumonia, pulmonary edema, pneumothorax (you will see other expected findings such as hypotension), pulmonary fibrosis and even abdominal issues like abdominal compartment syndrome.
            """, // No image provided
            citation: "", // No citation provided
            isSample: true,
            subject: "Airway"),
        
        Question(
            id:17,
            text: "A 76 year-old-female with PMH of cerebrovascular accident and chronic respiratory failure status post tracheostomy presents from a nearby nursing home in respiratory distress.\n\nP02 is 89%. On exam she is moving little air, but symmetrically. You notice heavy use of accessory respiratory muscles.\n\nWhat is your first course of action?",
            options: [
                "Proceed to “intubation from above”",
                "Exchange the tracheostomy tube.",
                "Fiberoptic visualization of trach tube placement.",
                "Apply a non-rebreather while suctioning the trach tube."
            ],
            correctOptionIndex: 3,
            explanation: """
            A distressed tracheostomy patient can be one of the more harrowing of clinical situations that presents in your emergency department or intensive care unit. Fortunately, several supportive guides exist, including an Emergency Algorithm from the National Tracheostomy Safety Project (see Image below). In addition to providing supplemental oxygenation via a non-rebreather to a patient’s upper oral airway, an early attempt at passing a suction catheter through the trach tube is important as mucous plugging is a common reason for airway obstruction. Often, once such an obstructive process is removed, rapid clinical improvement will be observed.
            
            If clinical improvement is not observed continue down the Emergency Algorithm, during which you should try deflating the trach tube balloon in attempt to allow for air to pass around the tube. If this fails consideration should be made to remove the tracheostomy tube completely and proceed with either oral airway maneuvers or tracheostomy stoma ventilation. If oral airway bag-valve-mask ventilation (while covering the stoma) is unsuccessful, tracheostomy stoma ventilation can be pursued by either 1) a pediatric face mask applied to the stoma or 2) an LMA applied to the stoma.
            
            These maneuvers are likely temporizing measures for a more secure airway. Intubation of all tracheostomy patients should be treated as difficult airway and supportive staff and equipment be made available. Note that a major contraindication to oral intubation is if a patient has a history of laryngectomy. In these cases there will be no communication with the oropharynx and trachea (with complete laryngectomy). If intubating through the stoma, fiberoptic assistance is preferred with use of a 6.0 cuffed ET tube. Please note that studies evaluating the utility of cutting the ET tube down to size for stoma insertion has produced mixed results, and may cause complication.
            
            An additional diagnostic tool that can be incorporated during your evaluation of the tracheostomy patient includes hooking up a tracheostomy to the ventilator to evaluate for peak pressures as well as plateau pressure. The peak pressure will be immediately available data on your ventilator screen while you will need to select an inspiratory pause to determine plateau pressure. In general, an acceptable max peak pressure (Ppeak) is 40 (cm H20). High peak pressures reflect resistance in the entire airway (airway and alveolar resistance) and can be seen with a kinked ET tube or bronchospasm.
            
            Elevated plateau pressures  (greater than 25-30 cm H20) reflect poor lung compliance and can be seen with pneumonia, pulmonary edema, pneumothorax (you will see other expected findings such as hypotension), pulmonary fibrosis and even abdominal issues like abdominal compartment syndrome.
            """,
            citation: "https://anesthesia.ucsf.edu/sites/anesthesia.ucsf.edu/files/wysiwyg/Ventilator_Pocket_Guide_2020.pdfsthesia.ucsf.edu/sites/anesthesia.ucsf.edu/files/wysiwyg/Ventilator_Pocket_Guide_2020.pdf\n\nhttps://criticalcarenow.com/differentiating-peak-and-plateau-pressures/#:~:text=The%20Debrief-,Peak%20pressure%3A%20This%20is%20the%20pressure%20that%20is%20generated%20by,tidal%20volume%20has%20been%20delivered.",
            isSample: true,
            subject: "Airway"),
        Question(
            id:18,
            imageAbove: nil,
            text: "A 52F with ovarian cancer on chemotherapy presents to your ED with an erythematous, non-edematous and painful right lower extremity. You promptly rule out a DVT and diagnose cellulitis.\n\nYour patient demands outpatient treatment, citing numerous recent hospitalizations.\n\nAn appropriate single dose antibiotic would be:",
            options: [
                "Linezolid IM",
                "Vancomycin IM",
                "Vancomycin IV",
                "Dalbavancin IV"
            ],
            correctOptionIndex: 3,
            imageBelow: "Dalbavancin",
            explanation: "Given rapidly changing drug resistant microbiologic ecosystems, staying current with newly FDA approved antibiotics is imperative. Further, given the significant adoption of at-home-hospitals nationally, awareness of single dose, long acting formulas is critical.\n\nAs a lipoglycopeptide, dalbavancin has an extraordinarily long half-life compared to many antimicrobial agents, and as such the FDA approved a 1500 mg single dose regimen over 30 minutes for adults with acute bacterial skin and skin structure infections (ABSSSI), including MRSA. A two-dose regimen also is FDA-approved, with a 1,000 mg dose on day 1, followed by 500 mg on day 8 to complete the treatment. Both have been shown as safe and effective in multiple, randomized noninferiority trials.\n\nDalbavancin should be considered in patients with skin infections likely due to strains of S. aureus including MRSA, Streptococcus pyogenes, Streptococcus agalactiae, and the Streptococcus anginosus group.",
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4907732/",
            isSample: true,
            subject: "Infectious Disease"),
        
        Question(
            id:19,
            text: "Gender identity refers to:",
            options: [
                "A sense of trans- versus cis-gender.",
                "Birth certificate or registration documentation.",
                "How society perceived your sex.",
                "A changebale sense of self."
            ],
            correctOptionIndex: 3,
            explanation: """
            Gender identity refers to a person’s inner sense of self, and one’s gender identity may change over time. Examples include transgender men and women (gender identity does not match that assigned at birth), cisgender men and women (meaning a person’s gender corresponds to sex registered at birth), non-binary and gender queer.
            
            Gender-queer, gender-diverse, and gender-expansive describes a person who’s gender falls outside male-female binary and may include someone who identifies as nonbinary (gender of neither or both man and woman) or pangender (having multiple genders).
            """,
            citation: "Emergency Medicine News, April 2023; Vol 45 No 4. Dr Knight.",
            isSample: true,
            subject: "Bedside Manner"),
        
        Question(
            id:20,
            text: "In a healthcare setting, which approach best demonstrates the principles of cultural humility?",
            options: [
                "Providing standardized care protocols that are applicable to all patients, irrespective of their cultural background.",
                "Offering culturally specific treatment options exclusively to patients from certain cultural backgrounds.",
                "Adopting a color-blind approach that disregards cultural differences to promote equality in healthcare delivery.",
                "Acknowledging one's own limitations and biases while actively seeking to understand and learn from diverse cultural perspectives."
            ],
            correctOptionIndex: 3,
            explanation: """
            Cultural humility emphasizes self-reflection, recognition of one's own limitations, and an ongoing commitment to learning from and valuing diverse cultural perspectives. 
            
            The correct option aligns with this principle by highlighting the importance of healthcare providers being aware of their own biases, being open to learning from patients' cultural backgrounds, and actively seeking to improve their understanding. This approach promotes a respectful and equitable healthcare environment, where patients' cultural beliefs, values, and preferences are acknowledged and integrated into their care.
            
            The other options do not fully capture the essence of cultural humility as they either disregard individual cultural differences or prioritize specific cultural groups over others, which can contribute to disparities and inequitable care.
            """,
            citation: "",
            isSample: true,
            subject: "Bedside Manner"),
        
        Question(
            id:21,
            text: "What patient population tends to receive an incomplete sexual history taking by their physician?",
            options: [
                "Undomiciled patients.",
                "Psychiatric patients.",
                "Domestic abuse patients.",
                "LGBTQ+ patients."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            In a 2019 study including ACGME‐accredited residency programs, even with professed comfort with LGBT health care, most emergency medicine residents report taking incomplete sexual histories. This likely affects patient care.

One traditional way to ask a sexual history question with modern day considerations would be to ask: “Do you have sex with men, women, both or others?”.

It has been estimated that at least 3.5% of Americans, or 9 million people, identify as lesbian, gay, or bisexual, although identity does not always indicate sexual behavior, as 19 million Americans (8.2%) have engaged in same‐sex sexual behavior. Another 0.6%, or 1.4 million people, identify as transgender.

It has been well documented that significant barriers exist to providing quality and equitable care to the lesbian, gay, bisexual, and transgender (LGBT) population. Although limited, research demonstrates significant health care disparities exist for LGBT persons with a major contributor to those disparities being a lack of provider knowledge and competency. Such disparities are known to include elevated risk of depression and suicide, increased rates of substance abuse, increased risk for some cancers, and decreased access to health care.

No formal guidance has been provided to residency programs, and currently LGBT health education is not included in the model of emergency medicine practice. A 2014 survey showed only 26% of EM residency programs had formal education on LGBT health, although most programs directors felt education on this topic is needed.
""",
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6457356/",
            isSample: true,
            subject: "Bedside Manner"),
        
        Question(
            id:22,
            imageAbove: nil,
            text: "An 86 year old man with past medical history of heart failure with reduced ejection fraction (HFrEF) and atrial fibrillation on Coumadin presents with a fall with head strike, severe headache and altered mental status.\n\nVitals are: HR 129 BP 220/115 RR 18 02 95%. In addition to immediate blood pressure control, what additional medication should you administer?",
            options: [
                "Fresh frozen plasma (FFP).",
                "Protamine sulfate.",
                "Platelets.",
                "Prothrombin complex concentrate (PCC)."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "In patients with intracranial hemorrhage with vitamin K antagonists like coumadin on board, prothrombin complex concentrates are preferred over FFP.\n\nFor several years, FFP and vitamin K were the preferred options for reversing anticoagulation. Prothrombin complex concentrate is now in favor when available due to quicker administration (shorter infusion times). PCC also requires only a small volume to reverse anticoagulation. Small volumes means improved safety in heart failure and CKD patients. FFP requires procurement from the blood bank and thawing before administration, factors that lead to delays in administration and anticoagulation reversal. PCC is leukocyte-free and less likely to cause infusion reactions. PCC contains significantly higher amounts of the clotting factors compared to FFP; one dose of PCC equals 8 to 16 units of FFP.\n\nProtamine is the reversal agent for unfractionated heparin and low molecular weight heparins, like enoxaparin.",
            citation: "Gross BA, Jankowitz BT, Friedlander RM. Cerebral intraparenchymal hemorrhage: a review. JAMA 2019 Apr;321(13):1295-303. PMID: 30938800 DOI: 10.1001/jama.2019.2413.\n\nhttps://www.ncbi.nlm.nih.gov/books/NBK539716/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"),
        Question(
            id:23,
            imageAbove: nil,
            text: "A 49-year-old female with a past medical history of depression and schizophrenia presents after a homeless man walked up behind her and stuck her with a needle. She is requesting post-exposure prophylaxis (PEP) for HIV. What is the most suitable regimen?",
            options: [
                "Dolutegravir plus bictegravir.",
                "Single drug regimen tenofovir alafenamide.",
                "Elbasvir-grazoprevir plus dolutegravir.",
                "Emtricitabine/Tenofovir plus raltegravir."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "Emtricitabine/Tenofovir (200/300mg) daily combined with raltegravir (400mg) twice a day is an acceptable regimen for HIV post-exposure prophylaxis (PEP). A 28-day course is recommended.\n\nEmtricitabine/Tenofovir is a combination of nucleoside and nucleotide reverse transcriptase inhibitors, while raltegravir is an integrase inhibitor. Patients presenting within 72 hours of a potential HIV exposure should be assessed for nonoccupational PEP (nPEP) to reduce the risk of transmission.\n\nIn cases where the HIV source is known to have a multidrug-resistant virus, dolutegravir may be preferred over raltegravir.\n\nSpecial considerations for regimen selection apply to certain patient groups (e.g., individuals who are of childbearing potential, pregnant, or have reduced kidney function). Emtricitabine/Tenofovir should be avoided in patients with an eGFR below 60 mL/min. For an eGFR between 30 and 60, tenofovir alafenamide combined with either dolutegravir or bictegravir is recommended. For an eGFR below 30, an integrase inhibitor (dolutegravir, bictegravir, or raltegravir) can be paired with dose-reduced zidovudine or lamivudine.\n\nAfter discontinuing nPEP, repeat HIV testing at weeks 6 and 12 is recommended to monitor for seroconversion. Patients with possible HIV exposure should also be evaluated for HBV and HCV, though no treatments are available to reduce HCV transmission risk post-exposure.\n\nElbasvir-grazoprevir is a well-tolerated, effective option for treating hepatitis C virus (HCV) genotype 1 or 4 but is not indicated for HIV PEP.",
            citation: "United States Centers for Disease Control and Prevention. Updated guidelines for antiretroviral postexposure prophylaxis after sexual, injection drug use, or other nonoccupational exposure to HIV—United States, 2016. http://stacks.cdc.gov/view/cdc/38856\n\nhttps://www.hepatitisc.uw.edu/page/treatment/drugs/elbasvir-grazoprevir/drug-summary",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"),
        Question(
            id:24,
            imageAbove: nil, // Image suggestion: oral examination showing swelling in the floor of the mouth, indicative of Ludwig’s angina.
            text: """
            A 65-year-old male with a past medical history notable for type 2 diabetes mellitus presents with five days of progressive pain with swallowing and one day of difficulty swallowing water. He recently had dental work. 
            
            On external exam you observe the findings below.
            
            What is the correct treatment?
            """,
            imageMiddle: "Ludwigs",
            options: [
                "Surgical excision.",
                "Fresh frozen plasma (FFP) and Icatibant.",
                "Sialogogues, warm compress, and Augmentin.",
                "Broad spectrum antibiotics by IV."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "Swelling of the floor of the mouth, particularly in a diabetic patient with recent dental work and progressive subacute to acute swelling, raises concern for Ludwig’s angina—a cellulitis of the floor of the mouth. This infection often follows dental procedures and presents without lymphadenopathy. Submental edema is another significant indicator for this serious infection. A CT scan is the diagnostic modality of choice.\n\nTreatment for immunocompetent patients should include broad-spectrum antibiotic coverage for streptococci and other oral aerobes and anaerobes. For pediatric patients and adults with MRSA risk factors, additional MRSA coverage such as vancomycin or linezolid is recommended. For immunocompromised patients, empiric therapy should also cover Pseudomonas species (e.g., with Zosyn, Levaquin, cefepime, or ceftazidime).\n\nSurgical excision is the appropriate treatment for a ranula, which is a sublingual gland cyst presenting as a bubble of salivary juices under the tongue.\n\nFresh frozen plasma (FFP) and icatibant are treatments for bradykinin-related angioedema, which can be triggered by ACE inhibitors or hereditary factors. Angioedema management typically involves distinguishing between mast cell-mediated (e.g., allergic) and bradykinin-mediated angioedema.\n\nSialogogues, warm compresses, and antibiotics are standard for treating sialadenitis, which usually presents with unilateral swelling and lacks floor-of-mouth involvement.",
            citation: """
            https://www.ncbi.nlm.nih.gov/books/NBK482354/
            
            https://commons.wikimedia.org/wiki/File:Ludwig_angina.jpg
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"),
        Question(
            id:25,
            imageAbove: nil, // Image suggestion: chest X-ray showing severe pneumonia
            text:"""
                A 68-year-old male with a past medical history of type 2 diabetes mellitus presents to your emergency department with a productive cough and shortness of breath so severe he cannot take more than a few steps without stopping to catch his breath.
                
                Vitals: HR 123, BP 160/74, RR 28, O2 80% on room air and 94% on positive pressure ventilation (PPV). His chest X-ray is shown below.
                
                After administering antibiotics and admitting the patient to the ICU for severe pneumonia, you decide to order this evidence-based treatment:
                """,
            options: [
                "IV vitamin-D (high dose).",
                "PO prednisone.",
                "IV Calcium.",
                "IV Hydrocortisone."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "In a March 2023 NEJM study, patients with severe community-acquired pneumonia who received intravenous hydrocortisone (200 mg daily) showed reduced mortality as well as decreased need for mechanical ventilation and vasopressor support.\n\nCommunity-acquired pneumonia (CAP) refers to pneumonia caused by an infectious agent contracted outside of medical facilities or healthcare settings. A CAP diagnosis may still be established within 48 hours of hospital admission.\n\nThe most common causative agent of CAP worldwide is *Streptococcus pneumoniae*.\n\nThe NEJM study included a phase 3, multicenter, double-blind, randomized controlled trial with 800 ICU-admitted adults with severe CAP. Participants were given either intravenous hydrocortisone (200 mg daily for 4 to 8 days depending on clinical response, followed by a taper for a total of 8 to 14 days) or a placebo, alongside standard therapy (antibiotics and supportive care).\n\nBy day 28, mortalities occurred in 25 of 400 patients (6.2%; 95% CI, 3.9 to 8.6) in the hydrocortisone group versus 47 of 395 patients (11.9%; 95% CI, 8.7 to 15.1) in the placebo group (absolute difference, −5.6 percentage points; 95% CI, −9.6 to −1.7; P=0.006), yielding a number needed to treat of 18.\n\nSecondary endpoints, such as the need for mechanical ventilation and vasopressor support, were also reduced in the hydrocortisone group (18% vs. 30% and 15% vs. 25%, respectively).",
            citation: "https://www.nejm.org/doi/10.1056/NEJMoa2215145",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"),
        Question(
            id:26,
            imageAbove: nil,
            text: "In patients who are septic but may clinically worsen with a large fluid bolus due to comorbidities (e.g., chronic heart failure with volume overload or dialysis patients), what is the best method to determine volume status before administering fluids?",
            options: [
                "Echo results with ejection fraction from 3 years prior.",
                "Heart rate and JVD.",
                "“Warm and Wet” versus “Cold and Wet”.",
                "Bedside IVC Ultrasound and Fluid Challenge."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: ultrasound showing a collapsing inferior vena cava (IVC) for assessing volume status
            explanation: "Learning to assess the inferior vena cava (IVC) with bedside ultrasound is an invaluable skill for ER or ICU practitioners.\n\nA collapsing IVC or one with significant respiratory variation is highly sensitive and specific for hypovolemia, indicating that the patient can generally tolerate fluid administration. After fluids are given, the IVC can be re-evaluated to assess the patient's fluid responsiveness.\n\nIf the IVC view is technically challenging, a fluid challenge of 250cc or 500cc isotonic solution can be administered. A rise in blood pressure following this challenge suggests hypovolemia, while no change or a decrease may indicate an adequate or overloaded volume status. For patients with severely weakened cardiac function (e.g., ejection fraction of 20-30%), a 250cc challenge is preferable, while more stable patients may tolerate up to 500cc or even 1L. Frequent reassessment is essential to avoid fluid overload and prevent iatrogenic pulmonary edema.\n\nAn echocardiogram with ejection fraction data from 3 years ago may offer some insight, especially if it shows severe impairment, but this information may be outdated. Heart rate is of limited value, as both dehydrated and volume-overloaded patients can present with tachycardia. Jugular venous distention (JVD) can be useful but typically requires experienced assessment.\n\nAdditional clues can aid in determining volume status but should be used cautiously:\n- Historical factors, such as family reports of reduced intake (e.g., “hasn’t eaten a meal in weeks”).\n- Patient's dry weight, as noted in cardiology records or reported by the patient.\n- Physical exam findings, such as axillary sweat and mucous membrane moisture.\n- Urine output, noting color and volume relative to baseline.",
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:27,
            imageAbove: nil,
            text: "What is the correct loading dose of vancomycin for critically ill patients?",
            options: [
                "10mg/kg",
                "16mg/kg",
                "36mg/kg",
                "25mg/kg"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "Recently updated consensus guidelines on vancomycin recommend a loading dose of 20–35 mg/kg based on actual body weight (not exceeding 3000 mg) for critically ill patients with suspected or confirmed MRSA infection. This approach helps achieve appropriate serum concentrations rapidly.\n\nConsulting a pharmacist on antibiotic dosing may be beneficial, especially when vancomycin is combined with another potentially nephrotoxic agent. For instance, the combination of vancomycin and Zosyn has a higher risk of acute kidney injury (AKI) than either drug used alone.",
            citation: "Rybak MJ, Le J, Lodise TP, et al. Therapeutic monitoring of vancomycin for serious methicillin-resistant Staphylococcus aureus infections: a revised consensus guideline and review by the American Society of Health-System Pharmacists, the Infectious Diseases Society of America, the Pediatric Infectious Diseases Society, and the Society of Infectious Diseases Pharmacists. Am J Health Syst Pharm 2020; 77: 835–864.\n\nhttps://pubmed.ncbi.nlm.nih.gov/29649586/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pharmacology"
        ),
        Question(
            id:28,
            imageAbove: nil,
            text: """
            A 32-year-old male presents 48 hours after being bitten by a spider. He took a picture of a spider he found in his room shortly after the bite.
            
            A picture of his wound upon presentation is shown below. What is the culprit spider?
            """,
            imageMiddle: "recluseBite",
            options: [
                "Black widow",
                "Kukulcania",
                "Tarantula",
                "Recluse spider (genus Loxosceles)"
            ],
            correctOptionIndex: 3,
            imageBelow: "recluseSpider", // Image suggestion: photo of wound with central clearing or necrosis, indicative of a recluse spider bite
            explanation: "The recluse spider (genus *Loxosceles*) often causes a painless bite that develops into a reddish wound with central clearing or necrosis. Management depends on the severity of cutaneous effects and the presence of systemic toxicity. General wound care and tetanus prophylaxis are essential. Dermal necrosis is typically managed supportively, except in cases involving certain South American recluse variants, where antivenom may be considered.\n\nSystemic toxicity from a recluse spider bite, though rare, can include acute hemolytic anemia, rhabdomyolysis, and disseminated intravascular coagulation (DIC).\n\nThe recluse spider (shown below) is often mistaken for the Kukulcania, which has a velvety appearance.",
            citation: """
            https://phil.cdc.gov/Details.aspx?pid=6266
            
            https://en.wikipedia.org/wiki/Recluse_spider#/media/File:LoxoscelesGaucho.jpg
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:29,
            imageAbove: nil,
            text: """
            A 68-year-old gender fluid person with a past medical history of breast cancer (never on chemotherapy) and obesity (92 kg) presents with lightheadedness and decreased exercise tolerance over the past two weeks. 
            
            Vitals are normal except after walking to the bathroom and sitting on the hospital gurney, where a single lead monitor shows a heart rate of 106.
            
            You order a CT Angio Chest and find bilateral pulmonary emboli with right heart strain. During reassessment, the patient becomes severely lightheaded. Blood pressures measured 15 minutes apart are 82/40 and 86/39. Your hospital stocks tenecteplase as a fibrinolytic.
            
            What is the correct dosage?
            """,
            options: [
                "100 mg IV over 2 hours.",
                "100 mg IV over 4 minutes.",
                "100 mg IV over 5-10 seconds.",
                "50 mg IV over 5-10 seconds."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: chart or table of weight-based dosing for tenecteplase
            explanation: "Tenecteplase (TNKase, TNK-tPA, or TNK) is a thrombolytic agent derived from tissue plasminogen activator (tPA). Unlike alteplase, which requires a 2-hour infusion, tenecteplase can be administered as a single intravenous bolus over 5 to 10 seconds due to its long half-life. Additionally, tenecteplase is less likely to cause allergic reactions compared to antigenic agents like streptokinase.\n\nKnowing fibrinolytic dosing is crucial, especially for unstable patients, as timely administration can significantly impact outcomes. The recommended code dose of tenecteplase for unstable pulmonary embolism (PE) is 50 mg over 5-10 seconds, which applies to this case. Tenecteplase is weight-based (see weight-based chart for precise dosing).\n\nAfter administering the bolus, initiate or resume parenteral anticoagulation following thrombolytic administration.\n\nOther dosing details:\n- 100 mg IV over 2 hours is the correct dose of alteplase for unstable PE.\n- 100 mg IV over 4 minutes would be the cumulative dose of alteplase given during cardiac arrest, administered as two separate 50 mg boluses over 2 minutes, 15 minutes apart, if ROSC is not achieved after the initial bolus.\n\nIn this case, the single-bolus administration of tenecteplase makes it an efficient choice in time-sensitive clinical situations.",
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9008780/#:~:text=Compared%20with%20existing%20thrombolytic%20agents,reactions%20(15%E2%80%9318)\n\nhttps://emcrit.org/pulmcrit/pulmcrit-solving-the-optalyse-pe-riddle-were-dosing-tpa-wrong/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:30,
            imageAbove: "Zoster", // Image suggestion: photo of shingles rash
            text: """
            You see the above rash.

            The patient is concerned that they are contagious. What precautions do you advise?
""",
            options: [
                "Contact only.",
                "Airborne only.",
                "Droplet.",
                "Contact and Airborne."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: "People with herpes zoster, commonly known as shingles (a reactivation of the varicella-zoster virus), can spread the virus through direct contact with lesions and, to a lesser extent, via airborne transmission. Therefore, both contact and airborne precautions are recommended to prevent the spread of the virus.",
            citation: """
            Dworkin RH, Johnson RW, Breuer J, et al. Recommendations for the management of herpes zoster. Clin Infect Dis 2007; 44 Suppl 1:S1.
            
            https://commons.wikimedia.org/wiki/File:Herpes_zoster_neck.png
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            id:31,
            imageAbove: nil,
            text: "What is the dose of phenobarbital for alcohol withdrawal?",
            options: [
                "130 mg followed by 130 mg every 5 minutes.",
                "260 mg followed by 260 mg every 2-3 minutes.",
                "130 mg or 260 mg followed by 260 mg every 5 minutes.",
                "130 or 260 mg followed by 130 mg every 15 to 30 minutes."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: depiction of phenobarbital dosing schedule or alcohol withdrawal management setting
            explanation: "The recommended dose of phenobarbital for severe alcohol withdrawal is 130 or 260 mg initially, followed by 130 mg every 15 to 30 minutes as needed.\n\nPhenobarbital, a barbiturate, functions by increasing the duration that chloride ion channels remain open in the brain, thus reducing neuronal excitability.\n\nStudies indicate similar effectiveness between phenobarbital and benzodiazepines for managing alcohol withdrawal syndrome. A recent study from Canada (Journal of Alcohol, Aug 2022) reviewed 184 cases and found that, after adjusting for confounders, presentations treated with phenobarbital were 71.3% less likely to require hospital admission (p = 0.03).",
            citation: "Pistore A, Penney S, Bryce R, Meyer C, Bouchard B. A retrospective evaluation of phenobarbital versus benzodiazepines for treatment of alcohol withdrawal in a regional Canadian emergency department. Alcohol. 2022 Aug;102:59-65. doi: 10.1016/j.alcohol.2022.05.001. Epub 2022 May 13. PMID: 35569673.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:32,
            imageAbove: nil,
            text: "What is McConnell’s sign?",
            options: [
                "Peri-umbilical ecchymosis on exam.",
                "Flank ecchymosis on exam.",
                "An ultrasound finding of RV bowing in the LV.",
                "An ultrasound finding of RV akinesis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: ultrasound showing RV free wall akinesis with sparing of the apex
            explanation: """
        McConnell’s sign on ultrasound is characterized by right ventricular (RV) free wall akinesis with sparing of the apex. This finding appears as if the apex of the RV is ‘bouncing’ like a trampoline while the rest of the RV wall remains still (video below).
        
        The diagnosis of sub-massive (non-hemodynamically significant) pulmonary embolism (PE) is challenging due to the patient's apparent stability, which can change rapidly. Point-of-care ultrasound (POCUS) provides crucial diagnostic insight in evaluating PE, especially when rapid deterioration is a concern.
        
        While McConnell’s sign is not highly sensitive (22%), it is 97% specific, making it a valuable finding in the immediate clinical setting.
        
        Umbilical ecchymosis is known as Cullen’s sign. In trauma patients, Cullen’s sign can indicate rectus sheath hematoma, splenic rupture, or acute hemorrhagic pancreatitis. It has also been associated with other conditions, such as perforated ulcers, intra-abdominal cancer, ruptured ectopic pregnancy, and anticoagulation complications.
        
        Grey Turner sign, which refers to ecchymosis of the flanks, may appear alongside Cullen’s sign, particularly in cases of retroperitoneal hemorrhage.
        
        RV bowing into the LV is another ultrasound finding associated with acute pulmonary hypertension, including PE, but it is not McConnell’s sign. In a standard four-chamber view, the RV:LV ratio should ideally be around 1:1.
        """,
            citation: """
        https://www.jacc.org/doi/10.1016/j.jaccas.2022.05.007#:~:text=McConnell's%20sign%20has%20long%20been,high%20specificity%20for%20acute%20PE.&text=A%20recent%20meta%2Danalysis%20in,the%20detection%20of%20acute%20PE.
        
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3312052/#:~:text=successful%20acute%20management.-,Cullen's%20sign%20is%20described%20as%20superficial%20oedema%20with%20bruising%20in,a%20result%20of%20haemorrhagic%20pancreatitis.
        """,
            isSample: true,
            videoExplain: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/McConnells.m4v"),
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:33,
            imageAbove: nil,
            text: "For patients presenting with typical chest pain, aside from the activity of chest pain (active or inactive), which factors most influence disposition?",
            options: [
                "PERC Score",
                "Wells Score and follow-up",
                "AHA Aortic Dissection Score",
                "HEART score and fidelity of follow-up"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        The HEART score should be used to initially risk stratify patients into low, medium, or high risk, estimating the likelihood of a major cardiac event in the coming days.
        
        Disposition for low- and high-risk patients is generally straightforward: low-risk patients can usually be discharged home, while high-risk patients should be admitted with consideration for early intervention. In high-risk cases, it is advisable to consult or at least inform cardiology of the admission.
        
        Some low-risk patients may warrant additional consideration, such as those with a family history of early cardiac events (e.g., a father who died of a massive MI in his 40s) or those with unknown comorbidities due to a lack of recent medical care.
        
        The moderate-risk group often requires the most deliberation regarding disposition. The likelihood of a patient being able to follow up with their PCP or cardiologist for further testing is the main determinant of whether a moderate-risk patient can be safely discharged or should be admitted.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:34,
            imageAbove: nil,
            text: "For patients presenting with typical chest pain, what initial question must be answered to determine disposition?",
            options: [
                "Do they also feel short of breath or nauseous?",
                "Are they of limited resources and have difficulty obtaining follow-up?",
                "What zip code do they live in?",
                "Are they still having active chest pain?"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Patients experiencing active chest pain should not be discharged. In cases of unstable angina (normal troponin and ECG), some patients may require intervention in the cardiac catheterization lab, particularly if chest pain persists despite treatment with nitroglycerin drip and other analgesia, including morphine.
        
        While access to follow-up care is an important consideration in discharge decisions, the primary determination is whether the patient is clinically stable and a suitable candidate for home discharge.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:35,
            imageAbove: nil,
            text: "What is typical chest pain?",
            options: [
                "Burning epigastric pain.",
                "Stabbing substernal pain worse with breathing.",
                "Crushing pain in the back during an emotional argument.",
                "Substernal, exertional, better with rest or nitroglycerin."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Pain that meets all three of the following criteria is considered “typical chest pain”: it is substernal, exertional, and improves with rest or nitroglycerin. This classification is significant as it indicates a concern for acute coronary syndrome (ACS), which includes STEMI, NSTEMI, or unstable angina. When fewer than three of these criteria are met, the pain is considered “atypical.”
        
        Additionally, dull, heavy, crushing pain radiating to the arm or jaw is also regarded as “typical” for ACS.
        
        Certain patient groups often present with atypical symptoms yet may still be experiencing ACS. These include genetically female patients, diabetics, and cardiac transplant recipients, who may instead report dyspnea, fatigue, or syncope due to altered cardiac neural innervation.
        
        It is also worth noting that while coronary artery disease affects the epicardial vessels, subendocardial ischemia is an emerging area of interest in cardiology.
        """,
            citation: """
        https://www.ahajournals.org/doi/10.1161/JAHA.119.015539
        
        https://jdc.jefferson.edu/cgi/viewcontent.cgi?article=1084&context=cardiologyfp#:~:text=Thus%2C%20most%20patients%20who%20have,or%20rhythm%20changes%20(6).
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:36,
            imageAbove: nil,
            text: "A 20-year-old presents to your ER with one week of mild pleuritic chest pain preceded by URI symptoms. You diagnose pericarditis based on ECG findings. You send a troponin because the patient's mother is concerned about myocarditis and insists on the test. The troponin is normal.\n\nWhen can the patient safely return to soccer practice?",
            options: [
                "When symptoms become very mild.",
                "After 7 days of NSAIDs.",
                "After clearance by the PCP.",
                "At least one month."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: diagram or timeline depicting recommended rest period for pericarditis patients before resuming sports
            explanation: """
        The American College of Cardiology recommends exercise restriction until complete resolution of symptoms or a minimum of 1 to 3 months. Some expert guidelines suggest varying durations after symptom resolution before resuming regular exercise, especially for athletes.
        
        The primary concern with returning to sports too soon is the risk of life-threatening dysrhythmias.
        
        A gradual exercise reintroduction schematic has been published by the American College of Cardiology to guide safe return to physical activity.
        
        NSAIDs can aid in symptom resolution. Naproxen 500mg BID is a commonly recommended option due to its twice-daily dosing and lower risk of gastrointestinal side effects.
        """,
            citation: "https://www.acc.org/latest-in-cardiology/articles/2022/09/06/11/53/pericarditis-in-athletes#:~:text=Exercise%20restriction%20is%20recommended%20until,in%20disease%20severity%20and%20course.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:37,
            imageAbove: nil,
            text: "What is the gold standard for diagnosing pulmonary embolism?",
            options: [
                "VQ Scan",
                "CXR",
                "MRI Chest",
                "CT Angiography of the Chest"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        CT Angiography (CT Angio) of the chest is the gold standard for diagnosing pulmonary embolism (PE). This differs from a standard CT chest with contrast, as the timing of contrast administration in CT Angio is specifically optimized to visualize the pulmonary arteries. Importantly, the contrast dose used in CT Angio is not typically sufficient to induce nephropathy.
        
        In patients who are allergic to contrast material, a VQ scan can be used as an alternative. However, it is only suitable for patients with normal baseline lung function and a normal chest X-ray (CXR), as the test relies on matching ventilation and perfusion.
        
        A CXR is not sensitive for detecting PE. However, it may reveal Westermark’s sign, an indication of reduced vascularity on one side due to obstructed flow in a pulmonary artery, also known as oligaemia.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        
        Question(
            id:38,
            imageAbove: nil,
            text: """
            A 69-year-old female with a past medical history of CHF, COPD, CKD, and CAD experiences sudden onset shortness of breath.
            
            En route to the ER, EMS administers nitroglycerin due to crackles and presumed pulmonary edema.
            
            What is the quickest modality to evaluate for pulmonary edema, and what findings would be consistent with this diagnosis?
            """,
            options: [
                "Kerley-B lines on CXR.",
                "Ground glass opacities on CT Chest.",
                "Ground glass opacities on MRI.",
                "B-lines on bedside ultrasound."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: ultrasound with B-lines in the anterior superior lung fields
            explanation: """
        More than three B-lines on each side of the anterior superior lung fields (just under the clavicles bilaterally) is suggestive of congestive heart failure (CHF). Unilateral B-lines (minimum of three) are more commonly associated with pneumonia.
        
        A rapid diagnosis is crucial in cases of flash pulmonary edema, where prompt initiation of a nitroglycerin drip and positive pressure ventilation can help prevent intubation. While medications like Lasix and morphine are also beneficial, their effects are less immediate.
        
        Kerley-B lines may also indicate pulmonary edema, but obtaining a chest X-ray typically takes longer than a bedside ultrasound.
        """,
            citation: "https://radiopaedia.org/articles/septal-lines-in-lung-1?lang=us",
            isSample: true,
            videoExplain: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/BLinesCHFVid.mp4"),
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:39,
            imageAbove: nil,
            text: "A 69-year-old female with a past medical history of CHF, COPD, CKD, and CAD experiences sudden onset shortness of breath. En route to the ER, EMS administers nitroglycerin due to crackles and presumed pulmonary edema.\n\nInitial BP is 210/117, and bedside ultrasound shows B-lines on both sides, confirming EMS suspicion.\n\nYou decide to initiate BiPAP and medications. Which medications should you choose?",
            options: [
                "Esmolol gtt, Hydralazine IV, Lasix IV.",
                "Lasix IV, Aspirin PO, Atorvastatin PO.",
                "Lasix IV, Morphine and Zofran IV.",
                "Nitroglycerin gtt, Lasix IV, Morphine IV."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: BEFORE - distressed patient with cyanosis; AFTER - patient on CPAP with IV labeled 'Nitro' looking comfortable
            explanation: """
        The primary goal in this scenario is to reduce blood pressure rapidly. A nitroglycerin drip should be initiated promptly, usually in the range of 50-200 µg/min, depending on the severity of respiratory distress and the urgency to prevent intubation.
        
        Starting at lower doses, like 5 or 10 µg/min, may not be sufficient in severe cases, though they may be appropriate in certain situations. It’s important to remember that a single sublingual nitroglycerin tablet contains 400 µg, so starting higher on the drip may be warranted. The rate can always be adjusted down or paused as needed.
        
        Additionally, a large dose of Lasix, typically around 80-100 mg IV, is common in these situations. Morphine can also help reduce sympathetic surge and preload, aiding in symptom relief.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        
        Question(
            id:40,
            imageAbove: nil,
            text: """
        A 67-year-old male presents with a productive cough and shortness of breath. A chest X-ray shows pneumonia.
        
        What decision rule can be used to help determine mortality risk and the need for admission?
        """,
            options: [
                "LRINEC Score.",
                "PLASMIC Score.",
                "ISTH Criteria.",
                "CURB-65."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: checklist or multiple images depicting CURB-65 criteria (confusion, rapid breathing, kidney injury, low BP)
            explanation: """
        The CURB-65 score helps predict 30-day mortality risk for patients with pneumonia. Scores correspond to risk levels: 1 point indicates low risk (~3% mortality), 2 points indicate moderate risk (~7% mortality), and 3 or more points indicate severe risk (14%+ mortality).
        
        The CURB-65 criteria include the following:
        - Age > 64 years
        - Confusion
        - BUN > 19 mg/dL
        - Respiratory rate > 29 breaths per minute
        - Systolic blood pressure < 90 mmHg or diastolic blood pressure < 60 mmHg
        
        Each of the other answer options has a different application:
        - The LRINEC Score assesses the risk of necrotizing soft tissue infection, indicating the need for surgical consultation.
        - The PLASMIC Score aids in stratifying the risk of thrombotic thrombocytopenic purpura (TTP).
        - The ISTH Criteria is used to evaluate the risk of disseminated intravascular coagulation (DIC).
        """,
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3198487/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            id:41,
            imageAbove: nil,
            text: """
        What common medical problem and related treatment impacts the interpretation of WBCs and leukocytosis?
        """,
            options: [
                "Diabetes Mellitus",
                "NSTEMI",
                "Gastroenteritis",
                "COPD"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Any condition that is acutely treated with steroids, such as prednisone, can cause an increase in WBCs in a dose-dependent manner. This rise is predominantly due to an increase in polymorphonuclear (PMN) white cells. “Bands,” or immature neutrophils, can help distinguish an iatrogenic rise from leukocytosis caused by infection. A bandemia with 6-10% bands or more is likely associated with infection.
        
        Other conditions that may prompt a check for steroid use include inflammatory bowel disease (IBD) like Crohn’s and ulcerative colitis, rheumatoid arthritis, lupus, and other autoimmune or inflammatory conditions.
        """,
            citation: "https://www.amjmed.com/article/0002-9343(81)90363-6/pdf",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            id:42,
            imageAbove: nil,
            text: """
        Which has been shown to be most successful for smoking cessation?
        """,
            options: [
                "Nicotine Lozenge",
                "Nicotine Gum",
                "Nicorette Patch",
                "Dual nicotine replacement therapy (NRT)"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        The most effective smoking cessation method is dual nicotine replacement therapy (NRT), which combines a nicotine patch with either a lozenge or gum. 
        
        The strength of a patch should be chosen based on the number of cigarettes smoked per day. For individuals smoking more than 10 cigarettes daily, the highest concentration (21 mg) is recommended. Lower doses (7 mg or 14 mg) can be used based on clinical discretion.
        
        Patients should use the lozenge or gum based on their preference, typically every 1-2 hours as needed to manage cravings.
        """,
            citation: "https://www.cdc.gov/tobacco/campaign/tips/quit-smoking/quit-smoking-medications/how-to-use-quit-smoking-medicines/how-to-use-a-nicotine-patch.html#:~:text=The%20nicotine%20patch%20comes%20in,so%20by%20your%20healthcare%20provider.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            id:43,
            imageAbove: nil,
            text: """
        An awake and alert 82-year-old female with COPD presents with sudden severe shortness of breath. When EMS arrives, they place her on a non-rebreather, achieving an oxygen saturation of 98%. However, her respiratory rate remains at 40, and she exhibits significant accessory muscle use in her thorax and neck as she “sucks in air.” Your first move is:
        """,
            options: [
                "Place an IV and administer methylprednisolone 125mg.",
                "Administer a DUONEB (albuterol and ipratropium)",
                "Give IV magnesium",
                "Call RT for BIPAP"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: BiPAP application or illustration of accessory muscle use in respiratory distress
            explanation: """
        Widespread adoption of positive pressure ventilation (PPV) in the ER has prevented many patients from requiring intubation. Early use of PPV is essential, especially for patients with a significantly increased work of breathing, evidenced by tachypnea and visible distress. Another indication to initiate BiPAP is persistent hypoxia despite a non-rebreather mask.
        
        So, which PPV mode should be selected? CPAP is generally used for CHF, while BiPAP is preferred for obstructive conditions like asthma and COPD. An additional consideration is frailty or hypotension in patients, as they may experience a blood pressure drop when PPV is started. In these cases, it is recommended to start with low PEEP: 5 for CPAP or 12/5 for BiPAP.
        
        The scenario specifies “an awake” patient, as patients need to be sufficiently alert to use PPV; traditionally, they must be able to remove the mask themselves if they begin to vomit. If an RT is available to stay with the patient, slightly altered mental statuses may be acceptable.
        
        Ideally, PPV should be continued for at least 4 hours, as removing it too soon increases the risk of decompensation, even if the patient initially appears improved.
        
        While steroids like methylprednisolone are beneficial, they take over an hour to show effects. DUONEB may have a quicker onset than steroids, but it is not as effective as PPV for critically ill patients in respiratory extremis.
        
        Lastly, while the role of magnesium in COPD is debated (it is more established in asthma), there is some evidence it can reduce the need for PPV in COPD.
        """,
            citation: """
        https://pubmed.ncbi.nlm.nih.gov/35616126/
        
        https://journals.lww.com/em-news/fulltext/2021/06000/what_to_d_o___steer_clear_of_magnesium_for_copd.2.aspx
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            id:44,
            imageAbove: nil,
            text: """
        A single dose of what antibiotic is sufficient to treat uncomplicated UTI?
        """,
            options: [
                "Macrobid",
                "Amoxicillin",
                "Cipro",
                "Fosfomycin"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Fosfomycin, given as a single 3-gram dose dissolved in water, is an effective treatment for uncomplicated urinary tract infections (UTIs).
        
        Macrobid (nitrofurantoin) is also an excellent first-line choice for uncomplicated UTI and is safe for use in pregnancy.
        
        Amoxicillin was previously used as a first-line agent for asymptomatic bacteriuria in pregnancy, but it is no longer recommended due to increasing resistance.
        
        Ciprofloxacin (Cipro) is often reserved for complicated UTIs, such as cases with ascending infection (pyelonephritis) or UTIs in males.
        """,
            citation: "https://www.aafp.org/pubs/afp/issues/2000/0201/p713.html",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            id:45,
            imageAbove: nil,
            text: """
        An 83-year-old female with a chronic indwelling Foley catheter from a nursing home presents with altered mental status and cloudy urine. Her family notes that she often exhibits these symptoms during urinary tract infections. What is your management approach?
        """,
            options: [
                "Start Ceftriaxone and admit patient for monitoring.",
                "Start Keflex and send patient back to the facility with strict return precautions.",
                "Flush the Foley to clear debris and initiate Macrobid.",
                "Exchange the Foley and place patient on Bactrim."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of a urinary Foley catheter
            explanation: """
        The appropriate management involves exchanging the Foley catheter and starting the patient on Bactrim. Other potential antibiotic choices include a cephalosporin or a fluoroquinolone (FQ); however, FQs are often avoided in elderly patients as they can exacerbate confusion.
        
        The key aspect of this case is recognizing the need for source control by promptly exchanging the Foley catheter.
        
        Note that the primary indications for a chronic indwelling Foley catheter are urinary incontinence and retention.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            id:46,
            imageAbove: nil,
            text: """
        An agitated patient presents to the ER swinging violently at staff and screaming nonsensical language. You need to administer the quickest onset sedative. Which of the following options has the fastest onset?
        """,
            options: [
                "Olanzapine",
                "Haloperidol",
                "Lorazepam",
                "Midazolam"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of an intramuscular injection
            explanation: """
        A 2021 study published in *The Lancet* found that Midazolam 5mg IM provided faster sedation in patients with undifferentiated agitation in the ER compared to olanzapine and haloperidol (also administered as 5mg IM). Midazolam and olanzapine were recommended over haloperidol due to haloperidol’s slower time to sedation and its potential for cardiovascular and extrapyramidal side effects.
        """,
            citation: "https://www.thelancet.com/journals/eclinm/article/PIIS2589-5370(21)00031-6/fulltext#:~:text=Midazolam%20resulted%20in%20faster%20sedation,cardiovascular%20and%20extrapyramidal%20side%20effects.",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Psychiatry"
        ),
        Question(
            id:47,
            imageAbove: nil,
            text: """
        A 46-year-old male with a remote history of DVT, status post IVC filter placement nine months ago, presents following a 2-minute episode where he "could not get any words out." His wife reported that the few words he managed were nonsensical, and he dropped his coffee from his right hand while struggling to lift his right arm and leg.
        
        Upon arrival at the ER, his neurological exam is normal. After a negative CT head, you plan to admit the patient for an MRI. How should further imaging be managed in the setting of an existing IVC filter?
        """,
            options: [
                "Forego further imaging as IVC filters are metal.",
                "Cover the IVC filter with special refractive material during MRI.",
                "Perform a CT head with contrast.",
                "Determine the filter type as some are MRI compatible."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: MRI safety considerations or an illustration of IVC filter placement
            explanation: """
        IVC filters are typically made from either nitinol (titanium) or stainless steel. Nitinol filters, being titanium-based, are MRI compatible and can safely undergo MRI.
        
        Currently, there is no refractive material that can safely shield an IVC filter in an MRI environment. A CT with contrast may be appropriate for other conditions, such as a brain abscess, but is not typically used in stroke evaluation.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Radiology"
        ),
        Question(
            id:48,
            imageAbove: nil,
            text: """
        A 19-year-old male presents with right lower quadrant pain, fever, and vomiting. You decide to order a CT abdomen/pelvis with contrast, given the approximate 5-10% increase in sensitivity for diagnosing appendicitis with a contrast study. The patient's mother expresses concern, asking, “What about kidney injury from the contrast?”
        
        Your response should be:
        """,
            options: [
                "“You’re right but we will hydrate him first, which reduces the risk.”",
                "“Yes, but we need the scan anyway.”",
                "“Let’s pass on a CT and do an ultrasound. The sensitivity of an ultrasound should be sufficient.”",
                "“There is no good evidence that kidney injury results from intravenous contrast for CT imaging.”"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of CT with contrast or kidneys
            explanation: """
        “There is no good evidence that kidney injury results from intravenous contrast for CT imaging” is correct. Current research indicates that intravenous contrast for CT does not significantly increase the risk of kidney injury. In contrast, intra-arterial contrast, often used during certain procedures, has been associated with kidney injury.
        
        Ultrasound has only about 35% sensitivity for diagnosing appendicitis, with the rate dropping to 22% in obese patients.
        
        It’s also worth noting that older gadolinium-based contrast agents (for MRI) are linked with nephrogenic systemic fibrosis in patients with advanced kidney injury. This condition primarily causes cutaneous issues but can involve multiple organ systems.
        """,
            citation: """
        https://pubmed.ncbi.nlm.nih.gov/21811194/
        https://emcrit.org/ibcc/contrast/
        https://www.mayoclinic.org/diseases-conditions/nephrogenic-systemic-fibrosis/symptoms-causes/syc-20352299#:~:text=Nephrogenic%20systemic%20fibrosis%20is%20a,large%20areas%20of%20the%20skin.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Radiology"
        ),
        Question(
            id:49,
            imageAbove: nil,
            text: """
        A 49-year-old male with a history of hyperlipidemia presents with sharp right-sided chest pain that started one hour prior to arrival while he was resting on his couch. The pain resolved after two minutes.
        
        The patient reports that six years ago, his cardiologist conducted a stress test followed by coronary angiography, revealing 55% coronary stenosis. His ECG and single troponin are normal. What is an appropriate option for diagnostics?
        """,
            options: [
                "A second troponin rules out ACS. No consideration to further work-up is necessary.",
                "No more testing is needed given the recency of coronary angiography without intervention.",
                "No more testing is needed given the single negative troponin.",
                "A second troponin is important because this patient is an early presenter (<2 hours). Even if negative, consider admission for continued evaluation."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of troponin testing or cardiac evaluation
            explanation: """
        A second troponin is important in this case because the patient is an early presenter (symptom onset <2 hours). Among patients presenting later (symptom onset >2 hours), single high-sensitivity troponin (hs-cTn) measurements are supported by extensive data for identifying low-risk acute MI. However, for early presenters, a second troponin is essential to more accurately assess risk.
        
        Additionally, a negative second troponin does not rule out all acute coronary syndromes (ACS), including unstable angina, even with high-sensitivity troponin testing.
        
        According to the SAEM GRACE-1 guidelines, low-risk chest pain with <50% stenosis on prior angiography within the last 5 years may be managed with expedited outpatient testing, rather than inpatient admission. However, this patient’s 55% stenosis and early presentation suggest a more thorough evaluation.
        """,
            citation: "https://www.ahajournals.org/doi/full/10.1161/CIRCULATIONAHA.122.059678",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:50,
            imageAbove: nil,
            text: """
        A 24-year-old man with a past medical history of nephrolithiasis presents with one day of polyuria and sudden onset of colicky, right-sided flank pain. The patient notes a “brownish color” in his urine and reports feeling nauseated during the pain, though without vomiting.
        
        He denies fevers, chills, edema, and any history of abdominal surgery.
        
        After receiving a normal saline bolus, morphine, and ketorolac, his pain is well controlled. What imaging study should be performed?
        """,
            options: [
                "Cat Scan Abdomen/Pelvis.",
                "MRI Abdomen.",
                "KUB.",
                "Ultrasound."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of stone locations in the urinary tract (UPJ, iliac crossing, UVJ)
            explanation: """
        In a 2019 systematic review of 232 articles by Moore et al., renal ultrasound was found to have up to 96% sensitivity for detecting stones in young patients with low BMIs. There is consensus that, in patients with typical symptoms of renal stones who achieve adequate pain relief, ultrasound is the imaging study of choice.
        
        Recall that stones commonly lodge in three narrowed anatomic locations along the urinary tract: the ureteropelvic junction (UPJ), the crossing of the iliac vessels, and the ureterovesical junction (UVJ). The farther along its course a stone has traveled, the more likely it is to pass spontaneously.
        
        While the majority of renal stones under 6 mm will pass without procedural intervention (>80% of cases), small lodged stones can still cause significant morbidity and mortality, particularly if a urinary tract infection is present. In the setting of an obstructing stone with infection, procedural intervention to remove the stone is indicated to achieve source control and prevent the accumulation of purulent material behind the stone.
        """,
            citation: "https://www.jacr.org/article/S1546-1440(19)30424-7/fulltext",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Nephrology"
        ),
        Question(
            id:51,
            imageAbove: nil, // Image suggestion: CT Angio or MRA showing engorgement of the ophthalmic vein indicative of CCF
            text: """
        A patient presents with new-onset diplopia. Her medical history includes a connective tissue disease.
        
        Which of the following is the most likely diagnosis and the appropriate diagnostic and treatment approach?
        """,
            options: [
                "Sinusitis; treat with antibiotics and analgesics",
                "Orbital cellulitis; initiate IV antibiotics and consult ophthalmology",
                "Carotid cavernous fistula; obtain advanced imaging (CT Angio or MRA) and consider endovascular embolization",
                "Thyroid eye disease; initiate thyroid function tests and supportive treatment"
            ],
            correctOptionIndex: 2,
            imageBelow: "CCF", // Image suggestion: second axial view showing right ophthalmic vein engorgement
            explanation: """
        The most likely diagnosis for this patient with new-onset diplopia, female gender, and connective tissue disease is a carotid cavernous fistula (CCF). CCFs involve an abnormal connection between the carotid artery and the cavernous sinus, leading to symptoms such as proptosis, chemosis, orbital bruit, dilated episcleral veins, eyelid swelling, and redness.
        
        Advanced imaging, such as CT Angio or MRA, is warranted to confirm the diagnosis. Imaging would likely reveal an engorged ophthalmic vein on the affected side due to arterialization of the venous blood supply.
        
        **Treatment Options**:
        - **Endovascular Embolization**: This is the most common and preferred treatment for CCF, involving the insertion of a catheter and using embolic agents (e.g., coils, balloons) to block the abnormal connection.
        - **Open Surgical Repair**: Reserved for complex or large fistulas that cannot be treated endovascularly, this procedure involves directly ligating or occluding the fistula.
        - **Observation**: Small, asymptomatic fistulas may be observed with regular follow-up and imaging to monitor for changes.
        
        In cases where cranial nerve deficits (CNs 3-6) are present, this suggests involvement of the cavernous sinus and should heighten suspicion for CCF.
        """,
            citation: "https://www.cureus.com/articles/123533-a-rare-and-surprising-case-of-spontaneous-type-b-carotid-cavernous-fistula-in-an-internal-medicine-ward#!/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:52,
            imageAbove: "Bells",
            text: """
            A generally healthy 31-year-old male living in Maine presents to your emergency department noting he can’t close his right eyelid. His eye is starting to bother him, and he also reports some difficulty swallowing water.
            
            On examination, you observe weakness in the right lower quadrant of his face, with a flattened nasolabial fold on the right side compared to the left (shown above). The rest of his neurologic examination is normal.
            
            What treatment is indicated?
            """,
            options: [
                "Valacyclovir.",
                "Prednisone.",
                "Admit for IV antibiotics and a lumbar puncture.",
                "Prednisone, valacyclovir, and doxycycline."
            ],
            correctOptionIndex: 3,
            imageBelow: "Bells2",  // First image // Second image
            imageBelow2: "CDCLyme",
            explanation: """
            For patients with new-onset Bell's palsy, early steroid treatment (preferably within three days) is indicated, as it improves the likelihood of recovery, shortens the recovery time, and reduces synkinesis (involuntary movement). The recommended dose is prednisone 60 to 80 mg daily for one week.
            
            In regions with high Lyme disease incidence (such as the Northeast and mid-Atlantic regions from northeastern Virginia to Maine), empiric doxycycline should be added while awaiting Lyme serology results.
            
            For patients presenting with severe facial palsy (House-Brackmann grade IV or higher), oral antiviral therapy (valacyclovir 1000 mg three times daily for one week) is also recommended.
            
            All patients with Bell's palsy should be assessed for eye closure completeness. If there is incomplete closure, eye care measures, including artificial tears, eye protection, and ointment or careful taping of the eye during sleep, are essential to prevent corneal injury.
            """,
            citation: """
            de Almeida JR, Guyatt GH, Sud S, et al. Management of Bell palsy: clinical practice guideline. CMAJ 2014; 186:917.
            
            Gronseth GS, Paduga R, American Academy of Neurology. Evidence-based guideline update: steroids and antivirals for Bell palsy: report of the Guideline Development Subcommittee of the American Academy of Neurology. Neurology 2012; 79:2209.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            id:53,
            imageAbove: nil,
            text: """
        A 49-year-old male with a history of epilepsy on Keppra presents with 15 minutes of generalized seizure activity. 
        
        You administer several appropriately dosed benzodiazepines without cessation of the seizure.
        
        What is your next choice of medication?
        """,
            options: [
                "Keppra",
                "Depakote",
                "Valproic Acid",
                "Fosphenytoin"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of fosphenytoin administration or anticonvulsant therapy
            explanation: """
        Benzodiazepines are the first-line treatment for seizures, but up to 33% of patients may not respond to them. Fosphenytoin is the only medication labeled by the FDA specifically for refractory seizures in adults. The recommended adult dose is 20 mg/kg, administered at a rate of 100 mg/minute.
        
        Other options, such as Keppra, Depakote, and Valproic Acid, are not FDA-approved for this indication, and none of these options are approved for pediatric patients with refractory seizures.
        """,
            citation: """
        NETT and PECARN Investigators. Randomized trial of three anticonvulsant medications for status epilepticus. N Engl J Med 2019 Nov;381(22):2103-13. PMID: 31774955 DOI: 10.1056/NEJMoa1905795.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:54,
            imageAbove: nil,
            text: """
        A 24-year-old female with no past medical history presents with a gradual onset of unilateral throbbing headache accompanied by one episode of non-bloody, non-bilious emesis.
        
        The headache was preceded by brief flashing lights. She reports no recent trauma and has a strong history of syncope with IVs. She tried naproxen 500 mg without relief.
        
        What medication should be trialed first-line to alleviate the headache?
        """,
            options: [
                "Aspirin 324mg",
                "Toradol IM",
                "Compazine PO",
                "Zofran 4-8mg PO once"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: diagram of migraine pathophysiology
            explanation: """
        Migraine headaches can often be treated effectively with PO Zofran 4-8 mg once, especially using a disintegrating tablet.
        
        While NSAIDs have traditionally been considered first-line for migraines, the serotonin-modulating effect of ondansetron (Zofran) can also be beneficial and is a suitable first choice, particularly in patients who are intolerant of IV and IM medications.
        
        For ongoing management, a short prescription for Zofran PRN and recommendations to keep a headache diary and seek neurologic evaluation are important additions to the treatment plan.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:55,
            imageAbove: nil,
            text: """
        A 37-year-old female with no stroke risk factors and a history of epilepsy has a witnessed seizure and presents 30 minutes later with right-sided hemiplegia.
        
        The patient has known intellectual delay and cannot provide much information about her current weakness. What is the most likely diagnosis?
        """,
            options: [
                "Left MCA stroke",
                "Right thalamic stroke",
                "Circle of Willis aneurysmal bleed",
                "Todd’s Paralysis"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: brain illustration showing seizure activity or weakness following a seizure
            explanation: """
        Todd’s paralysis is a temporary period of paralysis following a seizure. In a young patient with no stroke risk factors, the likelihood of an ischemic thromboembolic event is low. While stroke should always be considered, the clinical presentation here is more consistent with Todd’s paralysis. There is no specific treatment, and the paralysis typically resolves on its own over time.
        """,
            citation: """
        https://www.ninds.nih.gov/health-information/disorders/todds-paralysis#:~:text=Publications-,Definition,one%20side%20of%20the%20body.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        
        Question(
            id:56,
            imageAbove: nil,
            text: """
        A 52-year-old man with a history of home instability, anxiety, and depression presents after the public health department contacted him, advising him to go to the nearest ER for syphilis treatment due to a positive VDRL screening test.
        
        He recalls a remote history of a genital rash but is uncertain how long ago it occurred. What is the correct treatment?
        """,
            options: [
                "Penicillin G 2.4M Units IV x 1",
                "Penicillin G 2.4M Units IM x 1",
                "Doxycycline 100mg PO BID x 1 week",
                "Penicillin G 2.4M Units IM x 3"
            ],
            correctOptionIndex: 3,
            imageBelow: "Syphilis", // Image suggestion: illustration of Treponema pallidum spirochete
            explanation: """
        In cases of late latent syphilis, treatment consists of three weekly doses of penicillin G 2.4M Units IM.
        
        A presumptive diagnosis of syphilis requires two serologic tests: a nontreponemal test (e.g., VDRL or RPR) and a treponemal test (e.g., TP-PA, EIA, CIA, or rapid treponemal assay). False-positive nontreponemal test results can occur due to other infections, autoimmune conditions, vaccinations, drug use, pregnancy, and age, so a confirmatory treponemal test is recommended.
        
        If a patient is asymptomatic and the duration of infection is uncertain, late latent syphilis should be presumed and treated with three weekly IM doses of penicillin G. Early latent syphilis (<1 year) is treated with a single dose.
        
        Primary (painless chancre) and secondary (fever, rash, headache) syphilis are also treated with a single dose of penicillin. Tertiary syphilis, which can affect the cardiovascular, neurologic, and ocular systems, is managed similarly to late latent syphilis.
        
        Doxycycline is an effective alternative for penicillin-allergic patients, but the duration of treatment is two weeks.
        """,
            citation: """
        https://www.cdc.gov/std/treatment-guidelines/syphilis.htm#:~:text=A%20presumptive%20diagnosis%20of%20syphilis,test%20(i.e.%2C%20the%20T.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            id:57,
            imageAbove: nil,
            text: """
        A 76-year-old male with a past medical history of untreated atrial fibrillation, hypertension, hyperlipidemia, and pre-diabetes presents with a brief episode of right-sided weakness after dropping his coffee cup.
        
        His wife reports unintelligible speech during the episode, which lasted approximately 30 minutes and resolved just before his arrival at the emergency department.
        
        You decide to admit this patient for secondary stroke prevention, given the potential to reduce the likelihood of a future stroke by as much as __%.
        """,
            options: [
                "25%",
                "50%",
                "200%",
                "80%"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration of brain or stroke prevention visual
            explanation: """
        Accumulating evidence indicates that secondary stroke prevention—through the rapid implementation of multiple interventions—can reduce the risk of stroke by as much as 80%.
        
        This approach emphasizes prompt medical intervention, including anticoagulation for atrial fibrillation, blood pressure management, lipid control, and lifestyle modifications, to significantly lower stroke risk.
        """,
            citation: """
        Edlow JA. Managing patients with transient ischemic attack. Ann Emerg Med 2018 Mar;71(3):409-15.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:58,
            imageAbove: nil,
            text: """
        A healthy 19-year-old female presents to your emergency department with syncope. What tests are required as part of the syncope work-up?
        """,
            options: [
                "CBC and BMP",
                "CBC, CMP, and pregnancy test (hCG)",
                "CBC and CXR",
                "A pregnancy test and 12-lead ECG"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: visual of an ECG and pregnancy test to illustrate syncope work-up
            explanation: """
        The American Heart Association recommends a pregnancy test and a 12-lead ECG as the only required tests for the syncope work-up in an otherwise healthy young female.
        
        Additional tests can be considered based on the patient’s history and physical exam findings. For example, if the patient has been experiencing heavy menstrual bleeding or appears anemic (e.g., conjunctival pallor), a CBC to check for anemia may be warranted.
        
        For elderly patients, a more extensive work-up is generally indicated.
        
        Risk assessment tools such as the Canadian Syncope Risk Score (CSRS) can help determine the need for admission, providing a 30-day risk evaluation for death, arrhythmia, and myocardial infarction. The CSRS includes factors like a history of vasovagal predisposition, known heart disease, systolic blood pressure <90 or >180, elevated troponin, abnormal QRS axis or duration >130 ms, and QTc >480 ms. The San Francisco Syncope Rule is another useful decision tool.
        """,
            citation: """
        https://www.jwatch.org/na54885/2022/05/10/canadian-syncope-risk-score-now-validated-internationally
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:59,
            imageAbove: nil,
            text: """
        A 26-year-old male who is moderately obese presents after a syncope episode at a concert. You decide to apply the Canadian Syncope Risk Score (CSRS) to help guide disposition.
        
        What is an important exclusion criterion for applying the CSRS?
        """,
            options: [
                ">8 years old",
                "Syncope >2 minutes",
                "Taking an anticoagulant",
                "Altered mental status from baseline"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: checklist with "Canadian Syncope Score" at the top
            explanation: """
        The Canadian Syncope Risk Score (CSRS) is applicable for patients aged 16 and older who present within 24 hours of a syncope episode. Important exclusion criteria include prolonged loss of consciousness (>5 minutes), altered mental status from baseline, major trauma, head trauma, intoxication, language barrier, and witnessed seizure.
        
        It's also worth noting that myoclonus immediately following syncope (often termed convulsive syncope) can resemble seizure activity. Care should be taken when diagnosing myoclonus unless observed by an experienced provider, as it may lead to missing a true seizure diagnosis.
        """,
            citation: """
        https://www.jwatch.org/na54885/2022/05/10/canadian-syncope-risk-score-now-validated-internationally
        
        https://www.medlink.com/articles/convulsive-syncope
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:60,
            imageAbove: nil,
            text: """
        A security guard standing near the entrance to your emergency department collapses to the ground.
        
        Within moments, he begins to exhibit short bursts of jerking movements. Nearby staff members react, and one of your colleagues comments, “He probably just had a syncope spell, don’t worry—it’s not a seizure.”
        
        You check a pulse and note a “thready” radial pulse. What is your next course of action?
        """,
            options: [
                "Reassure the team and give the patient space for air.",
                "Obtain IV access and perform a 12-lead ECG.",
                "Splash water in his face.",
                "Place defibrillator pads and perform a point of care glucose check."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: defibrillator pads and glucose monitor setup
            explanation: """
        While your colleague may be correct that convulsive syncope can mimic seizure activity, another possible cause of brief jerking movements is cardiac arrest.
        
        The presence of a “thready” pulse should immediately raise concern for a cardiac dysrhythmia that may require cardioversion. In parallel with attaching defibrillator pads, it’s prudent to check a point-of-care glucose level, as hypoglycemia is a common contributor to fainting and can also lead to cardiac arrest.
        """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:61,
            imageAbove: nil,
            text: """
        A patient presents with witnessed syncope. Which of the following features is considered high risk for cardiogenic syncope?
        """,
            options: [
                "Headache.",
                "Mood change.",
                "Prodromal amnesia.",
                "Cyanosis witnessed during the episode."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: illustration showing cyanosis as a high-risk feature for cardiac syncope
            explanation: """
        Cyanosis observed during a syncope episode is associated with an increased likelihood of cardiac syncope.
        
        Symptoms prior to syncope that are associated with a lower likelihood of cardiac origin include mood changes or preoccupation with details (sensitivity, 2%; specificity, 76%; LR, 0.09), feeling cold (sensitivity, 2%; specificity, 89%; LR, 0.16), and headache (sensitivity, 3%; specificity, 80%; LR, 0.17).
        
        Additionally, post-syncope mood changes (sensitivity, 3%; specificity, 83%; LR, 0.21) and inability to recall behavior prior to syncope (sensitivity, 5%; specificity, 82%; LR, 0.25) are associated with a non-cardiac etiology.
        """,
            citation: """
        Albassam OT, Redelmeier RJ, Shadowitz S, Husain AM, Simel D, Etchells EE. Did this patient have cardiac syncope?: the rational clinical examination systematic review. JAMA 2019 Jun;321(24):2448-57. PMID: 31237649 DOI: 10.1001/jama.2019.8001.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:62,
            imageAbove: nil,
            text: """
        Above what age of onset of syncope is associated with the greatest likelihood of cardiac syncope?
        """,
            options: [
                "20",
                "45",
                "55",
                "35"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // No image available for this question
            explanation: """
        An age of first onset of syncope at or above 35 years is associated with a higher likelihood of cardiac syncope (LR, 3.3 [95% CI, 2.6-4.1]). Conversely, an onset age below 35 years has a low likelihood ratio for cardiac syncope (LR, 0.13 [95% CI, 0.06-0.25]).
        """,
            citation: """
        Albassam OT, Redelmeier RJ, Shadowitz S, Husain AM, Simel D, Etchells EE. Did this patient have cardiac syncope?: the rational clinical examination systematic review. JAMA 2019 Jun;321(24):2448-57. PMID: 31237649 DOI: 10.1001/jama.2019.8001.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:63,
            imageAbove: nil,
            text: """
        A 24-year-old woman with no medical history presents to your urgent care with syncope. What are the only two tests recommended by the American Heart Association for syncope evaluation in a young, healthy woman?
        """,
            options: [
                "CBC and CMP",
                "CMP and pregnancy test",
                "ECG and Chest X-Ray",
                "Pregnancy test and ECG"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: artwork inspired by "Normal Rockwell’s Iskra’s Expecting" on a monitor
            explanation: """
        The American Heart Association recommends only an ECG and a pregnancy test for syncope evaluation in a young, healthy woman.
        
        Additional tests are generally unnecessary unless the history or physical examination indicates specific concerns that warrant further investigation.
        """,
            citation: """
        Albassam OT, Redelmeier RJ, Shadowitz S, Husain AM, Simel D, Etchells EE. Did this patient have cardiac syncope?: the rational clinical examination systematic review. JAMA 2019 Jun;321(24):2448-57. PMID: 31237649 DOI: 10.1001/jama.2019.8001.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:64,
            imageAbove: nil,
            text: """
        A 90-year-old female is eating steak when she suddenly develops mid-anterior chest discomfort. She attempts to relieve the pain by taking large gulps of water, which only worsens the pain.
        
        She presents to the ER 8 hours after symptom onset because her discomfort has not improved. What is the best next step?
        """,
            options: [
                "Call GI for upper endoscope",
                "Administer insulin SQ",
                "Try a GI cocktail such as Maalox or Magic Mouthwash",
                "Trial IV or IM glucagon"
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: pictorial or X-ray of esophagus with food stuck
            explanation: """
        For esophageal food impaction, an initial trial of glucagon 1-2 mg IV/IM is generally attempted to relax the esophagus before considering upper endoscopy for removal. Note that glucagon has modest success rates for esophageal food bolus (~30%) and may induce vomiting.
        
        The duration of the impaction is crucial; as the 24-hour mark approaches, the risk of esophageal perforation increases significantly. It’s advisable to alert GI consultants early for patients potentially nearing this 24-hour threshold.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2661297/
        https://errxpodcast.com/glucagon-esophageal-impaction/
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            id:65,
            imageAbove: nil,
            text: """
        In a patient presenting with vomiting and diarrhea, what feature, or lack thereof, is highly consistent with viral gastroenteritis rather than a more serious cause?
        """,
            options: [
                "Low grade fever.",
                "High grade fever.",
                "Chest pain.",
                "Lack of significant abdominal pain."
            ],
            correctOptionIndex: 3,
            imageBelow: nil, // Image suggestion: artistic rendering inspired by Salvador Dali showing a calm child with medical context
            explanation: """
        A patient with vomiting and diarrhea who experiences minimal abdominal pain is highly likely to have viral gastroenteritis rather than a more serious abdominal process.
        
        There are exceptions to this guideline, especially in patients who are elderly, altered, or undergoing chemotherapy, as these factors may limit the ability to accurately assess abdominal discomfort. Mild fever is also common with gastroenteritis, and most patients improve quickly with fluids and antiemetics.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/books/NBK518995/
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            id:66,
            imageAbove: nil,
            text: """
        What electrolyte disturbance contributes to constipation?
        """,
            options: [
                "Na",
                "Cl",
                "P",
                "K"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Hypokalemia is a common contributor to constipation and can progress to ileus.
        
        Other notable risk factors for constipation include a sedentary lifestyle, low water intake, and opioid use.
        
        For patients with fecal impaction, disimpaction is essential to prevent serious complications such as stercoral perforation, which carries a high mortality rate (33%). Treatment options include suppositories and enemas, but manual digital disimpaction may be required for obstructing rectal fecalomas. Exercise caution during manual disimpaction to avoid iatrogenic perforation.
        
        In some cases, IV narcotic pain medication may be necessary to facilitate disimpaction, and a nurse chaperone is advised.
        """,
            citation: """
        https://bmcgeriatr.biomedcentral.com/articles/10.1186/s12877-015-0162-5
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            id:67,
            imageAbove: nil,
            text: """
        What is one complication of chronic constipation?
        """,
            options: [
                "Gastritis",
                "Duodenal ulceration",
                "Inflammatory bowel disease",
                "Stercoral colitis"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Chronic stagnation of fecal matter, including fecaloma, can lead to stercoral colitis, which results from compression of the colonic wall and surrounding vasculature. When blood supply cannot meet cellular and metabolic demands, ulceration and pressure necrosis of the bowel wall may develop.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/books/NBK560608/#:~:text=Stercoral%20colitis%20occurs%20when%20a,lodged%20in%20certain%20colonic%20areas.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            id:68,
            imageAbove: nil,
            text: """
        What are the priorities for successful resuscitation with optimal neurologic outcome during cardiac arrest?
        """,
            options: [
                "Early epinephrine and excellent bag valve mask ventilation.",
                "Effective chest compression and fluid boluses.",
                "Shocking early and frequently.",
                "Effective chest compressions and early defibrillation."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Uninterrupted chest compressions are critical for optimizing neurologic recovery after return of spontaneous circulation (ROSC). As a code leader, you can ensure minimal pauses in compressions by reminding the compressor, monitoring for fatigue, and assigning a new compressor when needed.
        
        Additionally, inform the team that the defibrillator will be pre-charged during chest compressions, and keep pulse checks under 10 seconds. Coordinate pulse checks with other actions, such as placing an IO for medication delivery.
        
        Ensure that defibrillator pads are applied quickly and properly. If shocks appear ineffective, recheck pad placement and contact.
        
        Although bag valve mask ventilation can be continued during a code, consider intubation only if primary respiratory failure or hypoxia is suspected as the cause of arrest. In cases of hypoxia from foreign body obstruction, perform upper airway maneuvers like a finger sweep or use of Magill forceps. If necessary, intubation can be performed, even if it pushes the foreign body further down, as bronchoscopy can later be used to retrieve it in the OR.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5553505/
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:69,
            imageAbove: nil,
            text: """
        A 45-year-old male with a recent upper respiratory infection (URI) and forceful nose blowing over the past five days now has intermittent anterior epistaxis. He takes only aspirin for “cardioprotection.” What is your next step?
        """,
            options: [
                "Afrin nasal spray in both nostrils.",
                "Transfuse 1 pack of platelets.",
                "Saline nasal irrigation.",
                "Soak cotton with TXA and pack the culprit nare with bayonet forceps."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Topical tranexamic acid (TXA) is particularly effective for mild to moderate anterior epistaxis in patients on antiplatelet therapy and may prevent the need for more aggressive packing methods like a Rhino Rocket.
        
        In a 2016 randomized controlled trial, TXA-soaked packing achieved bleeding cessation within 10 minutes in 73% of cases among patients on antiplatelet agents, compared to 29% in the standard anterior nasal packing (ANP) group. Rebleeding within 24 hours was also lower in the TXA group.
        
        A 2022 systematic review in the American Journal of Emergency Medicine reported a 3.5-fold higher likelihood of achieving hemostasis with TXA compared to vasoconstrictors with or without local anesthetics.
        
        For patients with severe bleeding, manual compression and IV access should be prioritized, with consideration for IV TXA administration if necessary.
        """,
            citation: """
        https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6517002/#:~:text=Tranexamic%20acid%20to%20stop%20or,as%20cautery%20and%20nasal%20packing.
        https://www.bumc.bu.edu/emergencymedicine/files/2018/03/Zahed-Topical-TXA-vs-Packing-for-Epistaxis-2017.pdf
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Head, Ear, Eye, Nose & Throat"
        ),
        Question(
            id:70,
            imageAbove: "FentUser",
            text: """
        A 39-year-old male daily fentanyl user (intranasal route) presents to your emergency department requesting buprenorphine to support “going cold turkey.”
        
        Which of the following presentations suggests he is an ideal buprenorphine candidate?
        """,
            options: [
                "Last use of intravenous fentanyl in the last 2 hours with no symptoms.",
                "Last use of intravenous fentanyl 16 hours ago with severe vomiting and anxiety.",
                "Last use of intranasal fentanyl in the last 4 hours with very mild headache.",
                "Last use of intranasal fentanyl approximately 24 hours ago with moderate anxiety and stomach discomfort."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        In the United States, buprenorphine can be dispensed by an opioid treatment program and prescribed by any provider licensed under state law with a valid DEA registration. The 2023 Consolidated Appropriations Act removed the requirement for the federally mandated DATA waiver (X-Waiver).
        
        Buprenorphine acts as a partial agonist at the mu-opioid receptor with high receptor affinity, producing a "ceiling effect" at high doses that reduces overdose risks, such as respiratory depression. Initiating buprenorphine too soon after opioid use can precipitate withdrawal; thus, it should be started when objective signs of moderate withdrawal are observed, usually six or more hours after a short-acting opioid and potentially 24-48 hours after a long-acting opioid.
        
        The mode of opioid use (IV, IN, etc.) is less important than the time elapsed since last use and the type of opioid. Mild withdrawal symptoms during this period can be managed with acetaminophen for aches, antacids, loperamide for diarrhea, and hydroxyzine or clonidine for anxiety.
        
        Buprenorphine provides relief from withdrawal symptoms for 24-48 hours, with peak plasma levels approximately 90 minutes post-administration.
        """,
            citation: """
        Substance Abuse and Mental Health Services Administration. Removal of DATA Waiver (X-Waiver) Requirement. https://www.samhsa.gov/medications-substance-use-disorders/removal-data-waiver-requirement (Accessed on February 07, 2023).
        
        Walsh SL, Preston KL, Stitzer ML, et al. Clinical pharmacology of buprenorphine: ceiling effects at high doses. Clin Pharmacol Ther 1994; 55:569.
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        
        Question(
            id:71,
            imageAbove: nil,
            text: """
        A 41-year-old male with alcohol use disorder on naltrexone presents after a relapse in his drinking. He asks you about the mechanism of how his naltrexone suppresses alcohol cravings. 
        
        Your response should be:
        """,
            options: [
                "Competitive mu receptor agonism.",
                "By inhibiting GABA.",
                "As an alpha-2 agonist.",
                "By modifying the hypothalamic-pituitary-adrenal axis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Naltrexone is a pure opioid antagonist structurally similar to morphine derivatives, functioning as a competitive antagonist with the highest affinity for mu-opioid receptors. It also modifies the hypothalamic-pituitary-adrenal (HPA) axis, which plays a role in suppressing alcohol cravings.
        
        Treatment initiation of naltrexone for moderate to severe alcohol use disorder should be medically supervised due to the risk of precipitated withdrawal. Naltrexone is contraindicated in patients currently taking opioids, those with acute hepatitis, elevated liver enzymes (transaminitis 3-5 times normal), or liver failure.
        
        For opioid use disorder, naltrexone is generally reserved for patients who cannot tolerate or prefer not to use buprenorphine or methadone or who have completed a medically supervised withdrawal.
        """,
            citation: """
        American Society of Addiction Medicine (ASAM). The ASAM National Practice Guideline for the Treatment of Opioid Use Disorder: 2020 Focused Update. J Addict Med. 2020;14(2S)(suppl 1):1-91. doi:10.1097/ADM.0000000000000633 [PubMed 32511106]
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            id:72,
            imageAbove: nil,
            text: """
        Inhalant abuse can lead to severe cardiovascular complications.
        
        Which of the following medications is considered a potential treatment option for managing the cardiovascular effects of inhalant use, specifically addressing tachycardia and hypertension?
        """,
            options: [
                "Naloxone.",
                "Flumazenil.",
                "Naltrexone.",
                "Esmolol."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        One potential treatment option for managing the cardiovascular effects of inhalant use is the administration of esmolol, a short-acting beta-blocker selective at the beta-1 adrenergic receptor.
        
        Inhalant abuse can have profound effects on the cardiovascular system, leading to increased heart rate (tachycardia) and elevated blood pressure (hypertension). These cardiovascular complications can be life-threatening and require prompt intervention.
        
        Esmolol selectively blocks beta-adrenergic receptors, reducing the heart rate and blood pressure. By antagonizing the effects of catecholamines on the heart, esmolol helps stabilize the cardiovascular system and manage tachycardia and hypertension associated with inhalant use.
        """,
            citation: "https://www.aliem.com/beta-blockers-inhalant-induced-ventricular-dysrhythmias/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:73,
            imageAbove: nil,
            text: """
        EMS receive a call for an unresponsive person found with needles next to him. EMS delivers intranasal Narcan with a brief improvement in mental status and respiratory rate.
        
        The patient is transferred to the ER gurney and you check a pulse, finding the patient pulseless.
        
        In addition to beginning ACLS, what Narcan dose should be given?
        """,
            options: [
                "0.02mg IV",
                "0.2mg IV",
                "20mg IV",
                "2mg IV"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Naloxone 2mg IV is an appropriate dose in cardiac arrest due to opioid overdose. Note that around 1% of patients can develop noncardiogenic pulmonary edema as a side effect of naloxone administration. The mechanism is thought to be laryngospasm and negative pressure or sudden sympathetic surge.
        
        2mg is also generally the dose given by lay persons via intranasal (IN) route. Note that in 2021, the FDA also approved higher IN doses, at 8mg.
        
        The 0.02-0.04mg dose can be used to improve RR and mental status while limiting precipitated withdrawal.
        
        0.2-0.4mg IV should be given to the obtunded opioid overdose with pulses.
        
        20mg is generally too high; however, “higher dose” naloxone products exist, including prefilled syringes of 4-5mg for IM/SC/IV delivery.
        """,
            citation: """
        https://www.ahajournals.org/doi/full/10.1161/CIR.0000000000000958
        
        https://www.fda.gov/news-events/press-announcements/fda-approves-higher-dosage-naloxone-nasal-spray-treat-opioid-overdose
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            id:74,
            imageAbove: nil,
            text: """
        A patient presents with concern of arsenic poisoning due to a diet high in shellfish.
        You reassure the patient that fish arsenic is excreted within 48 hours of ingestion, but they insist on a test. Which of the following is the best biomarker of acute exposure?
        """,
            options: [
                "Stool As level",
                "Hair As level",
                "Blood As level",
                "Urine As level"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
        Arsenic is rapidly cleared from the blood, so measurement of urinary arsenic, either on a 24-hour urine collection or in a spot urine, is generally preferable.
        
        Arsenic is a naturally occurring element found in the earth's crust and within numerous ores. Human exposures can occur from natural sources, such as volcanic eruptions, or arsenic leaching from soil and rocks into drinking water. Other sources include inhalation of arsenic dust in industries like smelting and refining, certain pesticides, fossil fuel combustion, some moonshine, and specific treatments for syphilis and certain cancers (arsenic trioxide).
        
        The primary routes of arsenic entry are ingestion and inhalation, with dermal absorption occurring to a lesser extent. After absorption, arsenic distributes widely in the body, with most tissues clearing it quickly except for skin, hair, and nails. Arsenic undergoes biomethylation in the liver, which was long considered the main detoxification route. New studies also highlight mechanisms like antioxidant defenses, resistance to apoptosis, and transport mechanisms.
        
        Approximately 70% of arsenic is excreted, mainly in urine. Acute toxicity typically presents with nausea, vomiting, abdominal pain, and diarrhea, followed by dehydration, hypotension, QTc prolongation, and potentially fatal complications like arrhythmias, ARDS, and shock. Chronic exposure, on the other hand, is associated with neurologic symptoms, skin changes, malignancies, respiratory disease, cardiovascular disease, and increased all-cause mortality.
        
        Concentrations of urinary arsenic greater than or equal to 50 mcg/L, in the absence of recent seafood intake, suggest arsenic poisoning. Treatment is with chelation, using oral DMSA (succimer) for milder cases, or dimercaprol or DMPS (sodium 2,3-dimercapto-1-propane sulfonate) for severe cases.
        
        Historical note: Rasputin is rumored to have ingested low doses of arsenic to develop tolerance and avoid lethal poisoning.
        """,
            citation: """
        https://www.atsdr.cdc.gov/csem/arsenic/biologic_fate.html#:~:text=Arsenic%20is%20excreted%20in%20the%20urine%20primarily%20through%20the%20kidneys,or%20arsenate%20%5BMarafante%20et%20al.
        
        https://www.uptodate.com/contents/arsenic-exposure-and-poisoning?search=arsenic&sectionRank=3&usage_type=default&anchor=H30&source=machineLearning&selectedTitle=1~127&display_rank=1#H1229512021
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:75,
            imageAbove: nil,
            text: """
        A 19F with mood instability presents with vomiting 2 hours after taking 3000 mg total worth of lithium immediate-release tablets. She is vomiting and appears unwell. You send a lithium level and call the lab to kindly request expediting results.
        
        Your threshold for hemodialysis should be:
        """,
            imageMiddle: nil,
            options: [
                "Lithium level of 1 mEq/L with a Cr of 2.",
                "Lithium level of 2 mEq/L with a Cr of 1.",
                "Lithium level of 4 mEq/L with a Cr of 1.",
                "Lithium level of 5 mEq/L with a Cr of 1."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
        Any adult who ingests more than 2400 mg of lithium, or any child who ingests more than 30 mg/kg, requires clinical and laboratory evaluation to assess for toxicity.
        
        Hemodialysis is the treatment of choice for severe lithium toxicity because lithium is readily dialyzable due to its low molecular weight, negligible protein binding, and small volume of distribution.
        
        Hemodialysis is indicated if there are severe symptoms or serum lithium concentrations are greater than 5 mEq/L, or if greater than 4 mEq/L with creatinine greater than 2 mg/dL.
        
        In an awake, asymptomatic patient who presents within four hours after a presumed significant ingestion of sustained-release lithium (greater than 10 to 15 tablets) or within one hour of a large ingestion of immediate-release lithium, there is Grade 2C evidence to perform whole-bowel irrigation with polyethylene glycol (PEG) solution.
        
        Restoration of sodium and water balance in hypovolemic patients with isotonic (0.9%) saline is also required to maximize lithium clearance. Continuing isotonic saline even once euvolemic will increase kidney lithium excretion since lithium and sodium are both reabsorbed by the proximal tubules. A reasonable rate is twice maintenance but should be sufficient to maintain adequate urine output.
        """,
            citation: """
        https://www.uptodate.com/contents/lithium-poisoning?search=lithium%20toxicity&sectionRank=3&usage_type=default&anchor=H32&source=machineLearning&selectedTitle=1~55&display_rank=1#H1479347063
        """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        
        Question(
            id:76,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/RetinalDetachmentMP4.mp4"),
            imageAbove: nil,
            text: """
            The hyper echoic line seen on the ocular ultrasound above is consistent with what diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Vitreous hemorrhage.",
                "Lens dislocation.",
                "Keratitis",
                "Retinal detachment."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            On ocular ultrasound, the detached retina appears as a distinct hyperechoic line anterior to the choroid layer.
            
            Presenting symptoms of retinal detachment often include new floaters, flashes of light, and/or a constant, fixed visual field loss.
            
            On ultrasound, in a normal eye, the vitreous cavity appears as a circular hypoechoic structure with a hyperechoic retina.
            
            In the setting of a retinal detachment, a portion of the retina is no longer contiguous with the choroid. The detached retina appears as a distinct hyperechoic line.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC6859292/
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:77,
            imageAbove: nil,  // No image specified
            text: """
            A 4-year-old girl is rushed into your ER held in her mother’s arms. Her mother states: “She was normal one hour ago and became lethargic very quickly. I think I saw her sucking on one of my medications earlier. I take an antidepressant and recently some cold medication.”
            
            You observe a minimally responsive child with normal perfusion. Looking in the child’s mouth, you notice a yellowish capsule adhered to the upper palate. 
            
            What is the likely toxic ingestion?
            """,
            imageMiddle: nil,
            options: [
                "Tricyclic antidepressant.",
                "Tylenol #3.",
                "Azithromycin.",
                "Tessalon Perles."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Tessalon Perles, also known as benzonatate, can cause coma, seizures, and severe metabolic acidosis in children, with younger children experiencing worse outcomes.
            
            Toxicity has been documented from as little as one 100 mg capsule. The mechanism of toxicity appears to involve sodium channel blockade. Given the molecular similarity to tetracaine and ester-linked anesthetics, lipid emulsion therapy should be considered in cases of cardiovascular collapse, along with supportive measures.
            
            Due to the questionable antitussive benefits of Tessalon Perles in adults and the significant risk to children, it may be safest to avoid prescribing these medications altogether.
            """,
            citation: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3526931/",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology" // Assuming the subject is Toxicology; update if needed
        ),
        Question(
            id:78,
            imageAbove: nil,  // No image specified
            text: """
            What is an EmPATH unit, and how does it address the challenge of prolonged boarding of psychiatric patients in the emergency department?
            """,
            imageMiddle: nil,  // No image specified
            options: [
                "An EmPATH unit is a transport vehicle used for critically ill patients.",
                "An EmPATH unit is a medication storage facility within a hospital.",
                "An EmPATH unit is a mobile telemedicine platform for remote consultations in emergencies.",
                "An EmPATH unit is a specialized area within the emergency department that tackles the issue of prolonged boarding for psychiatric patients."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,  // No image specified
            explanation: """
            To address the issue of prolonged boarding for psychiatric patients, EmPATH units provide dedicated spaces within the emergency department. These units have specialized staff who promptly assess and treat psychiatric emergencies.
            
            In a significant 2023 ruling, U.S. Supreme Court Judge Landya McCafferty of New Hampshire mandated that psychiatric patients cannot stay in the emergency department for more than six hours. EmPATH units ensure timely care and compliance with the ruling, improving patient outcomes and easing the strain on emergency department resources.
            """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Psychiatry"
        ),
        Question(
            id:79,
            imageAbove: nil,  // No image specified
            text: """
            Which recent legislation in the United States introduced requirements for public reporting of intensive care unit (ICU) capacity during public health emergencies?
            """,
            imageMiddle: nil,  // No image specified
            options: [
                "The Emergency Medical Treatment and Labor Act (EMTALA)",
                "The Health Insurance Portability and Accountability Act (HIPAA)",
                "The Affordable Care Act (ACA)",
                "The Coronavirus Aid, Relief, and Economic Security (CARES) Act"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,  // No image specified
            explanation: """
            The Coronavirus Aid, Relief, and Economic Security (CARES) Act, passed in 2020, introduced provisions for public reporting of ICU capacity during public health emergencies. This legislation aimed to enhance transparency and provide crucial information to the public and healthcare stakeholders about the availability and utilization of ICU beds. The incorrect options listed are landmark healthcare legislation, but they do not specifically address the recent requirements for public reporting of ICU capacity introduced by the CARES Act.
            """,
            citation: "",
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:80,
            imageAbove: nil,  // No image specified
            text: """
            Which of the following is a 2023 legislative landmark set by New Hampshire U.S. District Court Judge Landya McCafferty?
            """,
            imageMiddle: nil,  // No image specified
            options: [
                "Patients on psychiatric holds are to receive a psychiatric evaluation within 12 hours of their arrival.",
                "Patients on psychiatric holds must receive oral medication treatment within 24 hours.",
                "Patients on psychiatric holds must receive oral medication treatment within 12 hours.",
                "Patients on psychiatric holds can only be held for up to 6 hours before being transferred to a facility for treatment."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,  // No image specified
            explanation: """
            ED boarding of individuals seeking inpatient psychiatric treatment is a national problem stemming from an array of economic and structural challenges in healthcare, compounded by severe workforce shortages and COVID-era related increases in the prevalence of mental health issues.
            
            McCafferty’s ruling in February 2023 said the state is violating the rights of hospitals by seizing their property. 
            
            New Hampshire has one year to stop the involuntary holding of psychiatric patients in emergency rooms, several months after declaring the state’s practice unconstitutional. McCafferty also ruled the state can only hold people in emergency rooms for up to six hours before transferring them to a facility for treatment.
            """,
            citation: """
            https://www.dhhs.nh.gov/news-and-media/nh-dhhs-announces-mission-zero-plan-eliminate-emergency-department-boarding
            
            https://apnews.com/article/new-hampshire-mental-health-emergency-room-boarding-5240ac62bc83ea69ac589043baa8ee83
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        
        Question(
            id:81,
            imageAbove: nil,  // No image specified
            text: """
            A 38-week pregnant woman presents in active labor with crowning.
            
            The patient’s obstetrician works at a clinic a few minutes drive down the street.
            
            Per the Emergency Medical Treatment and Active Labor Act, your obligation to deliver the baby is as follows:
            """,
            imageMiddle: nil,  // No image specified
            options: [
                "You may transfer the baby if it is your clinical preference.",
                "You may transfer the baby as long as you deem continuity of care to be of primary concern.",
                "You are required to transfer the mother to her OB physician given local proximity.",
                "You must deliver the baby unless she is considered a high-risk pregnancy."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,  // No image specified
            explanation: """
            EMTALA Guidelines require the emergency doctor to deliver the baby unless the benefit outweighs the risk of transfer.
            
            An example of such a case where emergent transfer would be considered beneficial for a woman in active labor would be in a very high-risk delivery.
            
            According to the EMTALA Interpretive Guidelines – Responsibilities of Medicare Participating Hospitals in Emergency Cases (Appendix V):
            
            "If a woman is in labor, the hospital must deliver the baby and the placenta or transfer appropriately. She may not be transferred unless she, or a legally responsible person acting on her behalf, requests a transfer and a physician or other qualified medical personnel, in consultation with a physician, certifies that the benefits to the woman and/or the unborn child outweigh the risks associated with the transfer."
            """,
            citation: """
            https://www.cms.gov/Regulations-and-Guidance/Guidance/Manuals/Downloads/som107ap_v_emerg.pdf
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject:  "Legal and Healthcare Regulation"
        ),
        Question(
            id:82,
            imageAbove: "FingerFelon",  // No image specified
            text: """
            A 41-year-old male injection drug user presents with a red, painful digit, as above.
            
            Your exam raises concern for a tenosynovitis and felon, for which you would like to transfer the patient, given your facility does not have a hand surgeon on call.
            
            Which of the following is a requirement for an ‘Appropriate Transfer’ per EMTALA Guidelines?
            """,
            imageMiddle: nil,  // No image specified
            options: [
                "The receiving facility has hand surgeons despite bed unavailability.",
                "An emergency department attempt must be made to drain the felon.",
                "Advanced life support (ALS) personnel must be utilized.",
                "IV antibiotics should be initiated."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,  // No image specified
            explanation: """
            Per EMTALA guidelines, an appropriate inter-hospital transfer includes providing medical treatment within its capacity, and IV antibiotics are included in this.
            
            A receiving facility must have more than a hand surgeon on call; they must have space for the patient. 
            
            No procedure should be attempted outside the scope of practice of the physician.
            
            Basic life support transport is likely sufficient in this case.
            
            Four Requirements for an Appropriate Transfer:
            1. Transferring hospital provides medical treatment within its capacity.
            
            2. The receiving facility has available space and qualified personnel AND has agreed to accept the patient.
            
            3. The transferring hospital sends to the receiving facility all medical records that are available at the time of transfer.
            
            4. The transfer is effected through qualified personnel and transportation equipment. Note that the physician at the sending hospital (not the receiving hospital) has the responsibility to determine the appropriate mode, equipment, and attendants for transfer. An EMT may not always be “qualified personnel”, and this is up to the sending provider.
            """,
            citation: """
            https://www.cms.gov/regulations-and-guidance/legislation/emtala
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:83,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/inferior+epigastric.mov"), // Replace with your actual video URL
            imageAbove: nil,
            text: """
            A 67M with PMH of end stage liver cirrhosis who is on the transplant list presents with abdominal distension and difficulty fully inspiring. He is requesting a therapeutic paracentesis.
            
            You prep his abdomen and place an ultrasound with color flow.
            
            What vascular structure are you trying to avoid in the above ultrasound?
            """,
            imageMiddle: nil,
            options: [
                "External iliac arteries.",
                "Greater saphenous veins.",
                "Axillary tributaries.",
                "Inferior epigastric arteries."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The inferior epigastric arteries (IEAs), branches of the external iliac artery that supply blood to the anterior abdominal wall, must be avoided during paracentesis. The IEAs run lateral to the midline, approximately midway between the umbilicus and the anterior superior iliac spine (ASIS).
            
            **Paracentesis: Indications and Procedure**
            
            **Indications for Paracentesis**
            - Diagnostic:
                - Unexplained ascites (to determine etiology).
                - Suspected spontaneous bacterial peritonitis (SBP) with signs of infection (fever, abdominal pain, altered mental status).
                - Suspected malignancy-associated ascites.
                - Suspected chylous, hemorrhagic, or pancreatic ascites.
            - Therapeutic:
                - Symptom relief in large-volume ascites causing abdominal distension, dyspnea, or early satiety.
                - Tense or refractory ascites not responding to diuretics.
            
            **Contraindications (Relative)**
            - Uncorrected severe coagulopathy or thrombocytopenia (platelets <20,000, INR >2.0).
            - Active abdominal infection or cellulitis over puncture site.
            - Suspected intra-abdominal adhesions (increased risk of organ puncture).
            
            **Steps for Paracentesis**
            1. **Preparation**:
               - Obtain informed consent.
               - Explain risks, benefits, and potential complications.
               - Ensure recent lab tests (e.g., coagulation profile, platelets) for bleeding risks.
            2. **Equipment**:
               - Sterile gloves and gown, skin prep solution, lidocaine (1%), paracentesis kit, and vacuum bottles.
            3. **Patient Positioning**:
               - Supine with head slightly elevated.
            4. **Site Selection**:
               - Confirm fluid location via palpation or ultrasound. Ideal puncture sites include:
                 - 1-2 cm below the umbilicus in the midline.
                 - Lateral lower abdomen, 2-3 cm medial and superior to the ASIS.
            5. **Procedure**:
               - Clean the site, administer local anesthesia, and insert the needle while aspirating until fluid is obtained.
               - For therapeutic paracentesis, remove fluid slowly to prevent hemodynamic instability (max 5-6 liters in one session).
            
            **Key Diagnostic Tests on Ascitic Fluid**
            - **SAAG**:
                - ≥1.1 g/dL: Portal hypertension-related (e.g., cirrhosis).
                - <1.1 g/dL: Non-portal hypertension-related (e.g., malignancy, infection).
            - **PMN cell count**: ≥250 cells/mm³ suggests SBP.
            - **Total protein**: High protein (>2.5 g/dL) suggests infection or malignancy, while low protein (<2.5 g/dL) suggests cirrhosis or nephrotic syndrome.
            """,
            citation: """
            https://www.merckmanuals.com/professional/gastrointestinal-disorders/how-to-do-gastrointestinal-procedures/how-to-do-paracentesis#Step-by-Step-Description-of-Procedure_v47934315
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:84,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following malignancies is most closely associated with exposure to vinyl chloride?
            """,
            imageMiddle: nil,
            options: [
                "Hepatocellular carcinoma.",
                "Ductal carcinoma in situ.",
                "Basal cell carcinoma.",
                "Hepatic angiosarcoma."
            ],
            correctOptionIndex: 3,
            imageBelow: "AcroOsteolysis",
            imageBelow2: nil,
            explanation: """
            Vinyl chloride is a known carcinogen linked to cases of hepatic angiosarcoma, a rare malignancy of hepatic vasculature occurring in a few hundred cases a year in the United States. Other cases of hepatic angiosarcoma are attributed to arsenic exposure, radium, and androgenic steroids.
            
            Vinyl chloride is widely used in plastic manufacturing and was of particular concern after the toxic substance-carrying train derailment in Ohio on February 3, 2023.
            
            **Key Facts About Vinyl Chloride Exposure**:
            - **Acute Effects**: Vinyl chloride exposure is generally mild and includes symptoms such as eye irritation, sore throat, cough, and headache.
            - **Pathognomonic Finding**: Acro-osteolysis (lytic lesions in the digits) is a hallmark X-ray finding associated with chronic vinyl chloride exposure. Acro-osteolysis is also seen in patients with Raynaud’s and other collagen vascular diseases.
            - **Management**: No specific treatments exist for vinyl chloride exposure, but physicians should educate patients about the risks of related exposures and potential complications.
            
            **Related Exposures**:
            - **Arsenic Exposure**: Also linked to hepatic angiosarcoma.
            - **Radium**: Historically associated with occupational exposures.
            - **Androgenic Steroids**: Rarely implicated in hepatic angiosarcoma.
            
            Physicians should maintain awareness of these associations to provide accurate counseling and surveillance in exposed populations.
            """,
            citation: """
            Emergency Medicine News. May 2023. Vol 45. No 5. Lippincott. Dr Gussow.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:85,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following is a 2023 legislative landmark set by New Hampshire U.S. District Court Judge Landya McCafferty?
            """,
            imageMiddle: nil,
            options: [
                "Patients on psychiatric holds are to receive a psychiatric evaluation within 12 hours of their arrival.",
                "Patients on psychiatric holds must receive oral medication treatment within 24 hours.",
                "Patients on psychiatric holds must receive oral medication treatment within 12 hours.",
                "Patients on psychiatric holds can only be held for up to 6 hours before being transferred to a facility for treatment."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            ED boarding of individuals seeking inpatient psychiatric treatment is a national problem stemming from an array of economic and structural challenges in healthcare, compounded by severe workforce shortages and COVID-era related increases in the prevalence of mental health issues.
            
            McCafferty’s ruling in February 2023 said the state is violating the rights of hospitals by seizing their property.
            New Hampshire has one year to stop the involuntary holding of psychiatric patients in emergency rooms, several months after declaring the state’s practice unconstitutional.
            McCafferty also ruled the state can only hold people in emergency rooms for up to six hours before transferring them to a facility for treatment.
            """,
            citation: """
            https://www.dhhs.nh.gov/news-and-media/nh-dhhs-announces-mission-zero-plan-eliminate-emergency-department-boarding
            
            https://apnews.com/article/new-hampshire-mental-health-emergency-room-boarding-5240ac62bc83ea69ac589043baa8ee83
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:86,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What factors have been shown to most contribute to patients pursuing legal claims?
            """,
            imageMiddle: nil,
            options: [
                "Length of visit.",
                "Lack of physician follow-up.",
                "Physician knowledge-base.",
                "Poor handling and communication."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Strong rapport with one’s patients is a key protective factor against being sued. Effective communication facilitates development of this rapport.
            
            Between 2009 and 2014, the rate of malpractice claims paid on behalf of physicians in the United States declined by 55.7%. This decrease occurred across all specialties. Pediatrics had the largest decline in paid malpractice claims, at 75.8%.
            
            One of the reasons for a down-trending claim prevalence is the growing prevalence of communication and resolution (sometimes referred to as disclosure, apology, and offer) programs, through which compensation for an injury due to negligence may be provided without requiring a written claim from a patient.
            
            Mean compensation amounts and the percentage of paid claims exceeding $1 million increased, with wide differences in rates and characteristics across specialties.
            
            Among all paid claims, the mean payment was $329,565. Neurosurgery had the largest mean payment ($469,222) and dermatology had the smallest ($189,065).
            
            Pathology and emergency medicine had the lowest number of paid claims per physician (with the top 1% incurring less than 5% of all paid claims).
            """,
            citation: """
            https://jamanetwork.com/journals/jamainternalmedicine/fullarticle/2612118
            
            https://jamanetwork.com/journals/jamadermatology/fullarticle/2664334
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:87,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following terms combines a pre-determined list of procedures a provider is allowed to perform in a given clinical setting with expert consensus?
            """,
            imageMiddle: nil,
            options: [
                "Scope of Practice.",
                "Standard of Ethics.",
                "Scope of Authority.",
                "Standard of Care."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The “standard of care” is generally determined by considering the defined scope of practice first, then existing literature and evidence, as well as expert opinion.
            
            Recall that “scope of practice” is not equivalent to the standard of care. The scope of practice defines what skills or procedures a practitioner is allowed to perform.
            
            Standard of care is also defined by properly performing the correct skill in the appropriate setting, pre-hospital, hospital, etc.. Performing a skill outside of the defined scope of practice can also be considered a criminal offense.
            
            A recent example of a change with 'scope of practice' is State law allowing BLS providers to administer intranasal naloxone in cases of suspected opioid overdose.
            
            Commission or omission of a skill that is not defined as the correct skill, or for the appropriate circumstances, may constitute malpractice with civil liability.
            """,
            citation: """
            https://www.ncbi.nlm.nih.gov/books/NBK553179/#:~:text=The%20scope%20of%20practice%20defines%20what%20skills%20or%20procedures%20a,skill%20in%20the%20appropriate%20setting.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:88,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What patient population tends to receive an incomplete sexual history taking by their physician?
            """,
            imageMiddle: nil,
            options: [
                "Undomiciled patients.",
                "Psychiatric patients.",
                "Domestic abuse patients.",
                "LGBTQ+ patients."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            In a 2019 study including ACGME‐accredited residency programs, even with professed comfort with LGBT health care, most emergency medicine residents report taking incomplete sexual histories. This likely affects patient care.
            
            One traditional way to ask a sexual history question with modern day considerations would be to ask: “Do you have sex with men, women, both or others?”.
            
            It has been estimated that at least 3.5% of Americans, or 9 million people, identify as lesbian, gay, or bisexual, although identity does not always indicate sexual behavior, as 19 million Americans (8.2%) have engaged in same‐sex sexual behavior. Another 0.6%, or 1.4 million people, identify as transgender. It has been well documented that significant barriers exist to providing quality and equitable care to the lesbian, gay, bisexual, and transgender (LGBT) population. Although limited, research demonstrates significant health care disparities exist for LGBT persons with a major contributor to those disparities being a lack of provider knowledge and competency. Such disparities are known to include elevated risk of depression and suicide, increased rates of substance abuse, increased risk for some cancers, and decreased access to health care.
            
            No formal guidance has been provided to residency programs, and currently LGBT health education is not included in the model of emergency medicine practice. A 2014 survey showed only 26% of EM residency programs had formal education on LGBT health, although most program directors felt education on this topic is needed.
            """,
            citation: """
            https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6457356/
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Bedside Manner"
        ),
        Question(
            id:89,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 7-year-old boy presents with stridor and wheezing that began while playing with toys in front of the television. The mother brings him in and tells you she is concerned he swallowed a toy car or toy piece. 
            
            What imaging should you pursue to confirm the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "CT Chest",
                "Upright CXR",
                "Upper Endoscopy",
                "Bilateral lateral decubitus"
            ],
            correctOptionIndex: 3,
            imageBelow: "LeftSideDown",
            imageBelow2: "AirTrapping",
            explanation: """
            A dependent lung (that side down) should normally show volume loss relative to the non-dependent lung (first image below). If there is a foreign body in the bronchial tree causing air trapping, there will be hyperlucency of the dependent lung (second image).
            
            Ideally, an inspiration and expiration radiograph should also be obtained.
            
            Consultation for bronchoscopy should be obtained.
            """,
            citation: """
            https://radiopaedia.org/articles/foreign-body-inhalation-series-paediatric?lang=us
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        Question(
            id:90,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            During infant (0-1 month of life) CPR with 2 or more rescuers, what is the most appropriate CPR technique?
            """,
            imageMiddle: nil,
            options: [
                "2-finger sternum compressions at intermammary line",
                "Chest thrusts",
                "2-finger sternum compressions at lower third of sternum",
                "2-thumb-encircling hands technique below intermammary line"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Systematic reviews suggest that the 2-thumb–encircling hands technique just below the intermammary line may improve CPR quality when compared with 2-finger compressions.
            """,
            citation: """
            https://www.ahajournals.org/doi/epub/10.1161/CIR.0000000000000901
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        Question(
            id:91,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is the most common precursor to cardiac arrest in children?
            """,
            imageMiddle: nil,
            options: [
                "Altered mental status.",
                "High fever.",
                "Head trauma.",
                "Hypoxia."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            While trauma remains the most common cause of injury and death among children between 1 and 19 years of age, it is hypoxia that most commonly leads to cardiac arrest and should be rapidly corrected to avoid decompensation (and arrest).
            
            Note that in trauma, children have a higher metabolic rate and resultant oxygen requirement.
            
            If RSI is required, preoxygenation with 100% oxygen for about three minutes via either a nasal cannula, bag-valve-mask, or a non-rebreather mask can decrease the chance of rapid desaturation.
            """,
            citation: """
            Duff JP, Topjian AA, Berg MD, Chan M, Haskell SE, Joyner BL Jr, et al. 2019 American Heart Association focused update on pediatric advanced life support: an update to the American Heart Association guidelines for cardiopulmonary resuscitation and emergency cardiovascular care. Pediatrics 2020 Jan;145(1): 140(24):e20191361. PMID: 31727859 DOI: 10.1542/peds.2019-1361.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        Question(
            id:92,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is the 1-year survival rate of cerebral intraparenchymal hemorrhage?
            """,
            imageMiddle: nil,
            options: [
                "3%.",
                "15%.",
                "24%.",
                "40%."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The 1-year survival rate of cerebral intraparenchymal hemorrhage is 40%.
            
            Although spontaneous intraparenchymal hemorrhage (IPH) accounts for less than 20% of cases of stroke, it continues to be associated with the highest mortality of all forms of stroke and substantial morbidity rates.
            
            Early identification and management of IPH is crucial. Blood pressure control, reversal of associated coagulopathy, care in a dedicated stroke unit, and identification of secondary etiologies are essential to optimizing outcomes.
            
            In patients with a high international normalized ratio (INR) due to vitamin K antagonists, prothrombin complex concentrates are preferred over fresh frozen plasma (FFP).
            
            Surgical management of hydrocephalus and space-occupying hemorrhage in the posterior fossa are accepted forms of treatment. Modern advances in minimally invasive surgical management of primary, supratentorial IPH are being explored in randomized trials. Hemorrhagic arteriovenous malformations and cavernous malformations are surgically excised if accessible, while hemorrhagic dural AV fistulas and distal/mycotic aneurysms are often managed with embolization when feasible.
            """,
            citation: """
            Gross BA, Jankowitz BT, Friedlander RM. Cerebral intraparenchymal hemorrhage: a review. JAMA 2019 Apr;321(13):1295-303. PMID: 30938800 DOI: 10.1001/jama.2019.2413.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:93,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            An 86-year-old man with a past medical history of heart failure with reduced ejection fraction (HFrEF) and atrial fibrillation presents with a fall from standing with head strike, sudden severe headache, and altered mental status with a GCS of 12. Vitals include: HR 129, BP 220/115, RR 18, O2 95%. He does not recall his medications but believes he is on a blood thinner.
            
            In addition to immediate blood pressure control, what additional medication should you administer?
            """,
            imageMiddle: nil,
            options: [
                "Fresh frozen plasma (FFP).",
                "Protamine sulfate.",
                "Platelets.",
                "Prothrombin complex concentrate (PCC)."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            In patients with intracranial hemorrhage with vitamin K antagonists like coumadin on board, prothrombin complex concentrates (PCC) are preferred over FFP.
            
            For several years, FFP and vitamin K were the preferred options for reversing anticoagulation. Prothrombin complex concentrate is now in favor when available due to quicker administration (shorter infusion times). PCC also requires only a small volume to reverse anticoagulation. Small volumes mean improved safety in heart failure and CKD patients.
            
            FFP requires procurement from the blood bank and thawing before administration, factors that lead to delays in administration and anticoagulation reversal. PCC is leukocyte-free and less likely to cause infusion reactions.
            
            PCC contains significantly higher amounts of the clotting factors compared to FFP; one dose of PCC equals 8 to 16 units of FFP.
            
            Protamine is the reversal agent for unfractionated heparin and low molecular weight heparins, like enoxaparin.
            """,
            citation: """
            Gross BA, Jankowitz BT, Friedlander RM. Cerebral intraparenchymal hemorrhage: a review. JAMA 2019 Apr;321(13):1295-303. PMID: 30938800 DOI: 10.1001/jama.2019.2413.
            
            https://www.ncbi.nlm.nih.gov/books/NBK539716/
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:94,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What minimum level of training for prehospital providers is required for administration of intranasal naloxone?
            """,
            imageMiddle: nil,
            options: [
                "Paramedic",
                "EMT",
                "Advanced EMT",
                "BLS"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            A recent change to the scope of practice of prehospital providers is the move by most states to allow intranasal naloxone administration by BLS providers in cases of a suspected opioid overdose. Intranasal naloxone is not typically part of the national curriculum or outlined in the national scope of a basic EMT. Due to the increase in opioid-related deaths, this skill has been added to the scope of practice by individual states.
            """,
            citation: """
            https://www.ncbi.nlm.nih.gov/books/NBK553179/#:~:text=The%20scope%20of%20practice%20defines%20what%20skills%20or%20procedures%20a,skill%20in%20the%20appropriate%20setting.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:95,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is the most commonly sprained ligament in the foot?
            """,
            imageMiddle: nil,
            options: [
                "Tibiocalcaneal ligament",
                "Tibionavicular ligament",
                "Posterior tibiotalar ligament",
                "Anterior talofibular ligament (ATFL)"
            ],
            correctOptionIndex: 3,
            imageBelow: "ATFL",
            imageBelow2: nil,
            explanation: """
            ATFL tears and the calcaneofibular ligament (CFL) are the most common sites of ankle sprain.
            
            Use the Ottawa ankle rules to determine which adults and children over 5 require foot (or ankle) films to evaluate for possible fracture. For FOOT injury, a foot X-Ray is indicated if there is any pain in the midfoot AND either:
            1) Tenderness at the base of the 5th metatarsal, OR
            2) Tenderness at the navicular, OR
            3) Inability to bear weight immediately after injury and during your ER or urgent care evaluation (for four steps).
            """,
            citation: """
            https://www.ncbi.nlm.nih.gov/books/NBK459212/#:~:text=Ankle%20sprains%20most%20commonly%20involve,joint%20and%20stabilizing%20ligamentous%20structures.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Orthopedics"
        ),
        Question(
            id:96,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following patients meets Ottawa Ankle Rule criteria and thus warrants a foot X-Ray?
            """,
            imageMiddle: nil,
            options: [
                "A 19 year old basketball player who has no malleolar zone pain but distal posterior tibia pain 6 cm up the ankle.",
                "A 4 year old with bilateral malleoli pain.",
                "A 54 year old man who has malleolar zone pain but can bear weight up to five steps.",
                "A 17 year old tennis player who has malleolar zone pain including distal posterior tibia pain, 3 cm up the ankle."
            ],
            correctOptionIndex: 3,
            imageBelow: "AnkleRules",
            imageBelow2: nil,
            explanation: """
            Traditionally, physicians would order radiographs for all ankle injuries, although less than 15% would have a clinically significant fracture. The Ottawa decision tool has a sensitivity of almost 100%.
            
            Note that the 4-year-old may warrant films but Ottawa rules should only be applied in children over five years of age.
            
            An Ankle X-ray is only required if there is any pain in the malleolar zone AND either there is:
            1) tenderness along the distal 6 cm of the posterior edge of the tibia or tip of the medial malleolus, OR
            2) tenderness along the distal 6 cm of the posterior edge of the fibula or tip of the lateral malleolus, OR
            3) inability to bear weight both immediately after injury and in ER/urgent care.
            """,
            citation: """
            https://www.physio-pedia.com/Ottawa_Ankle_Rules
            
            Image Credit: "Ankle and Feet Joints" by OpenStax College is licensed under CC BY 3.0. Available at: Wikimedia Commons.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Orthopedics"
        ),
        Question(
            id:97,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A patient presents with a foot sprain and is requesting “a shot of anti-inflammatory medications”. You consider contraindications to NSAIDs like CKD and anticoagulation use and find none. What is the correct dose of Ketorolac (Toradol) IM?
            """,
            imageMiddle: nil,
            options: [
                "20 mg IM",
                "30 mg IM",
                "40 mg IM",
                "10-15 mg IM"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Since ketorolac has been marketed, there have been many reports of death attributed to associated gastrointestinal and operative site bleeding. Comparative trials showed similar short-term analgesic effect between 10, 15 and 30 mg doses, and thus a lower dose should be selected.
            """,
            citation: """
            https://www.cambridge.org/core/journals/canadian-journal-of-emergency-medicine/article/comparison-of-ketorolac-dosing-in-an-emergency-department-setting/084D371D9860D0DB1541DA95E990A581
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Orthopedics"
        ),
        Question(
            id:98,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A street biker falls off his bike onto an outstretched arm and is found to have an anterior shoulder dislocation on X-Ray. You will need to perform procedural sedation to aid in your emergency department reduction. 
            
            What is the correct initial dose of propofol?
            """,
            imageMiddle: nil,
            options: [
                "2 mg/kg",
                "1.5 mg/kg",
                "3-3 mg/kg",
                "0.5-1 mg/kg"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            For ED procedural sedation with propofol, the recommended initial bolus is 0.5-1 mg/kg, with additional boluses of 0.25-0.5 mg/kg every 1-3 minutes.
            
            Note that pediatric patients typically require larger doses. Obese patients are generally to receive a lower total body weight dose.
            """,
            citation: """
            Miller KA, Andolfatto G, Miner JR, Burton JH, Krauss BS. Clinical practice guideline for emergency department procedural sedation with propofol: 2018 update. Ann Emerg Med 2019 May;73(5):470-80. PMID: 30732981 DOI: 10.1016/j.annemergmed.2018.12.012.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:99,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 25-year-old helmeted mountain climber presents to your remote emergency department after a fall from fifteen feet with a head strike followed by a brief loss of consciousness. Co-climbers have to carry him in to your emergency department because he is becoming progressively more altered and globally weak.
            
            Vital signs are as follows: HR 128, BP 228/114, RR 10, P02 95%. On exam, he has an obvious parietal hematoma on the right, opens his eyes briefly to noxious stimulus and says a few nonsensical words.
            
            He withdraws but does not localize pain. His right pupil appears to be larger than the left. You rush him to the CT Scanner and see the image below. A tertiary center with the closest neurosurgeon is 170 miles away.
            
            What is the most critical action?
            """,
            imageMiddle: "EpiduralHematoma",
            options: [
                "A dose of labetolol.",
                "Head-of-the-bed elevation.",
                "Euthermia and euglycemia.",
                "Emergency trephination (Burr Hole)."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Rural Americans live an average of 10.5 miles from the nearest hospital, compared with 4.4 for those in urban areas. Nearly 30 million Americans don’t live within an hour of trauma care.
            
            If you find yourself in a remote setting with a patient with expanding epidural hematoma and without timely access to a neurosurgeon, emergency trephination is a critical action.
            
            There is a body of medical literature that suggests substantial outcome benefit when the procedure is appropriately employed. Multiple small studies and case reports indicate improved results in cases of expanding epidural hematomas with early intervention by emergency physicians.
            
            One study in 1996 assessed outcomes associated with traumatic epidural hematomas in 21 patients. The authors found that patients who underwent a drainage craniotomy in less than 70 minutes had a better recovery than those who had one at 90 minutes or more. Cases of successful trephination in patients as young as two-years-old have also been documented. If left untreated, the reversal of symptoms becomes more difficult, and complications, including fatality, are positively correlated with increasing degree of uncal herniation.
            
            Indication for this procedure include an epidural/subdural hematoma with GCS less than eight with or without anisocoria on exam and an anticipated extended time to neurosurgical intervention.
            
            To perform the procedure, first assess skull thickness by CT imaging for setting drill depth. The procedure site is typically located approximately 2 cm superior and 2 cm anterior to the tragus. Use sterile technique. A 4-cm vertical skin incision is made. A curved mosquito clamp or periosteal elevator will assist in visualizing the skull. One type of drill that has been described in the literature is the Galt trephine, which has a T handle that is used to create hand pressure coupled with a twisting motion to cut into the skull. A Galt trephine will create a circular piece of bone that can be removed and placed in saline. Blood should drain spontaneously, or tubing connected to a syringe can be inserted for cautious aspiration.
            
            Give consideration to a dose of broad-spectrum antibiotics but don’t let this delay transfer to a tertiary center. Today, most guidelines recommend a cephalosporin as antibiotic prophylaxis in neurosurgical procedures, with Cefazolin (a third-generation cephalosporin) being most frequent.
            """,
            citation: """
            https://www.acepnow.com/article/emergency-department-trephination-burr-hole-for-epidural-hematoma/
            
            https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7550315/#:~:text=Today%2C%20most%20guidelines%20recommend%20a,neurosurgery%20%5B32%E2%80%9334%5D.
            
            Image Credit: "Epidural Hematoma" by OpenStax College is licensed under CC BY-SA 4.0. Available at: https://commons.wikimedia.org/wiki/File:EpiduralHematoma.jpg
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:100,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 6-year-old girl is brought into your ER with the chief complaint of “hypotension.” Pulses are palpable, but she is limp and minimally responsive. After nursing fails to obtain peripheral IV access, you attempt an IO, ultrasound IV, and central access, all of which fail.
            
            You opt for a saphenous vein cutdown.
            
            The proper location to make your 3 cm horizontal incision is:
            """,
            imageMiddle: nil,
            options: [
                "2 cm inferior and posterior to the medial malleolus.",
                "1 cm superior and anterior to the lateral malleolus.",
                "2 cm inferior and posterior to the lateral malleolus.",
                "1 cm superior and anterior to the medial malleolus."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            A saphenous vein cutdown is the most common location for a cutdown and should be performed 1 cm superior and 1 cm anterior to the medial malleolus. Once the greater saphenous vein is dissected out, an IV catheter can be carefully inserted. Some authors describe tying suture material to both proximal and distal ends of the vein for better isolation, though this is not required.
            """,
            citation: """
            https://www.ncbi.nlm.nih.gov/books/NBK532880/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:101,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 16-year-old boy with severe intellectual delay presents to your ER after having accidentally pulled out his nasogastric tube that was placed in the interim to a G-tube.
            
            What medications will help re-insert an NG tube?
            """,
            imageMiddle: nil,
            options: [
                "Albuterol Nebulizer.",
                "Maalox Mouthwash.",
                "Saline Nebulizer.",
                "Nebulized lidocaine."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            4 cc of 4% (or 2%) lidocaine is an excellent choice to numb the nasopharynx and posterior oropharynx for passage of a nasogastric tube. If the option is available, subsequent application of viscous lidocaine to the unilateral nare will also help open the nasal passage and further anesthetize mucous membranes prior to placement.
            """,
            citation: """
            https://www.aafp.org/pubs/afp/issues/2005/0501/p1807.html
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:102,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is the most important action in reducing discomfort during urinary (foley) catheter placement?
            """,
            imageMiddle: nil,
            options: [
                "Placing a large caliber foley.",
                "Placing a coude′ tipped foley.",
                "Appropriate foreskin countertraction.",
                "Proper use of viscous lidocaine (Urojet)"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Proper use of viscous lidocaine in a prefilled syringe like Urojet or in a syringe you draw up is paramount to minimizing discomfort in a patient receiving foley insertion.
            
            It is advisable to first gently insert into the distal urethra 1-2cc of viscous lidocaine, then waiting several minutes. Secondly, a larger volume of viscous lidocaine can be inserted (ie 2-4cc). A small amount of flushing pressure while inserting this lidocaine can also help clear any debris from the urethra. Once appropriate anesthesia has been achieved a foley can then be inserted. If a foley kit has only lubricating jelly without analgesic like lidocaine, retrieve and prepare lidocaine separately. The pharmacy may help.
            
            Troubleshooting: If resistance is met in the anatomical distal or mid urethra (procedurally the first part of the urethra that is encountered) increase the diameter, or French size, of the foley. If resistance is met in the proximal urethra (towards the prostate), switch to a coude′ foley.
            """,
            citation: """
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:103,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which type of long term central venous catheter offers the fewest complications and highest quality of life and satisfaction for patients receiving chemotherapy?
            """,
            imageMiddle: nil,
            options: [
                "PICC.",
                "Tunneled CVC.",
                "Non-tunneled CVC (NTC).",
                "Implanted venous port."
            ],
            correctOptionIndex: 3,
            imageBelow: "PortACath",
            imageBelow2: nil,
            explanation: """
            Evidence from a double-center prospective cohort study supports use of an implanted venous port over PICC (peripherally inserted central catheter), tunneled and non-tunneled CVCs (central venous catheters). The complication rates of ports, PICCs and NTCs were 2.2%, 40%, and 27.5%, respectively.
            
            To access a port: sterilize the skin, use two fingers to identify the outer aspects of the port, insert the needle in the mid-port and connect to a syringe for blood removal. Be sure to use a dressing to cover the needle/port assemblage.
            """,
            citation: """
            https://www.dovepress.com/comparison-of-three-types-of-central-venous-catheters-in-patients-with-peer-reviewed-fulltext-article-PPA
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:104,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which type of long term central venous catheter offers the fewest complications and highest quality of life and satisfaction for patients receiving chemotherapy?
            """,
            imageMiddle: nil,
            options: [
                "PICC.",
                "Tunneled CVC.",
                "Non-tunneled CVC (NTC).",
                "Implanted venous port."
            ],
            correctOptionIndex: 3,
            imageBelow: "PortACath",
            imageBelow2: nil,
            explanation: """
            Evidence from a double-center prospective cohort study supports use of an implanted venous port over PICC (peripherally inserted central catheter), tunneled and non-tunneled CVCs (central venous catheters). The complication rates of ports, PICCs and NTCs were 2.2%, 40%, and 27.5%, respectively.
            
            To access a port: sterilize the skin, use two fingers to identify the outer aspects of the port, insert the needle in the mid-port and connect to a syringe for blood removal. Be sure to use a dressing to cover the needle/port assemblage.
            """,
            citation: """
            https://www.dovepress.com/comparison-of-three-types-of-central-venous-catheters-in-patients-with-peer-reviewed-fulltext-article-PPA
            
            Image Credit: Licensed under CC BY-SA 4.0. Available at: https://commons.wikimedia.org/wiki/File:EpiduralHematoma.jpg
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:105,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Replacement of a dislodged tracheostomy tube can be performed without direct visualization via fiberoptics so long as the tracheostomy is at least how old?
            """,
            imageMiddle: nil,
            options: [
                "24 hours.",
                "5 days.",
                "A gentle pass can be attempted regardless of tracheostomy age.",
                "1 week."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Replacement of a dislodged tracheostomy within the first week of placement should be attempted only with direct visualization via fiberoptic endoscopy given the risk of creating a false passage into the soft tissue of the neck and causing soft tissue trauma.
            
            When available, learning where to access and how to operate a fiberoptic scope is an invaluable emergency tool. Many fiberoptic scopes can be directly linked to the screen of a video laryngoscope, minimizing need for bulkier, space occupying equipment.
            """,
            citation: """
            Bontempo LJ, Manning SL. Tracheostomy emergencies. Emerg Med Clin North Am 2019 Feb;37(1):109-19.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:106,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 49-year-old female with a past medical history of Lyme disease refractory to doxycycline and recently started on dapsone is presenting to your emergency department with severe hypoxia requiring a non-rebreather to maintain oxygen saturation of 85%.
            
            The patient is awake, with obvious perioral cyanosis and vitals notable for HR 128, BP 139/73, and RR 32.
            
            Her chest X-ray is shown below.
            
            What is the likely diagnosis and management?
            """,
            imageMiddle: "NormalCXR",
            options: [
                "Early ARDS; Supportive care.",
                "Pulmonary embolism; Anticoagulation.",
                "Community acquired pneumonia; Add steroids.",
                "Methemoglobinemia; Methylene blue."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            While all of the answers hold the correct diagnosis/management pairs, the patient is presenting with methemoglobinemia.
            
            A persistent oxygen saturation at 85% should clue you into the diagnosis of methemoglobinemia, as well as recent dapsone use.
            
            The chest X-ray displayed is a film of a normal chest. The CT PE study will result normally.
            
            Methemoglobinemia is a congenital or acquired condition. Acquired cases are more commonly severe and even fatal. There are a range of causes and include medications such as anesthetics, antimalarials, aniline dyes, nitrates or nitrites, antifreeze, and illicit drugs. Dapsone is a known offender. Methemoglobin is produced in toxic concentration when heme iron of hemoglobin is oxidized from ferrous to ferric state.
            
            Pulse oximetry cannot detect methemoglobin and this causes an error in measurement, displaying a fixed level at approximately 85%.
            
            Often, blood-filled syringes will show chocolate milk-appearing blood. 
            
            The treatment of choice is methylene blue, although if there is a history of G6PD deficiency, patients should receive vitamin C. The effect of methylene blue is often immediate and results in significant clinical improvement.
            """,
            citation: """
            https://lymediseaseassociation.org/lyme-tbd/research-other-pub/dapsone-combination-therapy-for-treatment-of-chronic-lyme-disease/#:~:text=Study%20results%20showed%20that%20the,positive%20effect%20on%20patient%20outcomes.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Hematology/Oncology"
        ),
        Question(
            id:107,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 19M was found minimally responsive in his room with a small brown bag lying next to him. His mother explains she is concerned he inhaled something.
            
            When you place the young man on the monitor his heart rate is 166 with normal BP. He is diaphoretic but protecting his airway.
            
            What is your first course of action?
            """,
            imageMiddle: nil,
            options: [
                "IV Fluid bolus",
                "Amiodarone",
                "Digoxin",
                "Esmolol"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Beta blockers are the preferred agent for tachyarrhythmias such as atrial fibrillation with rapid ventricular response related to inhalant toxicity. There is no reversal agent or specific antidote for inhalants.
            
            The incidence of recreational inhalant use is relatively high: nearly 22 million Americans aged 12 and older have used inhaled substances at least once in their lives.
            """,
            citation: """
            https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8710132/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:108,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following supplements is associated with increased rates of atrial fibrillation?
            """,
            imageMiddle: nil,
            options: [
                "Lions mane",
                "Iron",
                "B6 vitamin",
                "Omega-3 fatty acid"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Omega-3’s at a dose of 4 g/day double the risk of atrial fibrillation. Four randomized clinical trials have provided such data, including the STRENGTH trial, including 13,078 patients, showing a risk of AF of 2.2% compared to 1.3% in the control group. In the REDUC-IT trial, including 8,179 participants, the risk difference was 5.3% compared to 3.9%.
            """,
            citation: """
            https://jamanetwork.com/journals/jama/fullarticle/2777450
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:109,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following is a complication of chronic ketamine abuse?
            """,
            imageMiddle: nil,
            options: [
                "Ophthalmologic injury.",
                "Cardiovascular injury.",
                "GI injury.",
                "Renal and urologic injury."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Ketamine can cause serious injury to the bladder and kidneys.
            
            Small case series of ketamine abusers revealed patient symptoms including frequency, incontinence, dysuria, and painful gross hematuria. The physical urologic findings included small noncompliant bladders with capacities between 30 and 100mL, ulcerative cystitis, and bilateral hydronephrosis. Patients with so-called “ketamine bladder” also had significant kidney injury and papillary necrosis.
            
            Hepatic damage has also been recently associated with ketamine abusers, including transaminitis and cholestatic hepatobiliary injury.
            """,
            citation: """
            The Ketamine Drive-Through. Leon Gussow. Emergency Medicine News, April 2023. Vol 45 No 4.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:110,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 14-year-old with a PMH of asthma presents with four days of worsening cough and wheezing.
            
            Her mother brought her in to your emergency department due to increased work of breathing. The child’s vitals are as follows: HR 119 BP 102/58 RR 34 P02 93%. You trial nebulized albuterol with some benefit in her moderate severity wheezing.
            
            What medication can you add to improve her likelihood of recovery and discharge?
            """,
            imageMiddle: nil,
            options: [
                "Epinephrine (IV)",
                "Terbutaline (SC)",
                "Benadryl IV",
                "Magnesium (IV)"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Children treated with intravenous magnesium sulfate for moderate to severe asthma show remarkable improvement in short-term pulmonary function.
            
            In one 2000 trial published in JAMA, pediatric patients receiving IV magnesium at a dose of 40 mg/kg (infused over 20 minutes) were more likely to be discharged home than those receiving placebo.
            
            Epinephrine can be utilized in status asthmaticus but would be premature to utilize in this clinical vignette. Also note that IM administration may also be considered. The dose is 0.01 mg/kg IM or SC.
            
            Terbutaline, a systemic beta2-agonist, can also be utilized as a subcutaneous dose or infusion in acute asthma flare, with less available supporting data.
            
            Benadryl should not be used during asthma flares unless anaphylaxis is thought to be the driving mechanism.
            """,
            citation: """
            https://jamanetwork.com/journals/jamapediatrics/fullarticle/351639#:~:text=In%20conclusion%2C%20IVMg%20given%20as,adequately%20responded%20to%20nebulization%20therapy.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            id:111,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 22F who is 3 weeks postpartum presents with a rolled ankle and obvious ankle deformity.
            
            You perform plain films that show a significantly displaced distal tibia and fibula fracture (bimalleolar fracture). You explain to the patient that a reduction under moderate sedation is necessary.
            
            She explains that her preference is to be able to breastfeed as soon as her sedation wears off. What medication should you select?
            """,
            imageMiddle: nil,
            options: [
                "Fentanyl",
                "Ketamine",
                "Codeine",
                "Propofol"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            In the case of propofol, breastfeeding may be resumed as soon as the woman has recovered sufficiently from general anaesthesia.
            
            Most intravenous anaesthetic agents have poor bioavailability and short half-lives and thus are compatible with use during sedation or surgery on a lactating woman. Minimal amounts (0.025%) of propofol are transferred to breast milk. This is not a concern even when propofol is used by infusion for maintenance of anaesthesia. Etomidate is another agent which requires no waiting period prior to resuming breastfeeding.
            
            Limited data exists for ketamine and fentanyl. While codeine is not used for procedural sedation, it is generally contraindicated while breastfeeding.
            
            According to 2020 guidelines from the Association of Anaesthetics, opioid drugs such as opioids and benzodiazepines should be used with caution, especially after multiple doses and in mothers of babies up to 6 weeks old.
            """,
            citation: """
            https://associationofanaesthetists-publications.onlinelibrary.wiley.com/doi/10.1111/anae.15179
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Procedural Skills"
        ),
        Question(
            id:112,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following most impacts patient rating scales?
            """,
            imageMiddle: nil,
            options: [
                "Personability.",
                "Etiquette.",
                "Professionalism.",
                "Time factors."
            ],
            correctOptionIndex: 3,
            imageBelow: "PatientSatisfaction",
            imageBelow2: nil,
            explanation: """
            While professionalism, personability, and etiquette are all important factors in patient satisfaction, research suggests that the time-based factors are most important.
            
            Specifically, three of the top five factors that most improved patient satisfaction with their physician were ‘ease of scheduling’, ‘minimal wait time’, and ‘not feeling rushed during their visit’. The other two factors were: ‘knowledge of treatment costs in advance’ (#2) and ‘expertise of providers’ (#4). This evidence underscores the value of effective time-budgeting while on shift.
            
            Interestingly, one evidence-backed method to increase perceived time spent with patients is to sit while speaking with patients.
            """,
            citation: """
            Beaver, L. (2018). The US telehealth market: The market, drivers, threats, and opportunities for incumbents and newcomers. Business Insider Intelligence Report.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Bedside Manner"
        ),
        Question(
            id:113,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is the appropriate hold to place a minor on when you believe they may be a risk of self-harm?
            """,
            imageMiddle: nil,
            options: [
                "5150",
                "1799",
                "1995",
                "5585"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            When a physician of any specialty suspects that a patient is a risk of suicidal or homicidal behavior, they are obligated to assess the safety risk of the individual in order to protect both themselves and the patient.
            
            A 5585 refers to the Welfare and Institutions Code under California State Law, which allows involuntary detainment of a minor experiencing a mental health crisis. A 72-hour hold is permitted under this Code.
            
            Also under California law, a 5150 hold allows for an adult patient to be held involuntarily for up to 72 hours due to their potential danger to themselves or others. Grave disability is also included under a 5150 and includes patients unable to avail themselves food, clothing, or shelter as a result of their mental health.
            
            While physicians need to consider ethical concerns such as respect for self-determination, placing such a hold can be beneficial by allowing patients to receive adequate assessment of their mental health.
            
            Note that among providers not yet credentialed to write a 5585 or 5150, a 1799 can be written to detain a person for 24 hours under similar circumstances.
            """,
            citation: """
            https://leginfo.legislature.ca.gov/faces/codes_displaySection.xhtml?lawCode=HSC&sectionNum=1799.111.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:114,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            You are staffing a Boston marathon medical booth when a runner who is nearly completing the 26.2 miles, rounding her final corner, loses her balance and falls gently to the ground.
            
            She is suddenly speaking with confused speech. Her temperature is 105.3°F.
            
            What is the most effective means of treatment?
            """,
            imageMiddle: nil,
            options: [
                "Normal saline boluses.",
                "Full-dose aspirin (chewable).",
                "tPA.",
                "Cold water immersion."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Early recognition and immediate cooling with cold water immersion are paramount in the treatment for exertional heat stroke (EHS), which is defined as a temperature of ≥104F plus one of the following: altered mental status, altered behavior, collapse or near-collapse, or inability to walk.
            
            The most effective method is cold water immersion, however, practicalities may limit its use in the prehospital setting. An alternative is rotating ice-water-soaked towels, which requires less personnel, can be quickly deployed, and allows easier patient monitoring.
            
            A November 2024 *Journal of Emergency Medicine* study looking at more than 350,000 runners found that patients with EHS reached a temperature of <104°F (40°C) within 30 minutes with ice-water-soaked towels, providing a potentially more practical method of cooling in the prehospital setting.
            """,
            citation: """
            https://www.jem-journal.com/action/showFullTableHTML?isHtml=true&tableId=tbl0001&pii=S0736-4679%2824%2900354-8
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Environmental Disorders"
        ),
        Question(
            id:115,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 36F who is one week postpartum presents to your office with worsening lower extremity edema and shortness of breath. She denies fever and has had no sick contacts.
            
            On exam she has bibasilar crackles and JVD is 4+.
            
            You diagnose CHF and decide to consider a novel agent to improve survival and ejection fraction.
            """,
            imageMiddle: nil,
            options: [
                "Bumex.",
                "Acetazolamide.",
                "No deviation from standard CHF treatment.",
                "Bromocriptine."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            As shortness of breath, fatigue and leg edema are common in the peripartum period, a high index of suspicion is required to not miss the diagnosis of peripartum cardiomyopathy (PPCM).
            
            PPCM is a potentially life-threatening condition typically presenting as heart failure with reduced ejection fraction (HFrEF) in the last month of pregnancy or in the months following delivery.
            
            Measurement of natriuretic peptides, electrocardiography and echocardiography are recommended to promptly diagnose or exclude heart failure/PPCM. Important differential diagnoses include pulmonary embolism, myocardial infarction, hypertensive heart disease during pregnancy, and pre-existing heart disease.
            
            A genetic contribution is present in up to 20% of PPCM, in particular titin truncating variant. PPCM is associated with high morbidity and mortality, but also with a high probability of partial and often full recovery. Use of guideline-directed pharmacological therapy for HFrEF is recommended in all patients while acknowledging potential contraindications during pregnancy/lactation.
            
            According to a 2019 position statement by the Heart Failure Association of the European Society of Cardiology, the oxidative stress-mediated cleavage of the hormone prolactin into a cardiotoxic fragment has been identified as a driver of PPCM pathophysiology.
            
            As such, pharmacological blockade of prolactin release using bromocriptine as a disease-specific therapy in addition to standard therapy for heart failure treatment has shown promising results in two clinical trials.
            
            A small (n = 20) prospective randomized pilot study supported the hypothesis that the addition of the prolactin-blocker bromocriptine to standard heart failure therapy is beneficial with respect to LVEF and mortality in women with severe acute PPCM.
            
            Furthermore, in the German PPCM registry, standard heart failure plus bromocriptine treatment was associated with low mortality.
            
            The randomized prospective German bromocriptine study compared short- and long-term bromocriptine treatment in patients with severe PPCM (EF < 35%). Both high and low doses were associated with low mortality (there was no placebo arm). A Canadian study also reported a greater LV recovery in PPCM patients treated with bromocriptine.
            
            Bromocriptine (2.5 mg once daily) for at least 1 week may be considered in uncomplicated cases, whereas prolonged treatment (2.5 mg twice daily for 2 weeks, then 2.5 mg once daily for another 6 weeks) may be applied in patients with EF < 25%, right ventricular involvement, intensive care treatment, and cardiogenic shock.
            """,
            citation: """
            https://onlinelibrary.wiley.com/doi/10.1002/ejhf.1493
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Obstetrics and Gynecology"
        ),
        Question(
            id:116,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A blood pressure of _______ plus associated damage to vulnerable organ systems is considered hypertensive emergency.
            """,
            imageMiddle: nil,
            options: [
                "190/100",
                "220/100",
                "200/100",
                "180/110"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The August 2024 scientific statement from the AHA on management of elevated blood pressure in acute care settings offers the BARKH mnemonic for organs at acute risk from hypertension: brain, arteries, retina, kidney, and heart. Clinicians are expected to rule out acute hypertensive damage to these organs emergently.
            
            Retinal findings on fundoscopic exam suggestive of injury include flame-shaped retinal hemorrhages, cotton wool spots (ischemic patches), and exudates (lipid accumulations around hemorrhages), as well as papilledema or retinal edema.
            
            The AHA recommendation for high-grade hypertensive retinopathy (III and IV) is to get the systolic blood pressure below 180 mm Hg or the mean arterial pressure down by 15 percent. The evidence for this particular approach is weak though.
            """,
            citation: """
            https://journals.lww.com/em-news/fulltext/2024/10000/aha_statement_aims_to_jettison_asymptomatic_high.1.aspx
            https://www.ahajournals.org/doi/epub/10.1161/HYP.0000000000000238
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:117,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 68F with no prior medical follow-up presents with a severe headache that peaked over several hours.
            
            Her CT is shown below.
            
            Which of the following is the mainstay treatment?
            """,
            imageMiddle: "NASAH",
            options: [
                "Bed positioning.",
                "Interventional aneurysmal clipping.",
                "Seizure prophylaxis.",
                "Blood pressure control."
            ],
            correctOptionIndex: 3,
            imageBelow: "NASAH",
            imageBelow2: nil,
            explanation: """
            Spontaneous non-aneurysmal perimesencephalic subarachnoid haemorrhage (NAPMSAH or NASAH) is a relatively rare occurrence in clinical settings as it is rarely misdiagnosed and usually involves a significantly better prognosis than the classical aneurysmal pattern.
            
            The clinical setting includes focal neurological signs with a CT showing typical hyperdense lesions involving the midbrain, fourth ventricle, and subthalamic areas without an angiographic correspondent, such as an aneurysmal pathology.
            
            Further investigations can also be used to highlight this diagnosis, such as interventional angiography or magnetic resonance imaging.
            
            Given the rarity of this condition and its relatively better prognosis compared to aneurysmal SAH, treatment options usually remain conservative, like blood pressure control.
            
            Even though NASAH has a relatively low incidence of complications and usually a favorable outcome, there is a certain percentage of cases that develop vasospastic reactions, usually ranging from 3–20%. The general outcome following this complication is usually variable and highly dependent on several factors, the most important of those being the quantitative amount of haemorrhagic volume.
            
            Build-up of blood within close proximity of the main cerebrospinal fluid (CSF) drainage sites can lead to an obstruction of those drainage pathways, causing an abnormal accumulation of CSF; therefore, enlarging the ventricular system leading to increased intracranial pressure and focal neurological deficits.
            
            Consulting with a neurosurgeon is paramount in all cases especially when the aforementioned complications arise.
            """,
            citation: """
            https://www.mdpi.com/2075-4418/13/6/1195
            
            Image Credit: "Perimesencephalic-hemorrhage-001" by Mikhail Kalinin is licensed under CC BY-SA 3.0. Available at: Wikidoc.
            
            https://www.mdpi.com/2075-4418/13/6/1195
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        Question(
            id:118,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 75F with PMH of CVA 3 weeks prior presents to your ED with generalized malaise. Vitals are normal, and she appears euvolemic on exam.
            
            Laboratory studies are most notable for a Na of 119.
            
            What is the mainstay treatment?
            """,
            imageMiddle: nil,
            options: [
                "Isotonic fluids",
                "Hypertonic saline",
                "Dextrose bolus",
                "Fluid restriction"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            In contrast to hypovolemia, the serum sodium response to administered isotonic saline is different in a hyponatremic patient with syndrome of inappropriate antidiuretic hormone (SIADH) secretion, which this patient has due to their recent CVA.
            
            Assuming the patient is euvolemic, any administered sodium (in the form of isotonic saline) is excreted in the urine because the response to aldosterone and atrial natriuretic peptide is normal.
            
            However, the water is retained because of the persistent action of ADH. Thus, when isotonic saline is administered to a patient with SIADH, the sodium is excreted in the urine while some of the water is retained, worsening the hyponatremia.
            
            In short, isotonic saline has a limited role in the management of symptomatic or severe hyponatremia (serum sodium <120 mEq/L). It is primarily used to correct hyponatremia in patients with minimal or no symptoms and serum sodium concentrations of >120 mEq/L who are at low risk of complications from untreated hyponatremia or from overly rapid correction of hyponatremia.
            
            Isotonic saline is indicated in patients who are overtly hypovolemic with hypotension, prerenal azotemia, or orthostatic symptoms.
            
            In patients with severe symptoms of hyponatremia (e.g., seizures, obtundation, coma, respiratory arrest) or in those with known intracranial pathology (such as recent traumatic brain injury, recent intracranial surgery or hemorrhage, or an intracranial neoplasm or other space-occupying lesion), treatment is with a 100 mL bolus of 3 percent saline followed, if symptoms persist, by up to two additional 100 mL doses.
            """,
            citation: """
            https://www.uptodate.com/contents/overview-of-the-treatment-of-hyponatremia-in-adults?search=hyponatremia&sectionRank=3&usage_type=default&anchor=H25&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H25
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Endocrine, Metabolic & Nutritional Disorders"
        ),
        Question(
            id:119,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 46M with PMH of constipation presents with 5 days of non-bloody diarrhea and lower quadrant abdominal pain predominantly on the left side. You decide upon outpatient treatment given his pain is under control and he can tolerate POs.
            
            What is a single-agent regimen for this diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Levofloxacin QD",
                "Azithromycin QD",
                "Metronidazole BID",
                "Amoxicillin-Clavulanate TID"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            For most patients who are appropriate for outpatient management of acute (uncomplicated) diverticulitis, antibiotics may not be necessary. There appears to be similar outcomes regardless of antibiotic use.
            
            However, clinicians may reasonably choose to use oral antibiotics in patients who have comorbidities or systemic symptoms.
            
            Further, treating diverticulitis in the outpatient setting with amoxicillin-clavulanate may reduce the risk of fluoroquinolone-related harms without adversely impacting diverticulitis-specific outcomes.
            
            Other potentional regimens for diverticulitis include Bactrim plus metronidazole or Ciprofloxacin plus metronidazole.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC9035276/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            id:120,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 26F presents with 5 days of vomiting. Her sodium from a clinic visit 6 months ago was 142. Today it is 166.
            
            Careful correction of serum sodium should be taken to avoid what complication?
            """,
            imageMiddle: nil,
            options: [
                "Central pontine myelinolysis",
                "Extrapontine myelinolysis",
                "Intracranial hypertension",
                "Cerebral edema"
            ],
            correctOptionIndex: 3,
            imageBelow: "TBWDeficit",
            imageBelow2: nil,
            explanation: """
            Excessively rapid correction of chronic hypernatremia (>48 hours) can lead to cerebral edema, seizures and permanent neurologic sequelae.
            
            Infants are at greatest risk of overly rapid sodium correction during rehydration because of their body size.
            
            Additionally, cerebral edema has been described in children and young adults (ie, age less than 40 years) who have rapid correction of hyperglycemia.
            
            Thus, rapid correction of hypertonicity is the issue and less what the specific solute (glucose or sodium) is in causing the elevated tonicity.
            
            Patients who present with hypernatremia usually have a serious underlying condition that impairs thirst.
            
            The initial insult of free water loss is due to either GI losses (vomiting or osmotic diarrhea), excessive sweat or osmotic diuresis from poorly controlled glucose levels.
            
            The therapeutic approach in patients with hypernatremia depends upon the rapidity by which the disorder developed and whether or not it was caused by correction of severe hyperglycemia (osmotic diuresis of free water).
            
            In chronic hypernatremia, first determine the total free water deficit (formula below), and then correct with D5W at 70 mL per hour in a 50 kg patient (or 100 mL per hour in a 70 kg person). This will safely lower the serum sodium by approximately 10 mEq/L in a 24-hour period.
            
            Acute hypernatremia is uncommon, occurring in patients with salt poisoning, patients with arginine vasopressin (AVP) disorders (previously called DI, from insufficient ADH) who acutely lose the ability to replace their water losses, and in patients being treated for severe hyperglycemia.
            
            In salt poisoning, given the potential for cerebral hemorrhage, reduction in serum sodium concentrations should be achieved as fast a possible.
            
            In patients with severe glucosuria (and thus osmotic diuresis) as the cause, the choice of fluid administered is 0.45 percent saline rather than 5 percent dextrose in water (D5W).
            """,
            citation: """
            Sterns RH. Formulas for fixing serum sodium: curb your enthusiasm. Clin Kidney J 2016; 9:527.
            
            Hiller KM, Wolf SJ. Cerebral edema in an adult patient with diabetic ketoacidosis. Am J Emerg Med 2005; 23:399.
            
            Goshima T, Terasawa T, Iwata M, et al. Treatment of acute hypernatremia caused by sodium overload in adults: A systematic review. Medicine (Baltimore) 2022; 101:e28945.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Endocrine, Metabolic & Nutritional Disorders"
        ),
        Question(
            id:121,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 39M who weighs 70 kg presents with vomiting for 10 days. 
            
            His serum Na is 170.
            
            In determining his fluid replacement you appropriately decide to first calculate his total free water deficit, which is:
            """,
            imageMiddle: nil,
            options: [
                "11.5 L",
                "9 L",
                "5 L",
                "7.5 L"
            ],
            correctOptionIndex: 3,
            imageBelow: "TBWDeficit",
            imageBelow2: nil,
            explanation: """
            Total body water (TBW) is normally 60 and 50 percent of lean body weight in younger males and females, respectively. In older adults TBW is 50 and 45 percent of lean body weight in males and females, respectively.
            
            The calculation, using the below formula, is as follows: 70 x 0.5 x (170/140 - 1).
            """,
            citation: """
            https://www.uptodate.com/contents/treatment-of-hypernatremia-in-adults?search=hypernatremia%20treatment&sectionRank=3&usage_type=default&anchor=H21881446&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H21881446
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Endocrine, Metabolic & Nutritional Disorders"
        ),
        Question(
            id:122,
            videoAbove: nil,
            imageAbove: "Monteggia",
            text: """
            An 18M fell off of his bicycle while helmeted. He is complaining of left elbow pain.
            
            A single view of a forearm X-Ray is shown above.
            
            What kind of fracture pattern is this?
            """,
            imageMiddle: nil,
            options: [
                "Galeazzi fracture.",
                "Colle’s.",
                "Smith’s.",
                "Monteggia-pattern."
            ],
            correctOptionIndex: 3,
            imageBelow: "Monteggia",
            imageBelow2: nil,
            explanation: """
            A Monteggia fracture is defined as a proximal one-third ulna fracture with an associated radial head dislocation.
            
            Radiographic evaluation should focus on checking for congruency of the radiocapitellar joint in the setting of an ulna fracture.
            
            Treatment is closed reduction in the pediatric population as long as there is radiocapitellar joint stability. Adults and unstable injuries generally require ORIF of the ulna.
            
            Galeazzi Fracture:
            - Definition: Fracture of the radius (usually distal third) with dislocation of the distal radioulnar joint (DRUJ).
            - Mechanism: Fall on an outstretched hand, often with axial load through the wrist.
            
            Colles’ Fracture:
            - Definition: Extra-articular fracture of the distal radius with dorsal angulation, often with a fracture of the ulnar styloid.
            - Mechanism: Fall on an outstretched hand with wrist extension.
            
            Smith’s Fracture:
            - Definition: Fracture of the distal radius with volar angulation (reverse of Colles’ fracture).
            - Mechanism: Fall on a flexed wrist or a direct blow to the back of the wrist.
            """,
            citation: """
            https://en.wikipedia.org/wiki/Monteggia_fracture#:~:text=The%20Monteggia%20fracture%20is%20a,named%20after%20Giovanni%20Battista%20Monteggia.
            
            https://radiopaedia.org/articles/smith-fracture
            
            https://chatgpt.com/c/674118fa-51b4-8002-acd3-77bce1f02b7e
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Orthopedics"
        ),
        Question(
            id:123,
            videoAbove: nil,
            imageAbove: "Galeazzi",
            text: """
            A 15M presents with acute, severe right wrist pain after a fall onto an outstretched hand while playing in the park with friends.
            
            An X-ray of the wrist is shown above.
            
            What is this fracture pattern?
            """,
            imageMiddle: nil,
            options: [
                "Essex-Lopresti Fracture",
                "Segond Fracture",
                "Rolando Fracture",
                "Galeazzi Fracture"
            ],
            correctOptionIndex: 3,
            imageBelow: "Galeazzi",
            imageBelow2: nil,
            explanation: """
            Fracture of the radius (usually distal third) with dislocation of the distal radioulnar joint (DRUJ) is a Galeazzi fracture.
            
            The mechanism is a fall on an outstretched hand, often with axial load through the wrist.
            
            Treatment is generally ORIF of the distal radius followed by assessing the stability of the DRUJ which may warrant subsequent immobilization or pinning at the joint.
            
            Essex-Lopresti Fracture:
            - Definition: Fracture of the radial head with dislocation of the distal radioulnar joint (DRUJ) and disruption of the interosseous membrane.
            - Mechanism: High-energy axial load through the forearm.
            
            Rolando Fracture:
            - Definition: Comminuted intra-articular fracture at the base of the first metacarpal.
            - Mechanism: Axial load to the thumb.
            
            Segond Fracture:
            - Definition: Avulsion fracture of the lateral tibial plateau at the site of attachment of the lateral capsular ligament.
            - Mechanism: Associated with ACL injuries, often due to twisting forces.
            """,
            citation: """
            https://www.orthobullets.com/trauma/1029/galeazzi-fractures
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Orthopedics"
        ),
        Question(
            id:124,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/inferior+epigastric.mov"),
            imageAbove: nil,
            text: """
            A 67M with PMH of end stage liver cirrhosis who is on the transplant list presents with abdominal distension and difficulty fully inspiring. He is requesting a therapeutic paracentesis.
            
            You prep his abdomen and place an ultrasound with color flow.
            
            What vascular structure are you trying to avoid in the above ultrasound?
            """,
            imageMiddle: nil,
            options: [
                "External iliac arteries.",
                "Greater saphenous veins.",
                "Axillary tributaries.",
                "Inferior epigastric arteries."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The inferior epigastric arteries (IEAs), branches of the external iliac artery that supply blood to the anterior abdominal wall, must be avoided during paracentesis. The IEAs run lateral to the midline, approximately midway between the umbilicus and the anterior superior iliac spine (ASIS).
            
            **Diagnostic Indications of Paracentesis**
            - Unexplained ascites (to determine etiology).
            - Suspected spontaneous bacterial peritonitis (SBP).
            - Signs of infection: fever, abdominal pain, altered mental status.
            - Suspected malignancy-associated ascites.
            - Suspected chylous, hemorrhagic, or pancreatic ascites.
            
            **Therapeutic Indications**
            - Symptom relief in large-volume ascites causing:
              - Abdominal distension.
              - Dyspnea.
              - Early satiety.
            - Tense ascites or refractory ascites not responding to diuretics.
            
            **Contraindications** (Relative)
            - Uncorrected severe coagulopathy or thrombocytopenia (platelets <20,000, INR >2.0).
            - Active abdominal infection or cellulitis over puncture site.
            - Suspected intra-abdominal adhesions (increased risk of organ puncture).
            
            Procedure Steps
            
            **Preparation**
            - Obtain informed consent.
            - Explain risks, benefits, and potential complications (bleeding, infection, bowel perforation).
            - Ensure recent lab tests (e.g., coagulation profile, platelets) if the patient has bleeding risks.
            
            **Equipment**
            - Sterile gloves and gown.
            - Chlorhexidine or povidone-iodine for skin prep.
            - Lidocaine (1%) for local anesthesia.
            - Needle and syringe (e.g., 18-22 gauge).
            - Paracentesis kit (catheter, tubing, collection bottles).
            - Vacuum bottles or sterile containers for fluid collection.
            
            **Site Selection**
            - Palpate or use ultrasound to confirm fluid location.
            - Ideal puncture sites:
              1. Lateral lower abdomen, 2-3 cm medial and superior to the anterior superior iliac spine.
            
            **Needle Insertion**
            - Attach a syringe to the needle or catheter.
            - Insert the needle perpendicular to the skin.
            - Advance slowly, aspirating continuously until fluid is obtained.
            
            **Closure**
            - Withdraw the catheter or needle after fluid collection.
            - Apply gentle pressure to the site and cover with a sterile dressing.
            
            Key Diagnostic Tests on Ascitic Fluid
            **Serum-Ascites Albumin Gradient (SAAG)**
            - ≥1.1 g/dL: Portal hypertension-related (e.g., cirrhosis, heart failure).
            - <1.1 g/dL: Non-portal hypertension-related (e.g., malignancy, infection).
            
            **Polymorphonuclear (PMN) Cell Count**
            - ≥250 cells/mm³: Suspect SBP.
            """,
            citation: """
            https://www.merckmanuals.com/professional/gastrointestinal-disorders/how-to-do-gastrointestinal-procedures/how-to-do-paracentesis#Step-by-Step-Description-of-Procedure_v47934315
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:125,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/GallStone.mp4"),
            imageAbove: nil,
            text: """
            A 38F with PMH of obesity and hypertension presents with postprandial right upper quadrant abdominal pain and vomiting when the pain becomes severe. She denies fevers and any past surgery.
            
            Based on the right upper quadrant ultrasound above, what treatment do you recommend?
            """,
            imageMiddle: nil,
            options: [
                "Emergent cholecystectomy.",
                "Constipation treatment.",
                "Percutaneous cholecystostomy.",
                "Pain control and elective outpatient surgery."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            A defining characteristic of gallstones is posterior acoustic shadowing caused by the stone blocking sound waves. This creates a dark area behind the stone on the image. This feature helps distinguish gallstones from other echogenic structures like polyps (which usually lack shadowing).
            
            Gallstones often appear as bright (hyperechoic) foci within the gallbladder due to their high reflectivity.
            
            Gallstones can range in size from a few millimeters to several centimeters. Tiny stones (sludge or "sand") may not cause shadowing, making them harder to detect.
            
            Biliary colic refers to the pain caused by temporary obstruction of the cystic duct or common bile duct, typically due to gallstones (cholelithiasis). The treatment is pain control and elective cholecystectomy. Pain worse with fatty meals is also characteristic. The absence of fever can help distinguish this diagnosis from cholecystitis.
            
            Cholecystitis on ultrasound will show wall thickening (>3 mm) and pericholecystic fluid.
            
            Percutaneous cholecystostomy tubes are often placed in patients with cholecystitis who are poor surgical candidates.
            """,
            citation: """
            https://www.health.harvard.edu/a_to_z/biliary-colic-a-to-z
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:126,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/AAADissectionVid.mp4"),
            imageAbove: nil,
            text: """
            A 61M with PMH of fifteen pack years of smoking, hypertension and DMT2 presents with acute onset abdominal pain for the past 6 hours.
            
            His abdominal ultrasound is shown above. What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "SBO.",
                "Appendicitis with fecolith.",
                "Constipation.",
                "Abdominal aortic aneurysm with thrombus."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Abdominal ultrasound is a valuable tool for rapidly identifying an abdominal aortic aneurysm (AAA) and detecting potential signs of rupture in an emergency setting.
            
            An AAA is defined as a diameter ≥3 cm or >50% enlargement of the normal aortic diameter.
            
            The aneurysm appears as a dilated segment of the aorta with visible echogenic walls.
            
            A mural thrombus may appear as an echogenic or hypoechoic crescent along the aneurysm wall.
            
            Mural thrombus associated with AAA is clot adherent to the aortic wall, which can embolize distally. There is no data to suggest that chronic anticoagulation modifies the risk. If embolization does occur, the patient is considered "symptomatic" and is a candidate for AAA repair.
            
            Even in the absence of embolism, the appearance of thrombus that is not adherent to the aneurysm sac may indicate a rapid change has occurred in AAA diameter, potentially heralding rupture.
            
            In the U.S., abdominal aortic aneurysm (AAA) causes around 7000 deaths per year due to rupture. Without repair, ruptured AAA is nearly uniformly fatal. For asymptomatic patients, elective repair of the aneurysm is the most effective management.
            
            Initial management of patients with symptomatic (non-ruptured) or ruptured AAA includes the placement of large-bore IV access, pain management, and preparation for surgery.
            
            For patients with ruptured AAA, systolic blood pressure should be maintained between 80 and 100 mmHg (permissive hypotension). Medication drip options include nicardipine and esmolol.
            """,
            citation: """
            Hoornweg LL, Storm-Versloot MN, Ubbink DT, et al. Meta analysis on mortality of ruptured abdominal aortic aneurysms. Eur J Vasc Endovasc Surg 2008; 35:558.
            Hirsch AT, Haskal ZJ, Hertzer NR, et al. ACC/AHA 2005 Practice Guidelines for the management of patients with peripheral arterial disease (lower extremity, renal, mesenteric, and abdominal aortic): a collaborative report from the American Association for Vascular Surgery/Society for Vascular Surgery, Society for Cardiovascular Angiography and Interventions, Society for Vascular Medicine and Biology, Society of Interventional Radiology, and the ACC/AHA Task Force on Practice Guidelines (Writing Committee to Develop Guidelines for the Management of Patients With Peripheral Arterial Disease): endorsed by the American Association of Cardiovascular and Pulmonary Rehabilitation; National Heart, Lung, and Blood Institute; Society for Vascular Nursing; TransAtlantic Inter-Society Consensus; and Vascular Disease Foundation. Circulation 2006; 113:e463.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:127,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/AAAVid.mp4"),
            imageAbove: nil,
            text: """
            A 59M with PMH of 25 pack years of smoking presents to your emergency department for home blood pressure readings of 180-230/90-110. He denies chest pain, headache, shortness of breath and hematuria.
            
            In addition to rechecking his blood pressure you decide to screen him for an abdominal aortic aneurysm with abdominal ultrasound (seen above).
            
            What is your diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "AAA.",
                "Aortic thrombus.",
                "Normal aorta.",
                "Aortic ectasia."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            On abdominal ultrasound, the size of the abdominal aorta determines whether it is considered ectatic or a true abdominal aortic aneurysm (AAA). A normal abdominal aorta is ≤2.0 cm (average size is ~1.5 cm in adults). Aortic ectasia is an aorta with diameter 2.1–2.9 cm. AAA has a diameter ≥3.0 cm.
            
            Abdominal aortic aneurysm (AAA) is a common and potentially life-threatening condition. In the U.S. approximately 7000 deaths per year are due to ruptured AAA. Without repair, ruptured AAA is nearly uniformly fatal.
            
            For most patients with asymptomatic infrarenal AAA <5.5 cm, conservative management such as watchful waiting is recommended rather than elective repair.
            
            Unfortunately, no medical therapies have been shown to limit expansion. One modifiable risk factor is smoking. Smoking is strongly associated with AAA expansion.
            """,
            citation: """
            Bown MJ, Sutton AJ, Bell PR, Sayers RD. A meta-analysis of 50 years of ruptured abdominal aortic aneurysm repair. Br J Surg 2002; 89:714.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:128,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/AoLongAxisDissectionVid.mp4"),
            imageAbove: nil,
            text: """
            A 77M with PMH of hypertension and DMT2 presents with two days of progressively worsening mid back pain. The patient's HR is 105 and BP 192/97.
            
            An abdominal ultrasound of the patient is shown above.
            
            What is an appropriate antihypertensive regimen?
            """,
            imageMiddle: nil,
            options: [
                "Hydralazine pushes.",
                "Enalaprilat pushes.",
                "Nitroglycerin infusion.",
                "Esmolol and nicardipine infusions."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The above ultrasound shows a type-B thoracic aortic dissection in a long axis view on ultrasound.
            
            Aortic dissection, a tear in the inner wall of the aorta (the intimal layer), will lead to blood flow between the layers of the aorta and create a true and false lumen. With type B aortic dissection, the intimal tear originates distal to the subclavian artery.
            
            In type B aortic dissection, decreasing the force of myocardial contraction with beta blockers (known as anti-impulse therapy) has been shown to slow aortic expansion and potentially rupture after dissection.
            
            A beta blocker with a vasodilator are typically used in combination with a goal HR <60 and SBP <120/80.
            
            Beta blockers that are acceptable first-line infusion options include esmolol (25 to 50 mcg/kg per minute) and labetalol (0.5 to 2 mg/minute).
            
            Nicardipine is typically started at an infusion dose of 5 mg/hour.
            """,
            citation: """
            Lombardi JV, Hughes GC, Appoo JJ, et al. Society for Vascular Surgery (SVS) and Society of Thoracic Surgeons (STS) reporting standards for type B aortic dissections. J Vasc Surg 2020; 71:723.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:129,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/ArmAbscess.mp4"),
            imageAbove: nil,
            text: """
            A 31M construction worker presents with a swelling in his right lateral forearm that feels fluctuant.
            
            Your bedside ultrasound is shown above.
            
            What is the best treatment option?
            """,
            imageMiddle: nil,
            options: [
                "Bactrim mono-therapy.",
                "Bactrim plus cephalexin.",
                "Topical triple therapy antibiotic ointment.",
                "Incision and drainage."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The hypoechoic structure in the ultrasound is an abscess, which should be treated with incision and drainage.
            
            Antibiotic therapy should also be added because it reduces the rate of treatment failure and recurrence, especially with аbѕcеsses >2 cm and coexisting ϲellulitiѕ.
            
            Bactrim mono-therapy generally is a poor option for cellulitis due to the lack of strep coverage.
            """,
            citation: """
            Talan DA, Mower WR, Krishnadasan A, et al. Trimethoprim-Sulfamethoxazole versus Placebo for Uncomplicated Skin Abscess. N Engl J Med 2016; 374:823.
            Wang W, Chen W, Liu Y, et al. Antibiotics for uncomplicated skin abscesses: systematic review and network meta-analysis. BMJ Open 2018; 8:e020991.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:130,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/BLinesCHFVid.mp4"),
            imageAbove: nil,
            text: """
            A 64F with PMH of poorly controlled hypertension presents with one month of progressively worsening shortness of breath. The patient reports paroxysmal nocturnal dyspnea.
            
            Your bedside thoracic ultrasound shows the above.
            
            What is the best treatment option?
            """,
            imageMiddle: nil,
            options: [
                "Lisinopril PO.",
                "Hydralazine IV.",
                "Azithromycin IV.",
                "Furosemide IV."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The above ultrasound video shows B-lines which are consistent with congestive heart failure, which should be treated with furosemide.
            
            Unilateral B-lines (in one lung field) can be more consistent with pneumonia while bilateral B-lines is more typical of a CHF exacerbation.
            """,
            citation: """
            https://www.uptodate.com/contents/bedside-pleural-ultrasonography-equipment-technique-and-the-identification-of-pleural-effusion-and-pneumothorax?search=B-lines&sectionRank=2&usage_type=default&anchor=H1681234184&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H1198742670
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:131,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/BLinesVid.mp4"),
            imageAbove: nil,
            text: """
            A 67M with PMH of COPD and CHF presents with shortness of breath and a mild amount of wheezing on exam. To help you distinguish the cause of his shortness of breath you perform bedside thoracic ultrasound, shown above.
            
            What does the ultrasound show?
            """,
            imageMiddle: nil,
            options: [
                "A-lines.",
                "Artifact.",
                "Kerley B-lines.",
                "B-lines."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            On the above ultrasound, B-lines are seen as vertical, hyperechoic lines extending from the pleural line to the bottom of the screen, typically without fading. These are sometimes called “comet tails” and are seen with pulmonary edema. Visualization of at least 3 B-lines are required for diagnosis.
            
            A-lines are bright, horizontal lines. They tend to be evenly spaced, repetitive reverberation artifacts parallel to the pleural line. They reflect the absence of significant lung pathology (e.g., no alveolar edema or interstitial syndrome).
            
            Kerley B-lines are a chest X-ray finding of thin, horizontal, peripheral lines often due to fluid accumulation.
            """,
            citation: """
            https://www.uptodate.com/contents/bedside-pleural-ultrasonography-equipment-technique-and-the-identification-of-pleural-effusion-and-pneumothorax
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:132,
            videoAbove: nil,
            imageAbove: "HyperKECG",
            text: """
            A 51F with end-stage renal disease on hemodialysis presents with shortness of breath for one day. She has missed the last week of dialysis.
            
            Her ECG is shown above.
            
            What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Hypokalemia.",
                "Hypercalcemia.",
                "Hypomagnesemia.",
                "Hyperkalemia."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Tall, narrow, symmetrically peaked T-waves are characteristic of hyperkalemia on ECG.
            
            Hyperkalemia is a common and potentially life-threatening complication because of the risk of cardiac dysrhythmias.
            
            Hyperkalemia is generally caused either by increased potassium release from cells or reduced renal elimination.
            
            Increased release from cells occurs due to metabolic acidosis (due to cell buffering), increased tissue catabolism (rhabdomyolysis or tumor lysis syndrome), beta blockers, and insulin-deficient states.
            
            Insulin promotes potassium entry into cells. In uncontrolled diabetes mellitus, the insulin deficiency/resistance leads to hyperkalemia even though there may be overall marked total body potassium depletion due to urinary losses from osmotic diuresis.
            
            Acute kidney injury patients, especially those who become oliguric, and chronic kidney disease patients have impaired elimination of potassium.
            """,
            citation: """
            "Image by Dr. Michael-Joseph F. Agbayani and Dr. Eddieson Gonzales (Manila, Philippines) https://commons.wikimedia.org/wiki/File:Hyperkalemia_ECG.jpg. licensed under CC-BY-4.0. Modifications were made.”
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Nephrology"
        ),
        Question(
            id:133,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/CellulitisVid.mp4"),
            imageAbove: nil,
            text: """
            A 38F with right lower extremity erythema undergoes soft tissue bedside ultrasound, shown above.
            
            What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Venous insufficiency.",
                "Foreign Body.",
                "Abscess.",
                "Cellulitis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Cobblestoning on ultrasound refers to the characteristic appearance of subcutaneous tissue in cases of significant soft tissue swelling, often due to cellulitis or edema.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC6170135/#:~:text=The%20edema%20and%20inflammation%20in,%E2%80%9D%20(See%20Figure%202.)
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:134,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/FHR.mp4"),
            imageAbove: nil,
            text: """
            The normal ranges for the above ultrasound measurement is:
            """,
            imageMiddle: nil,
            options: [
                "140-180 seconds.",
                "90-120 seconds.",
                "80-140 seconds.",
                "110-160 seconds."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The above ultrasound shows M-Mode being applied for fetal ultrasound to obtain a fetal heart rate (FHR).
            
            A normal FHR is 110–160 bpm and can indicate a healthy fetus.
            
            Fetal heart rate (FHR) can be measured as early as 7 weeks transabdominally, using M-Mode on ultrasound.
            
            A low FHR, particularly <90 bpm, is associated with miscarriage.
            
            M-Mode should be used, and not pulse-wave Doppler, for measuring the FHR because while not well studied in humans, prolonged pulse-wave Doppler may have adverse effects on the unborn fetus. Particularly, investigations with laboratory animals have documented that pulsed (Doppler) ultrasound can cause elevations in temperature and damage biological tissues in vivo.
            """,
            citation: """
            https://med.emory.edu/departments/emergency-medicine/sections/ultrasound/case-of-the-month/obgyn/fetal_determination.html
            
            https://emottawablog.com/2024/10/pocus-pearl-measuring-fetal-heart-rate/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:135,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/IVCFull2Vid.mp4"),
            imageAbove: nil,
            text: """
            The above imaged structure is most useful for assessing which of the following?
            """,
            imageMiddle: nil,
            options: [
                "Aortic dissection.",
                "Cardiac contractility.",
                "Aortic regurgitation.",
                "Intravascular volume status."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The inferior vena cava (IVC) is a valuable ultrasound target in emergency settings to assess intravascular volume status and guide fluid management.
            
            **Respiratory Variability:** Changes in the diameter of the IVC during inspiration and expiration can indicate volume responsiveness: >50% collapse during inspiration suggests hypovolemia and potential fluid responsiveness. Minimal collapse or a dilated IVC suggests hypervolemia or increased right atrial pressure.
            
            A distended, non-collapsible IVC is also a key finding of cardiac tamponade, indicating severely elevated right atrial pressure.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC10053997/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:136,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/IVCFull2Vid.mp4"),
            imageAbove: nil,
            text: """
            The above ultrasound is most often utilized to assess for what?
            """,
            imageMiddle: nil,
            options: [
                "Aortic dissection.",
                "Cardiac contractility.",
                "Aortic regurgitation.",
                "Intravascular volume status."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The inferior vena cava (IVC) is a valuable ultrasound target in emergency settings to assess intravascular volume status and guide fluid management. The IVC is seen running into the right atrium in the above ultrasound.
            
            **Respiratory Variability:** Changes in the diameter of the IVC during inspiration and expiration can indicate volume responsiveness: >50% collapse during inspiration suggests hypovolemia and potential fluid responsiveness. Minimal collapse or a dilated IVC suggests hypervolemia or increased right atrial pressure (including from a pulmonary embolism).
            
            A distended, non-collapsible IVC is also a key finding of cardiac tamponade, indicating severely elevated right atrial pressure.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC10053997/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:137,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/IVCVid.mp4"),
            imageAbove: nil,
            text: """
            A 68F presents with lightheadedness and is found to be hypotensive with a urinary tract infection. After your initial fluid bolus you assess her IVC, shown above.
            
            What therapy should be administered?
            """,
            imageMiddle: nil,
            options: [
                "Vasopressors.",
                "Antibiotics.",
                "Repositioning.",
                "Fluid bolus."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The ultrasound shows a collapsing IVC with respirations, suggesting the patient still needs IV fluids to determine if they are fluid responsive.
            
            >50% collapse during inspiration suggests hypovolemia and potential fluid responsiveness.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC10053997/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:138,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/NmlLungSlidingVid.mp4"),
            imageAbove: nil,
            text: """
            The ultrasound video above shows which of the following?
            """,
            imageMiddle: nil,
            options: [
                "Pneumothorax.",
                "Pulmonary edema.",
                "Pneumonia.",
                "Normal lung."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The above ultrasound shows normal lung sliding which effectively rules out pneumothorax.
            
            The absence of B-lines makes pulmonary edema and pneumonia highly unlikely.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC3299161/#:~:text=The%20negative%20predictive%20value%20for,that%20a%20pneumothorax%20is%20present.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:139,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/PlConsolidationVid.mp4"),
            imageAbove: nil,
            text: """
            A 49F presents to your emergency department with right-sided flank pain and a cough.
            
            Bedside ultrasound is shown above.
            
            What management is indicated?
            """,
            imageMiddle: nil,
            options: [
                "Thoracentesis.",
                "Pain control and IV Fluids.",
                "General surgeon consultation.",
                "Antibiotics."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The above ultrasound shows a consolidation with a small pleural effusion in the right lower lung field, overall consistent with pneumonia.
            
            A positive “spine sign” is also noted, which is visualization of the thoracic vertebral bodies above the level of the diaphragm.
            
            Normally, in a healthy lung, air within the lung parenchyma prevents ultrasound waves from passing through effectively, causing the thoracic spine to be invisible above the diaphragm.
            
            When there is a pleural effusion, fluid in the pleural space allows ultrasound waves to pass through, making the vertebral bodies visible above the diaphragm.
            """,
            citation: """
            https://stanfordmedicine25.stanford.edu/blog/archive/2018/thespinesign1.html#:~:text=Aerated%20lung%20and%20most%20pleural,is%20visible%20beyond%20the%20diaphragm.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        
        Question(
            id:140,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/PleuralEffusionVid.mp4"),
            imageAbove: nil,
            text: """
            A 71M with no past medical history but who has not seen a doctor in more than ten years presents to your emergency department with shortness of breath that worsens with lying flat.
            
            Your thoracic ultrasound is shown above.
            
            What is the most likely diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Pneumonia.",
                "Cirrhosis.",
                "Pulmonary embolism.",
                "Congestive Heart Failure."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The thoracic ultrasound shows a large pleural effusion (including a positive “spine sign”) which is most commonly caused by heart failure.
            
            Spine sign is the visualization of vertebral bodies above the diaphragm, which would ordinarily not be apparent without the presence of fluid.
            
            Any condition that can lead to increased fluid pressure in the blood vessels or inflammation in the pleural space causes fluid build-up between the lung and chest wall.
            
            Other common causes of pleural effusion include lung cancer, pneumonia, pulmonary embolism, liver cirrhosis, and certain other cancers like breast or ovarian cancer.
            """,
            citation: """
            https://nephropocus.com/2019/06/04/pleural-effusion-the-spine-sign/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:141,
            videoAbove: nil,
            imageAbove: "WPWECG",
            text: """
            A 28M with no PMH presents with palpitations.
            
            His ECG is shown above. What is the best treatment option?
            """,
            imageMiddle: nil,
            options: [
                "Metoprolol.",
                "Hydralazine.",
                "Nitroglycerine.",
                "Procainamide."
            ],
            correctOptionIndex: 3,
            imageBelow: "deltaWave",
            imageBelow2: nil,
            explanation: """
            Procainamide is the medication of choice for significant tachycardia due to Wolff-Parkinson-White (WPW).
            
            WPW syndrome is a congenital problem where an accessory electrical pathway exists between the atria and ventricles and it is potentially dangerous to administer medications that slow the normal electrical pathway at the AV node because this could promote conduction down the aberrant pathway and even cardiac arrest.
            
            People with WPW will have an ECG showing a short PR interval with a delta wave (arrow below) as well as QRS prolongation, which makes sense because of the shortcut between the atria and ventricles causing early contraction of the ventricles. Also, the ST segment and T wave, which represents repolarization, will often be directed opposite the QRS complex.
            """,
            citation: """
            https://commons.wikimedia.org/wiki/Category:Wolff%E2%80%93Parkinson%E2%80%93White_syndrome#/media/File:DeltaWave09.JPG
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:142,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following laws applies to the physician delivering medical care while on a commercial flight?
            """,
            imageMiddle: nil,
            options: [
                "Good Samaritan Law.",
                "Federal Aviation Administration Rules.",
                "The Lanterman Act.",
                "Aviation Medical Assistance Act"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The Aviation Medical Assistance Act (AMAA) of 1998 protects medical professionals who provide good-faith medical care during in-flight emergencies. The AMAA protects medical personnel from: medical malpractice claims, civil lawsuits, and damage verdicts.
            
            The AMAA, as a niche area of the Good Samaritan law applicable in all 50 states, specifically addresses the liability of persons rendering aid in these situations.
            
            Notably, an employer's liability policy would not cover the provider who is off-duty while flying.
            """,
            citation: """
            https://www.govinfo.gov/content/pkg/CRPT-105hrpt456/pdf/CRPT-105hrpt456.pdf
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:143,
            videoAbove: nil,
            imageAbove: "sinusBrady",
            text: """
            A 61F with a PMH of atrial fibrillation and depression presents with an intentional overdose of unknown medication. When she arrives, she reports lightheadedness and nausea. Her blood pressure is 105/86.
            
            A single lead ECG for this patient is shown above.
            
            What medication should be considered?
            """,
            imageMiddle: nil,
            options: [
                "Nifedipine.",
                "Aspirin.",
                "Charcoal.",
                "Glucagon."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Beta blocker overdose should be treated with glucagon in addition to the typical medications for symptomatic bradycardia (atropine and beta-adrenergic agonists).
            
            This patient with atrial fibrillation is likely on either a beta blocker or calcium channel blocker.
            
            Glucagon works by increasing chronotropic and inotropic cardiac activity, which can be very useful with beta-blocker or calcium channel blocker overdoses.
            
            If medications are ineffective or if the patient is hemodynamically unstable, transcutaneous pacing should be used.
            """,
            citation: """
            https://commons.wikimedia.org/wiki/Category:ECG_of_sinus_bradycardia
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:144,
            videoAbove: nil,
            imageAbove: "HyperKECG",
            text: """
            A 36M construction worker was brought to your emergency department with severe bilateral leg and buttock pain after being stuck in a hoist harness for several hours due to mechanical issues.
            
            The patient undergoes a complete work-up including X-Rays which are normal.
            
            His ECG is shown above. What therapy should be promptly initiated?
            """,
            imageMiddle: nil,
            options: [
                "Normal saline.",
                "Insulin SC.",
                "Metoprolol.",
                "Calcium gluconate."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            This patient has ECG findings of hyperkalemia (peaked T waves) from crush syndrome and calcium should be promptly administered.
            
            Prolonged suspension in a seat harness is a classic mechanism for rhabdomyolysis and resulting hyperkalemia. Hyperkalemia can rapidly progress from peaked T-waves to a sinusoidal pattern on ECG, and thus cardiac arrest.
            
            The first treatment that should be initiated in hyperkalemia is calcium, either in the form of calcium chloride or gluconate. This stabilizes the cardiac membrane, preventing ventricular fibrillation and allowing time to administer other hyperkalemia treatments such as normal saline, insulin (IV not subcutaneous), furosemide and albuterol.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC2952010/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Trauma"
        ),
        Question(
            id:145,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            An elderly, undomiciled man found submersed in a freezing river is brought to your department with a temperature of 80F. His blood pressure is 64/38 and mental status notable for severe lethargy.
            
            Initial nursing attempts at peripheral IV access have failed.
            
            What should be your next step?
            """,
            imageMiddle: nil,
            options: [
                "US-guided IV access.",
                "Internal jugular access.",
                "External warming techniques.",
                "Intraosseous (IO) access."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Fluid resuscitation with warm fluids should not be delayed in severely hypothermic patients. While both peripheral IV and IO access are the preferred methods, a patient that is peri-code should have IO access prioritized so that warm fluids can immediately be administered.
            
            Central administration of fluids in hypothermic patients is not preferred due to the potential for myocardial heat gradients.
            
            During rewarming, fluid requirements may further increase due to vasodilation.
            
            Also note that ventricular fibrillation and pulseless ventricular tachycardia will be more refractory to defibrillation in the setting of hypothermic patients, and rapid warming is critical to a successful resuscitation.
            """,
            citation: """
            https://www.ahajournals.org/doi/10.1161/CIRCULATIONAHA.105.166566
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Environmental Disorders"
        ),
        Question(
            id:146,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            An 18M football player takes a forceful hit to the anterior chest wall. You decide it prudent to rule out cardiac contusion.
            
            What test/s are sufficient to rule out clinically significant cardiac contusion?
            """,
            imageMiddle: nil,
            options: [
                "ECG.",
                "Troponin and CK-MB.",
                "Troponin and CPK.",
                "Troponin and ECG."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The exact incidence of myocardial injury after blunt chest trauma is unknown, but is thought to be between 8% and 71%. A definite diagnosis can be achieved only by direct viewing at autopsy.
            
            ECG is a sensitive tool to evaluate for myocardial injury. Between 40% and 83% of myocardial injury patients will have an abnormal ECG.
            
            If an ECG is normal and a single troponin is negative, you have effectively ruled out cardiac contusion.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC5027160/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Trauma"
        ),
        Question(
            id:147,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 34M with PMH of poly-substance abuse presents with chest pain after using a larger amount of cocaine than he typically does. As he transfers onto the gurney he collapses and you are not able to detect a pulse. Your team initiates chest compressions.
            
            What medication should you call for first?
            """,
            imageMiddle: nil,
            options: [
                "Epinephrine.",
                "Calcium chloride.",
                "Normal saline.",
                "Sodium bicarbonate."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Sodium bicarbonate is particularly beneficial in cardiac arrest due to sodium channel blocking agents such as cocaine and tricyclic antidepressants.
            
            Note that while sodium bicarbonate was previously used to treat suspected acidosis as a cause of cardiac arrest, it does not improve the success of defibrillation attempts in these scenarios and is no longer recommended for routine use in cardiac arrest resuscitations.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC4780490/
            https://criticalcarenow.com/sodium-bicarbonate-for-cardiac-arrest-time-to-put-it-away/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:148,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A healthy 14F presents to your department after near drowning. The HPI taken from her parents includes that she was swimming in her pool and suddenly began repetitive coughing, including spitting up “a lot of water”. 
            
            She appears anxious, is alert and oriented to person, place and time, and is following complex requests. Oxygen saturation is 95%.
            
            What is the most appropriate next step?
            """,
            imageMiddle: nil,
            options: [
                "Admit the patient for serial lung exams and repeat chest X-Ray.",
                "Perform a chest CT.",
                "Perform a chest X-Ray, and if normal discharge the patient.",
                "Observe for four to six hours prior to discharge."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Following a near drowning, if oxygen saturation is greater than or equal to 95% and the patient has a GCS greater than or equal to 13, then appropriate disposition is discharge after four to six hours of observation.
            
            During observation, development of adventitious breath sounds such as rhonchi or increased work of breathing should prompt admission.
            
            A requirement for supplemental oxygen is another indication for admission.
            """,
            citation: """
            https://pubmed.ncbi.nlm.nih.gov/10331129/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Environmental Disorders"
        ),
        Question(
            id:149,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 77M with PMH of metastatic lung cancer on hospice presents to your department in severe respiratory distress and shortly thereafter loses carotid pulse. No advanced directive is available.
            
            What should be your next steps?
            """,
            imageMiddle: nil,
            options: [
                "Administer morphine to optimize patient comfort.",
                "Immediately call family to confirm code status.",
                "Intubate.",
                "Begin CPR."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Many hospice patients have continually changing advance directive wishes, and as such without access to this document to confirm end-of-life resuscitation wishes CPR and complete resuscitation should be initiated.
            
            In general, an advance directive is not a requirement to be on hospice status.
            """,
            citation: """
            https://www.nia.nih.gov/health/advance-care-planning/advance-care-planning-advance-directives-health-care
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        Question(
            id:150,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A woman with history of opioid use disorder delivers in a car en route to your emergency department. The neonate has a heart rate of 85 and displays erratic breathing.
            
            What is the most appropriate next step to care for the neonate?
            """,
            imageMiddle: nil,
            options: [
                "Administer naloxone.",
                "Administer epinephrine.",
                "Initiate CPR.",
                "Administer positive pressure ventilation."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Dry, warm and stimulate the neonate first, but if the heart rate is still below 100, resuscitation should proceed with positive pressure ventilation (PPV). Most neonates will respond to PPV.
            
            Administering naloxone to an infant is not indicated even if the mother is using opioids given the risk of precipitating a seizure.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC8606598/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        Question(
            id:151,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 81M with colon cancer on chemotherapy presents with one week of pleuritic chest pain and 24-hours of rapidly progressive shortness of breath. He is unable to speak and has a GCS of 6. His living will notes he does not wish to be intubated.
            
            What is your next step?
            """,
            imageMiddle: nil,
            options: [
                "Intubate.",
                "Respect his wishes and support patient comfort with IV morphine.",
                "Administer antibiotics.",
                "Contact a legal medical proxy for healthcare decisions."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Determine who the legal proxy is to support your decision on whether or not to intubate given that a living will does not preclude intubation for acutely life-threatening processes.
            
            While living wills are legal documents, they mostly guide care for slowly deteriorating patients. For potentially reversible conditions, it is imperative to clarify patient wishes with a POLST or an appointed legal medical proxy.
            
            Also note that a GCS of 8 or less was initially established as a guide of when to intubate trauma patients. Many patients with a GCS of 8 or less should not be intubated. For example, alcoholics who present severely intoxicated will present with a low GCS, but it is most appropriate to monitor their respiratory status closely for signs of impending aspiration before considering intubation.
            """,
            citation: """
            https://pubmed.ncbi.nlm.nih.gov/19272743/#:~:text=Background%3A%20Decreased%20consciousness%20is%20a,a%20need%20for%20endotracheal%20intubation.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Legal and Healthcare Regulation"
        ),
        
        Question(
            id:152,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 39M with PMH of insulin-dependent diabetes presents with a generalized tonic-clonic seizure.
            
            What is your first step?
            """,
            imageMiddle: nil,
            options: [
                "Administer Ativan.",
                "Administer Valium.",
                "Administer Midazolam.",
                "Perform a fingerstick glucose check."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            While intravenous benzodiazepines are first-line treatment in seizures, it is imperative to rapidly check glucose to determine if the patient’s seizure is due to hypoglycemia and requires high-dose dextrose.
            """,
            citation: """
            https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2787732/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Endocrine, Metabolic and Nutritional Disorders"
        ),
        Question(
            id:153,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 14F with no PMH presents with right lower quadrant abdominal pain that started as peri-umbilical pain.
            
            The patient has normal vitals and a WBC count of 12k. Your abdominal ultrasound is negative so you proceed to a CT A/P with contrast which is also negative. 
            
            During your work-up, the patient’s pain resolves.
            
            What are your return precautions?
            """,
            imageMiddle: nil,
            options: [
                "No follow-up needed as CT-Scan is nearly 100% sensitive for appendicitis.",
                "Outpatient MRI.",
                "Outpatient general surgery follow-up.",
                "Return for fever, worsening abdominal pain or vomiting."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            While a CT of the abdomen and pelvis is around 95% sensitive for appendicitis, false negatives can occur, mostly due to the paucity of intra-abdominal fat.
            
            As such, it is essential to provide patients and families strict return precautions for potentially evolving appendicitis.
            """,
            citation: """
            https://ajronline.org/doi/10.2214/ajr.184.3.01840855
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Gastroenterology"
        ),
        Question(
            id:154,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 49M with PMH of DVT and PE previously on anticoagulation presents with pleuritic chest pain and hypoxia (O2 sat 87% on room air). His HR is 135 and BP 104/65. A chest X-Ray is normal.
            
            What is your next step?
            """,
            imageMiddle: nil,
            options: [
                "Order a CT Angio of the chest.",
                "Perform a VBG and CT chest with contrast.",
                "Admit the patient on supplemental oxygen and antibiotics.",
                "Empirically administer anticoagulation."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            Anticoagulation should be initiated in high-probability PE even prior to confirming the diagnosis of PE as long as the risk of bleeding is determined to be sufficiently low.
            """,
            citation: """
            https://www.uptodate.com/contents/treatment-prognosis-and-follow-up-of-acute-pulmonary-embolism-in-adults
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:155,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 52F with PMH of lung cancer on chemotherapy presents with 2 days of worsening pleuritic-type chest pain. She is found to be hypoxic, tachycardic, and with a blood pressure of 75/43. After fluid bolus, her BP is 72/45.
            
            What therapy should be started?
            """,
            imageMiddle: nil,
            options: [
                "Anticoagulation.",
                "Methylprednisolone.",
                "Lactated Ringers.",
                "Fibrinolytic."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            For patients who have shock due to acute pulmonary embolism (PE), thrombolytic therapy should immediately be started, followed by anticoagulation.
            
            Patients who have persistent systolic blood pressure <90 mmHg, a vasopressor requirement, or a drop in systolic blood pressure of ≥40 mmHg from baseline for 15 minutes despite resuscitation also warrant thrombolytics followed by anticoagulation.
            
            One regimen would be 100 mg of tissue plasminogen activator over less than 2 hours.
            """,
            citation: """
            https://www.uptodate.com/contents/approach-to-thrombolytic-fibrinolytic-therapy-in-acute-pulmonary-embolism-patient-selection-and-administration#H22
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        
        Question(
            id:156,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is the RAAS scale primarily used for?
            """,
            imageMiddle: nil,
            options: [
                "Blood pressure monitoring on medical floor patients.",
                "Behavioral changes in restrained patients.",
                "Level of agitation in opioid withdrawal.",
                "Sedation levels among critically ill."
            ],
            correctOptionIndex: 3,
            imageBelow: "RAAS",
            imageBelow2: nil,
            explanation: """
            The Richmond Agitation-Sedation Scale (RASS) is a scale used to measure the agitation or sedation level of a person.
            
            While it can be used to describe any patient, including those in any form of toxic withdrawal, it is mostly used in mechanically ventilated patients in order to avoid over and under-sedation.
            
            A typical goal RASS is -2 for mechanically ventilated patients on sedation, so that the patient opens their eyes to voice for less than 10 seconds.
            
            A RAAS table is below.
            """,
            citation: """
            https://www.atsjournals.org/doi/10.1164/rccm.2107138
            https://en.wikipedia.org/wiki/Richmond_Agitation-Sedation_Scale
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Neurology"
        ),
        
        Question(
            id:157,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            When should buprenorphine be initiated for opioid withdrawal?
            """,
            imageMiddle: nil,
            options: [
                "1 hour after last opioid use and a COWS ≥ 8",
                "4 hours after last opioid use and a COWS ≥ 4",
                "24 hours after last opioid use and a COWS ≥ 4",
                "12 hours after last opioid use and a COWS ≥ 8"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            While guidelines vary slightly between institutions, generally the first dose of buprenorphine should be given:
            
            6-12 hours after the last use of heroin or short-acting pain pills and at least 24-48 hours after long-acting opioids like methadone.
            
            AND when a Clinical Opiate Withdrawal Score (COWS) is ≥ 8-12.
            """,
            citation: """
            https://oasas.ny.gov/system/files/documents/2019/10/ExampleProtocols-816-7Med-SupProgramB-AppendixC.pdf#:~:text=Before%20taking%20a%20buprenorphine%20dose,acting%20opioids%20such%20as%20methadone.
            https://hsc.unm.edu/medicine/departments/emergency-medicine/_docs/clinical_resources/general-policies-and-guidelines/handout-treatment-of-acute-opiate-withdrawal-in-ed-02_19_21.pdf
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Addiction Medicine"
        ),
        Question(
            id:158,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 10-year-old boy presents to your emergency department with one month of generalized malaise and arthralgia. His social history is notable for a diet consisting mostly of processed foods.
            
            On exam you note gingival bleeding, mild diffuse pallor, scattered bruising, non-pitting edema and a rash on the lower extremities.
            
            His rash is shown below.
            
            What is the diagnosis?
            """,
            imageMiddle: "ScurvySkin",
            options: [
                "B12 deficiency.",
                "IgA Vasculitis.",
                "TTP/HUS.",
                "Scurvy."
            ],
            correctOptionIndex: 3,
            imageBelow: "SkurvySkin",
            explanation: """
            One major clue to the diagnosis of scurvy is the diet of processed foods, however the symptoms of fatigue, gingival bleeding, bruising and perifollicular hemorrhage are other consistent findings.
            
            Petechiae are non-specific to scurvy but the perifollicular hemorrhages (shown below) and corkscrewing of skin hairs are quite specific.
            
            Vitamin C supplementation should be initiated (~1g daily) while Vitamin C levels and a skin punch biopsy are sent.
            
            Scurvy has been often mistaken for vasculitides such as Henoch-Schönlein purpura (HSP), also known as immunoglobulin A (IgA) vasculitis (the most common vasculitis in children, especially in age ranges from 2 to 6).
            
            HSP presentation includes a purplish rash that looks like bruising, arthralgia, abdominal pain, nausea/vomiting and bloody stools. HSP is generally a self-limiting condition that resolves without treatment, however some cases require steroids, other immunosuppressants, dialysis if severe renal injury develops, and in some cases surgical intervention if intestinal obstruction complicates the illness.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC2567249/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Endocrine, Metabolic and Nutritional Disorders"
        ),
        
        Question(
            id:159,
            videoAbove: nil,
            imageAbove: "Diphtheria",
            text: """
            A 7-year-old unvaccinated boy who recently returned from the Dominican Republic with family presents with a severely swollen neck. On exam you see the above child. His oropharyngeal exam reveals an adherent, grayish plaque on the uvula and soft palate.
            
            What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Mumps.",
                "Candida.",
                "Group A Streptococcus.",
                "Diphtheria."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Respiratory diphtheria is the most likely diagnosis given the child’s travel to an endemic area (Dominican Republic), unvaccinated status and the hallmark pseudomembrane that is described.
            
            Respiratory diphtheria has a gradual onset and is characterized by a mild fever, sore throat, painful swallowing, and hoarseness (if the larynx is involved).
            
            The pseudomembrane that appears within 2–3 days of illness onset covers the mucous lining of the upper airway and it can extend into the trachea. The pseudomembrane is firm and adherent, appearing fleshy and grey. It may bleed after attempts to remove it. Fatal airway obstruction can result if the pseudomembrane extends into the larynx or trachea or if a piece of it becomes dislodged. The case-fatality ratio is 5%–10%.
            
            Mumps would be high on the differential in this presentation. However, after the U.S. mumps vaccination program started in 1967, there has been a more than 99% decrease in mumps cases in the United States. Common signs of mumps are puffy cheeks and a tender, swollen jaw from salivary gland inflammation. The most serious complication of mumps is encephalitis.
            """,
            citation: """
            https://wwwnc.cdc.gov/travel/yellowbook/2024/infections-diseases/diphtheria#clinical
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        Question(
            id:160,
            videoAbove: nil,
            imageAbove: "nasalHematoma",
            text: """
            A ten-year-old boy presents with facial and nasal pain after crashing his bicycle into a tree. You note the above on exam.
            
            What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Rhinorrhea.",
                "Epistaxis.",
                "Scalp hematoma.",
                "Nasal Septal Hematoma."
            ],
            correctOptionIndex: 3,
            imageBelow: "nasalHematoma1",
            imageBelow2: "nasalHematoma2",
            explanation: """
            Exam findings suggestive of nasal septal hematoma include an asymmetric septum and a blue or red boggy swelling or mass that does not change in size with topical vasoconstrictors.
            
            The pathophysiology of the developing nasal septal hematomas is they form when blood collects in the space between the cartilage and the overlying mucoperichondrium (below image).
            
            If not rapidly evacuated, pressure-induced avascular necrosis of the nasal cartilage may lead to irreversible damage as soon as 24-hours from onset.
            
            Hematoma drainage typically includes incision of the mucosa over the area of greatest fluctuance while being cautious not to incise cartilage. For bilateral hematomas, staggered incisions should be made to avoid a communicating incision.
            """,
            citation: """
            Wright RJ, Murakami CS, Ambro BT. Pediatric nasal injuries and management. Facial Plast Surg 2011; 27:483.
            https://emedicine.medscape.com/article/149280-overview#a7
            https://commons.wikimedia.org/wiki/Category:Nasal_septal_hematoma
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Head, Ear, Eye, Nose & Throat"
        ),
        Question(
            id:161,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following patients should be treated with antivirals for influenza?
            """,
            imageMiddle: nil,
            options: [
                "55M with PMH of CAD.",
                "24F with no PMH.",
                "36M with 5 pack years of smoking.",
                "27F who is 36 weeks pregnant."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            There is Grade 1C evidence that pregnant patients and those within two weeks of delivery or pregnancy loss who have seasonal influenza should be treated with antivirals given they have a higher mortality compared with the general population and maternal influenza also increases the risk of adverse fetal outcomes (including congenital anomalies, preterm birth, and fetal death).
            
            Treatment should not be withheld while awaiting results of diagnostic testing.
            
            There is also Grade 1C evidence for influenza vaccination of all patients who are pregnant regardless of pregnancy trimester.
            
            For the general population, antivirals like oseltamivir reduce the duration of illness by around one day and also carry the risk of GI complications like diarrhea.
            """,
            citation: """
            https://www.uptodate.com/contents/seasonal-influenza-and-pregnancy?search=pregnancy%20influenza&sectionRank=2&usage_type=default&anchor=H5795733&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H5795733
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        
        Question(
            id:162,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 40M with unknown PMH presents from home after family noted he suddenly became agitated. His vitals are notable for tachycardia with a HR of 160. 
            
            He is agitated with enlarged pupils. His ocular exam shows multidirectional nystagmus. 
            
            What is the likely culprit toxin?
            """,
            imageMiddle: nil,
            options: [
                "Synthetic cannabinoid.",
                "Inhalant.",
                "Fentanyl.",
                "PCP."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Phencyclidine (PCP) is a dissociative anesthetic that is used primarily for its hallucinatory effects. A hallmark exam finding is rotatory, or multidirectional, nystagmus.
            
            Symptoms may include altered mental status (from comatose to profound psychomotor agitation), hallucinations, and a hyperadrenergic state with hypertension and tachycardia. Severe complications include rhabdomyolysis, hyperthermia, and seizures.
            
            Benzodiazepines are the mainstay of treatment to control agitation (Midazolam or lorazepam IM).
            """,
            citation: """
            https://www.uptodate.com/contents/phencyclidine-pcp-intoxication-in-adults?search=pcp%20treatment&sectionRank=3&usage_type=default&anchor=H25&source=machineLearning&selectedTitle=2%7E95&display_rank=2#H25
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        
        Question(
            id:163,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 39F presents to your department with acute onset pelvic pain and vomiting. A pelvic ultrasound reveals no doppler flow on the left ovary.
            
            Which of the following is a likely associated feature of her history and or presentation?
            """,
            imageMiddle: nil,
            options: [
                "Pelvic inflammatory disease.",
                "STI.",
                "Hysterectomy.",
                "An ovarian mass > 5 cm."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            The primary risk factor for ovarian torsion is an ovarian mass, especially ones larger than 5 cm. However, torsion may also occur without an underlying cyst or mass, particularly in the pediatric population.
            """,
            citation: """
            https://www.uptodate.com/contents/ovarian-and-fallopian-tube-torsion?search=ovarian%20torsion&sectionRank=3&usage_type=default&anchor=H33&source=machineLearning&selectedTitle=1%7E59&display_rank=1#H33
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Obstetrics and Gynecology"
        ),
        Question(
            id:164,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 29F with no PMH who is 35 weeks pregnant presents after motor vehicle collision appearing gravely ill, pale, with poor mental status, groaning, and severe abdominal pain.
            
            Her blood pressure is 70/50 on repeat measurements.
            
            You call for blood products. The blood bank wants to know what blood type you are requesting.
            
            You answer:
            """,
            imageMiddle: nil,
            options: [
                "AB+",
                "AB-",
                "O+",
                "O-"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            O negative blood is preferentially transfused to women of childbearing age to mitigate the risk of hemolytic disease of the fetus and newborn.
            
            One of the biggest concerns with patients requiring emergent blood transfusion is ABO and Rh factor (D) antigen-compatible blood. These antigens are the most immunogenic and thus blood group O Rh negative is the most compatible option when the recipient's blood group is unknown. However, only 7% of the population is O negative, while 37% of the population is O positive.
            
            Due to the shortage of O negative blood compared with O positive blood, there are situations when you may need to transfuse a patient with O positive blood to save the patient's life. It is common for emergency rooms to have protocols for use of O positive blood for all traumas or after O negative blood is no longer available.
            
            Also recall that massive transfusion protocol (MTP) is defined as transfusion of ≥10 units of whole blood (WB) or packed red blood cells (pRBCs) in 24 hours, ≥3 units of pRBCs in one hour, or ≥4 blood components in 30 minutes AND that when MTP is expected a 1:1:1 ratio of pRBCs:Plasma:Platelets should be administered.
            """,
            citation: """
            https://www.mayoclinic.org/medical-professionals/trauma/news/balancing-transfusion-needs-of-safety-and-immediacy-for-patients-with-traumatic-injury/mac-20549622#:~:text=Thus%2C%20emergency%20services%20at%20medical,of%20the%20fetus%20and%20newborn.
            https://www.uptodate.com/contents/massive-blood-transfusion?search=massive%20transfusion%20protocol&sectionRank=3&usage_type=default&anchor=H15&source=machineLearning&selectedTitle=1%7E116&display_rank=1#H15
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Trauma"
        ),
        
        Question(
            id:165,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 22-month-old boy born at term presents with reportedly fluorescent yellow vomiting for one day. On exam he appears to be in pain and he has a distended abdomen. The child grimaces when palpating his abdomen.
            
            An upper GI series X-Ray is shown below.
            
            What is your next step?
            """,
            imageMiddle: "Volvulus",
            options: [
                "Emergent gastroenterologist consultation.",
                "Administer stool softeners and an enema.",
                "Administer IV pain medications.",
                "Emergent surgical consultation."
            ],
            correctOptionIndex: 3,
            imageBelow: "Volvulus",
            explanation: """
            All patients with intestinal malrotation and volvulus on imaging or suspected based upon history and exam should proceed directly to emergency laparotomy.
            
            Approximately one-third of children with malrotation present before one month of age with the life-threatening complication of volvulus. Additionally, while intestinal malrotation has been considered primarily a disease of infancy, a national hospital discharge database with nearly three-thousand patients found that 58% present before one year of age and 75% before five years of age.
            
            The diagnostic approach to malrotation with volvulus is first determining stability.
            
            If the patient has signs of peritonitis (pain with abdominal distension and rigidity, hematemesis, hematochezia, or poor perfusion), the patient should be rapidly resuscitated and immediately taken to surgery for exploration. Further, as in this case, bilious vomiting in any infant <1 year old is a surgical emergency until malrotation is ruled out.
            
            If a patient with suspected malrotation is hemodynamically stable and without clear signs of intestinal compromise, imaging should be obtained. Ultrasound may be used by many institutions; however, a normal US does not rule out malrotation. One potential finding on US would be the "whirlpool" sign of volvulus due to vessels twisting around the base of the mesenteric pedicle.
            
            An upper GI series of X-rays is the gold standard for diagnosing malrotation, and a corkscrew appearing duodenum will be seen as in the above image.
            """,
            citation: """
            Aboagye J, Goldstein SD, Salazar JH, et al. Age at presentation of common pediatric surgical conditions: Reexamining dogma. J Pediatr Surg 2014; 49:995.
            https://wjes.biomedcentral.com/articles/10.1186/1749-7922-8-19
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        
        Question(
            id:166,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 6-month-old presents with three days of vomiting. Over the past day the vomitus has become bright green.
            
            What is the gold standard to make the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "KUB.",
                "Abdominal ultrasound.",
                "Barium enema.",
                "Upper GI series."
            ],
            correctOptionIndex: 3,
            imageBelow: "Volvulus",
            explanation: """
            Bilious vomiting in any infant <1 year old is a surgical emergency warranting surgical consultation and, if the patient is sufficiently stable, an upper GI series to evaluate for malrotation.
            
            The sensitivity of an upper GI series in infants with signs of malrotation is approximately 96 percent. This X-ray series will show either a corkscrew appearing duodenum (as below), a clearly misplaced duodenum on the right side of the abdomen, or duodenal obstruction, which appears as a dilated stomach and proximal duodenum.
            
            While an ultrasound can be used to diagnose malrotation (ie whirlpool sign), it does not exclude malrotation. A barium enema should not be used for the diagnosis of malrotation.
            """,
            citation: """
            Sizemore AW, Rabbani KZ, Ladd A, Applegate KE. Diagnostic performance of the upper gastrointestinal series in the evaluation of children with clinically suspected malrotation. Pediatr Radiol 2008; 38:518.
            Binu V, Nicholson C, Cundy T, et al. Ultrasound imaging as the first line of investigation to diagnose intestinal malrotation in children: Safety and efficacy. J Pediatr Surg 2021; 56:2224.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        Question(
            id:167,
            videoAbove: nil,
            imageAbove: "targetSign",
            text: """
            A 16-month-old girl born at term and without PMH presents with three days of non-bilious emesis, blood stool, and abdominal pain. On exam, you palpate a sausage-shaped mass in the right mid-abdomen. Abdominal ultrasound shows a “bull’s eye,” as displayed above.
            
            What is the treatment?
            """,
            imageMiddle: nil,
            options: [
                "IV antibiotics.",
                "Emergent surgical consultation.",
                "Serial abdominal exams.",
                "Enema."
            ],
            correctOptionIndex: 3,
            imageBelow: "targetSign",
            explanation: """
            In intussusception (bowel invagination), for symptomatic and stable patients, nonoperative reduction with enema should be performed unless the patient has specific indications for surgery such as bowel perforation or a strong suspicion of intestinal lead point.
            
            The peak incidence of intussusception is between 4 and 36 months of age.
            
            Approximately 75 percent of cases of intussusception are considered idiopathic, although some of these episodes may be triggered by a viral infection. Twenty-five percent of cases are caused by an underlying disease that creates a lead point for the intussusception, most commonly a Meckel’s diverticulum.
            
            Abdominal ultrasound will typically show a “target sign” or “bull’s eye sign” (as below).
            """,
            citation: """
            https://commons.wikimedia.org/wiki/File:Ultrasound_of_target_sign_in_intussusception_of_the_right_bowel.png
            https://www.uptodate.com/contents/intussusception-in-children?search=intussusception&sectionRank=3&usage_type=default&anchor=H25&source=machineLearning&selectedTitle=1%7E123&display_rank=1#H2
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        
        Question(
            id:168,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A two-year-old female presents with vomiting for two days. On gathering a history, you discover that she has had a viral illness for ten days, and in the last two days, bloody diarrhea has developed.
            
            On exam, you palpate a small mass.
            
            You appropriately start your evaluation with an abdominal ultrasound. What would you expect to see?
            """,
            imageMiddle: nil,
            options: [
                "Double-bubble sign.",
                "Bird's beak.",
                "Whirlpool sign.",
                "Target sign."
            ],
            correctOptionIndex: 3,
            imageBelow: "targetSign",
            explanation: """
            Intussusception refers to telescoping of a part of the intestine into itself and is best diagnosed on ultrasound as a targetoid lesion representing layering of the intestines.
            
            A double bubble sign on X-Ray strongly suggests duodenal atresia.
            
            Bird’s beak appearance of the esophagus on barium swallow study is a sign of achalasia. Another bird’s beak sign describes the fluoroscopic (X-Ray) appearance in volvulus.
            
            The "whirlpool" sign of volvulus is a result of the superior mesenteric vein twisting around the superior mesenteric artery.
            
            The peak incidence of intussusception is between 4 and 36 months of age.
            
            Approximately 75 percent of cases of intussusception are considered idiopathic, although some of these episodes may be triggered by a viral infection. Twenty-five percent of cases are caused by an underlying disease that creates a lead point for the intussusception, most commonly a Meckel’s diverticulum.
            
            Treatment is generally with enema unless there are signs of perforation or there is high-suspicion for a lead-point etiology.
            """,
            citation: """
            https://commons.wikimedia.org/wiki/File:Ultrasound_of_target_sign_in_intussusception_of_the_right_bowel.png
            https://www.uptodate.com/contents/intussusception-in-children?search=intussusception&sectionRank=3&usage_type=default&anchor=H25&source=machineLearning&selectedTitle=1%7E123&display_rank=1#H2
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        
        Question(
            id:169,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A nine-year-old boy presents with one week of arthralgia and abdominal pain. On exam, you note palpable purpura. 
            
            What is the most likely diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Intussusception.",
                "Necrotizing enterocolitis.",
                "Meningitis.",
                "IgA vasculitis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Immunoglobulin A vasculitis (IgAV), formerly called Henoch-Schönlein purpura (HSP), is the most common systemic vasculitis in children. The exact cause of IgAV is unknown but thought to be immune-mediated.
            
            It most commonly occurs between the ages of 3 and 15.
            
            It is generally a self-limited condition typically with: purpura, arthralgias, abdominal pain, and kidney disease. Most of the kidney involvement develops within two months of onset of the disease.
            
            In patients with uncertain diagnosis, a skin biopsy may be obtained. Urinalysis should be performed in all patients. Imaging may be considered on a case-by-case basis mostly to evaluate for the associated risk of intussusception.
            
            Treatment should be directed at oral hydration and pain relief. In patients with severe abdominal pain, systemic steroids such as prednisone can be initiated.
            
            Only less than one percent develop long-term complications, primarily kidney disease.
            """,
            citation: """
            https://www.uptodate.com/contents/iga-vasculitis-henoch-schonlein-purpura-clinical-manifestations-and-diagnosis?search=IgA%20vasculitis&sectionRank=3&usage_type=default&anchor=H26&source=machineLearning&selectedTitle=1%7E113&display_rank=1#H26
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        Question(
            id:170,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 24M with a medical history only notable for recent treatment of pharyngitis with amoxicillin presents to the emergency department with a rash. On exam, you note posterior chain lymphadenopathy and a generalized maculopapular rash.
            
            What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Allergic reaction.",
                "Viral exanthem.",
                "Measles.",
                "Infectious mononucleosis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Infectious mononucleosis (IM), caused by Epstein-Barr virus (EBV) infection, will often present after treatment with either amoxicillin or ampicillin.
            
            Diagnosis is obtained with either EBV-specific antibody testing, or if a more rapid result is desired, with the “Monospot” (heterophile antibody testing).
            
            If EBV antibody testing is negative, consideration should be given to other diagnoses, most importantly HIV, although CMV and toxoplasmosis are also on the differential.
            
            Treatment is supportive except in patients with severe airway involvement, for which steroids should be administered and an emergent consultation placed with an otolaryngologist.
            
            Especially important for instructing athletes with potential mono, sports should cease for a minimum of four weeks from symptom onset.
            """,
            citation: """
            https://www.uptodate.com/contents/infectious-mononucleosis?search=mono&sectionRank=2&usage_type=default&anchor=H45&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H1
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"
        ),
        
        Question(
            id:171,
            videoAbove: nil,
            imageAbove: "MobitzII",
            text: """
            A 49M with PMH of hypertension who was recently started on a beta blocker presents with two weeks of worsening fatigue and a few discrete episodes of lightheadedness on exertion.
            
            His ECG is shown above.
            
            What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "First degree AV block.",
                "Wenckebach.",
                "Third degree AV block.",
                "Mobitz II."
            ],
            correctOptionIndex: 3,
            imageBelow: "HeartBlocks",
            explanation: """
            In Mobitz type II second-degree AV block, the PR interval remains unchanged prior to dropped P waves.
            
            There are a number of causes of a Mobitz II block, including ischemic heart disease, cardiomyopathy of infectious and other types, fibrosis, increased vagal tone, hyperkalemia, thyroid disease, neuromuscular disease, and cardiac medication such as beta blockers, calcium channel blockers, digoxin and antiarrhythmics.
            
            Management of the unstable patient includes administration of beta adrenergic drugs such as dopamine, dobutamine, and epinephrine as well as cardiac pacing. Transcutaneous pacing should be used as a bridge to transvenous pacing. Stable patients should have transcutaneous pads placed while being monitored given the propensity for this diagnosis to progress to third degree block.
            
            Notably, atropine is generally avoided in patients with Mobitz type II second-degree block as it may worsen infranodal block. Vagal maneuvers may temporarily improve Mobitz II blocks.
            
            A review of heart block types:
            """,
            citation: """
            https://www.uptodate.com/contents/second-degree-atrioventricular-block-mobitz-type-ii?search=mobitz%202&sectionRank=3&usage_type=default&anchor=H2169553&source=machineLearning&selectedTitle=1%7E49&display_rank=1#H2169553
            https://commons.wikimedia.org/wiki/File:Heart_block.png
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        Question(
            id:172,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 71M with Non-Hodgkin lymphoma recently started on chemotherapy presents to your department with vomiting and severe diffuse weakness. Laboratory studies are notable for severe hyperkalemia, hyperphosphatemia, and hypocalcemia.
            
            What is the most likely diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Viral syndrome.",
                "Cholecystitis.",
                "Pancreatitis.",
                "Tumor lysis syndrome."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Tumor lysis syndrome (TLS) is an oncologic emergency caused by massive tumor cell lysis after the initiation of cytotoxic chemotherapy.
            
            High levels of potassium, phosphate, and uric acid are key indicators of the syndrome. Severe kidney injury is another common feature.
            
            Treatment includes aggressive IV fluids, a loop diuretic, rasburicase (a hypouricemic agent), phosphate binders, and standard hyperkalemia treatment (calcium, saline boluses, insulin, and dextrose, etc.).
            
            Measurement of serum levels of uric acid, phosphate, potassium, creatinine, calcium, and lactate dehydrogenase (LDH) should be assessed frequently (i.e., every four hours).
            
            Hemodialysis should be considered in anuric patients, those with refractory hyperkalemia, symptomatic hypocalcemia, and a calcium-phosphate product ≥70 mg2/dL2.
            """,
            citation: """
            https://www.uptodate.com/contents/tumor-lysis-syndrome-prevention-and-treatment?search=tumor%20lysis%20syndrome&sectionRank=3&usage_type=default&anchor=H21712129&source=machineLearning&selectedTitle=1%7E108&display_rank=1#H21712129
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Hematology/Oncology"
        ),
        Question(
            id:173,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 55M with little healthcare utilization presents to your department with thirty pounds of weight loss over the past two months as well as severe fatigue, blurry vision, headache, and hearing loss.
            
            His laboratory studies are most notable for a WBC of 120,000/mm3.
            
            What is the most appropriate treatment?
            """,
            imageMiddle: nil,
            options: [
                "Normal saline.",
                "Blood transfusion.",
                "Loop diuretic.",
                "Plasmapheresis."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Hyperviscosity syndrome occurs from severely elevated cellular or protein fractions of the blood, such as in polycythemias, multiple myeloma, leukemia, and monoclonal gammopathies such as Waldenström macroglobulinemia.
            
            Symptoms of high blood viscosity include blurry vision due to retinopathy, headache, and neurologic symptoms ranging from headache and vertigo to lethargy, seizures, and coma.
            
            Diagnosis is supported by measuring blood viscosity. Normal plasma viscosity is between 1.4 and 1.8 centipoise, while symptoms from hyperviscosity typically occur greater than 4 centipoise.
            
            Patients presenting with severe neurologic impairment should be treated with plasmapheresis on an emergency basis. Plasmapheresis is repeated on a daily basis until symptoms subside or until viscosity normalizes.
            
            Transfusion with packed red blood cells may further increase blood viscosity.
            """,
            citation: """
            https://www.uptodate.com/contents/treatment-and-prognosis-of-waldenstrom-macroglobulinemia?sectionName=Emergency%20management%20of%20hyperviscosity&search=hyperviscosity%20syndrome&topicRef=6657&anchor=H7&source=see_link#H7
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Hematology/Oncology"
        ),
        
        Question(
            id:174,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 12-year-old male presents with facial pain after falling on his bicycle. Given significant tenderness around his left infraorbital rim on exam, you order a maxillofacial CT, which shows an inferior orbital blowout fracture.
            
            What is one way to test for ocular muscle entrapment?
            """,
            imageMiddle: nil,
            options: [
                "Check the pupillary reflex.",
                "Evaluate for enophthalmos.",
                "Check for nystagmus.",
                "Oculocardiac reflex testing."
            ],
            correctOptionIndex: 3,
            imageBelow: "blowoutFracture",
            explanation: """
            The oculocardiac reflex should be assessed as a sign of ocular muscle entrapment in the setting of orbital blowout fractures (sample CT shown below), and it is notably pronounced in pediatric patients compared to adults.
            
            The importance of looking for signs of ocular muscle entrapment is that this pathology warrants emergent surgical consultation (either oral maxillofacial surgery/OMFS, plastic surgery, or otolaryngology/ENT; whomever is covering facial trauma at your center).
            
            One way to test the oculocardiac reflex is to have the patient look upwards for about one minute while connected to a cardiac monitor. If the heart rate drops by at least 10 beats per minute, the test is positive, indicating that entrapment is triggering a significant vagal reflex. The resulting bradycardia can sometimes be profound. The reflex can be tested even with the eyes closed when there is substantial edema secondary to trauma.
            
            Other signs of ocular muscle entrapment include limitation of upward gaze, causing diplopia (look for complete burying of the sclera), as well as severe nausea with upward gaze.
            
            Enophthalmos (posterior eye displacement, or sunken-appearing eye) is a sign of orbital blowout fracture but not necessarily of entrapment.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC10035761/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Head, Ear, Eye, Nose & Throat Disorders"
        ),
        
        Question(
            id:175,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 21-year-old male rugby player with a two-week-old history of radial fracture requiring open reduction with internal fixation (ORIF) presents with chest pain and shortness of breath. His HPI is notable for six days of fevers, sore throat, and cough. He was seen three days ago for his URI symptoms and treated with an albuterol inhaler.
            
            Today his heart rate is 120, and he reports new dyspnea. Lung sounds are clear. What test should be ordered?
            """,
            imageMiddle: nil,
            options: [
                "Troponin.",
                "pro-BNP.",
                "Thoracic ultrasound.",
                "D-dimer."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Consider pulmonary embolism (PE) in all post-surgical patients presenting to the emergency department with any chest symptoms such as pain or dyspnea.
            
            While a D-dimer may be falsely elevated post-operatively, this highly sensitive screening tool is immensely helpful to not miss the diagnosis of PE. Malpractice cases have been filed against physicians for failing to evaluate for PE in the setting of a viral illness.
            """,
            citation: """
            https://journals.lww.com/em-news/fulltext/2024/03121/another_missed_pe,_another_death_too_soon.1.aspx
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pulmonology"
        ),
        Question(
            id:176,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is an atypical feature of a myocardial infarction (MI) presentation in a heart transplant patient?
            """,
            imageMiddle: nil,
            options: [
                "Presence of cough.",
                "Paradoxical breathing.",
                "Cyanosis.",
                "Absence of chest pain."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            A transplanted heart lacks innervation (the vagus and other nerve fibers are ligated) and thus ischemic heart disease will often present without chest pain. Instead, they will present with vague symptoms such as fatigue and generalized weakness.
            
            Additionally, because the main part of the remaining native heart includes the right atrium, their ECG will often have two P waves. Due to the lack of vagal tone, the transplanted patient heart rate will run mildly tachycardic at baseline as well.
            
            Finally, bradycardia in heart transplant patients will not be responsive to atropine due to the absence of vagal tone.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC8311041/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Cardiology"
        ),
        
        Question(
            id:177,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 55-year-old heart transplant patient presents with nausea and vomiting for three days.
            
            Laboratory evaluation is most notable for a creatinine of 3.2.
            
            Which of the following medications is most likely contributing to this patient’s acute kidney injury?
            """,
            imageMiddle: nil,
            options: [
                "Mycophenolate.",
                "Prednisone.",
                "Oxycodone.",
                "Cyclosporine."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Immunosuppressive medications prescribed to transplant patients that commonly cause kidney injury and electrolyte disturbances include cyclosporine and tacrolimus.
            
            Cyclosporine, which was first isolated in 1970 from fungi found in Norwegian soil, is a calcineurin inhibitor that blocks T-cell activation. Cyclosporine can also cause post-transplant hypertension.
            
            Mycophenolate (sold as CellCept or Myfortic) is a DNA inhibitor that causes pancytopenia and hyperlipidemia.
            
            Corticosteroids, which quiet T cells also through transcription mechanisms, increase risk of osteoporosis, hyperglycemia and GI bleeding.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC7152453/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Endocrine, Metabolic and & Nutritional Disorders"
        ),
        
        Question(
            id:178,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is a typical side effect of mycophenolate?
            """,
            imageMiddle: nil,
            options: [
                "Osteoporosis.",
                "Electrolyte abnormalities.",
                "GI bleeding.",
                "Pancytopenia."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Mycophenolate (sold as CellCept or Myfortic), a DNA inhibitor used commonly for transplant patient immunosuppression causes pancytopenia and hyperlipidemia.
            
            Immunosuppressive medications that commonly cause kidney injury and electrolyte disturbances include cyclosporine and tacrolimus.
            
            Cyclosporine (a calcineurin inhibitor that blocks T-cell activation) can also cause post-transplant hypertension.
            
            Corticosteroids, which quiet T cells also through transcription mechanisms, increase risk of osteoporosis, hyperglycemia and GI bleeding.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC7152453/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Hematology/Oncology"
        ),
        Question(
            id:179,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 24M with no PMH presents in police custody after a combative arrest took place where the patient hit his head. On exam he is alert and oriented x 4 and can clearly explain his reasoning for refusing the CT Scan of his head, which you initially recommend.
            
            The police are requesting you perform the CT Scan to expedite his medical clearance.
            
            What is your next step?
            """,
            imageMiddle: nil,
            options: [
                "Administer IM medications against his will in order to obtain a CT Scan.",
                "Call the patient’s family to convince the patient to receive treatment.",
                "Discharge the patient with medical clearance.",
                "Accept the patient’s right to refuse treatment."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            While you cannot medically clear the patient without a CT Scan of his head if you deem neuroimaging necessary, patients who are in custody have the right to refuse any treatments and procedures such as imaging, blood draws, cavity searches, and basic physical examinations.
            
            The American College of Emergency Physicians releases policy statements addressing law-enforcement information gathering. Emergency physicians may provide requested health information to law enforcement if the patient consents to release.
            
            Exceptions to this rule would be legally mandated reporting or if a subpoena or court order for protected health information is presented.
            """,
            citation: """
            https://www.acep.org/state-advocacy/state-advocacy-overview/law-enforcement-toolkit#:~:text=EPs%20are%20not%20legally%20required,a%20patient%20who%20is%20incarcerated.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Legal & Healthcare Regulation"
        ),
        
        Question(
            id:180,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 5-year-old boy presents to your department with a seizure. The parents report one day of febrile illness with rhinorrhea and cough. On the day of presentation his right arm was convulsing for ten minutes. This was the only event and by the time they presented the convulsions stopped.
            
            Which feature of the history makes this a complex febrile seizure?
            """,
            imageMiddle: nil,
            options: [
                "Duration.",
                "Frequency.",
                "URI symptoms.",
                "Focality."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Complex febrile seizures are characterized by episodes that last more than 15 minutes, have focal components, occur more than once in 24 hours, or have a postictal paresis (Todd’s paralysis).
            
            The significance of complex seizures is that they should trigger consideration of additional work-up such as laboratory studies, lumbar puncture, neuroimaging, and EEG.
            
            About 20% of febrile seizures present as complex seizures. Children with complex febrile seizures are more likely to have abnormal development.
            
            Note that most febrile seizures present on day one of febrile illness. If the seizure presents on subsequent days, special consideration should be made to the possibility of a CNS infection (requiring an LP).
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC8793886/#:~:text=Complex%20febrile%20seizures%20present%20with,complex%20(2%2C%206).
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        
        Question(
            id:181,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following features of a pediatric patient should trigger consideration of lumbar puncture for febrile seizure?
            """,
            imageMiddle: nil,
            options: [
                "Seizure lasting 8 minutes.",
                "Temperature of 103F.",
                "Family history of epilepsy.",
                "Current antibiotic use."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Lumbar puncture (LP) should be performed in febrile seizure patients if meningeal signs are present or other clinical features suggest meningitis, or if antibiotics are being prescribed, as they can mask meningeal signs.
            
            LP should also be considered in infants between 6 and 12 months if immunization status is not up to date or undetermined, particularly because of the risk of Hib or Streptococcus pneumonia meningitis.
            
            A seizure lasting less than 15 minutes is considered a feature of a simple febrile seizure.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC8793886/#:~:text=Complex%20febrile%20seizures%20present%20with,complex%20(2%2C%206).
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        Question(
            id:182,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 5-year-old child with blunt head and neck trauma should have which rules applied to determine need for cervical spine imaging?
            """,
            imageMiddle: nil,
            options: [
                "NEXUS",
                "Canadian C-spine",
                "Ottawa Rules",
                "PECARN"
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            The PECARN prediction rule for cervical spine injury comes from a study including more than 22,000 children with ages 0-17.
            
            The rule has a sensitivity of 94.3% and a negative predictive value of 99.9%. It is especially valuable in children under ten as history gathering can be very limited.
            
            Components of the rule include low GCS (3-8), unresponsiveness, neurologic deficit, and abnormal breathing or circulation.
            
            NEXUS and Canadian rules have not been validated in patients under 16.
            
            Also note the importance of maintaining vigilance to pick up on potential cases of SCIWORA (spinal cord injury without radiographic abnormality) despite normal CT imaging. If you suspect a spinal cord injury, especially in cases of an altered patient or one who has focal neuro deficits, obtain an MRI of the spine.
            """,
            citation: """
            https://pecarn.org/pecarn_news/clinical-decision-rule-cervical-spine/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Pediatrics"
        ),
        
        Question(
            id:183,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is a validated and non-invasive mode of achieving hemostasis in post-tonsillectomy hemorrhage?
            """,
            imageMiddle: nil,
            options: [
                "TXA pledgets.",
                "Nebulized lidocaine.",
                "Afrin nasal spray.",
                "Nebulized tranexamic acid (TXA)."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Nebulized tranexamic acid (TXA) is an effective manner to avoid the need for general anesthesia and surgery to correct post-tonsillectomy hemorrhage.
            
            A typical adult dose is 500 mg of TXA in 5 mL of normal saline.
            
            For children under 25 kg, a TXA dose of 250 mg is recommended.
            
            TXA-soaked gauze and Afrin nasal spray are both used to control anterior epistaxis.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC8373187/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Head, Ear, Eyes, Nose & Throat Disorders"
        ),
        Question(
            id:184,
            videoAbove: nil,
            imageAbove: "SJS",
            text: """
            A 42M with PMH of insulin-dependent diabetes mellitus and recent treatment for cellulitis presents with several days of fever, three days of rash including a targetoid lesion and most recently 24-hours of skin blistering. His orolabial findings are shown above.
            
            What is the diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Necrotizing soft tissue infection (NSTI).",
                "Lyme disease.",
                "Viral exanthem.",
                "Stevens-Johnson syndrome (SJS)."
            ],
            correctOptionIndex: 3,
            imageBelow: "SJSHisto",
            explanation: """
            Stevens-Johnson syndrome (SЈS) and toxic epidermal necrolysis (ТЕΝ) are on a spectrum of severe mucocutaneous reactions including desquamation seen above, most often due to medications such as sulfa drugs (as in this case, the patient was likely on Bactrim/Trimethoprim-Sulfamethoxazole).
            
            SЈS is the term applied when <10 percent of body surface area is involved, and TEN when more than 30 percent is involved. In between is called SJS/TEN overlap.
            
            Меԁiϲаtiоոѕ are the leading cause of SJЅ/ΤЕN, including allopurinol, lamotrigine, aromatic аոtiϲοոvսlѕants, antibacterial ѕսlfοոamidеѕ, and cyclooxygenase-2 (COX-2) inhibiting nonsteroidal anti-inflammatory drսgs (ΝЅAΙDѕ).
            
            SJS typically starts with a few days of fever or malaise (prodromal phase) followed by a cutaneous eruption beginning on the face and thorax. The rash can mimic viral exanthems, typically developing as erythematous mасulеs. Uniquely, you may see atypical target-appearing lesions (two coalesced targets or rings) and eventually vesicles and bull that will slough if gentle lateral pressure is applied (positive Nikolsky sign).
            
            Mucosal involvement occurs in approximately 90 percent of cases of ЅЈЅ/ΤEN and can precede or follow skin manifestations. Oral cavity involvement is the most common at 90 percent of patients, followed by nasal (50 percent), ear (50 percent), and laryngeal involvement (30 percent).
            
            Also note that genital involvement is seen in up to 70 percent of cases.
            
            The pathophysiology of SJS is a type IV hypersensitivity reaction in which a drug or its metabolite stimulates cytotoxic T cells, leading to full thickness epidermal necrosis and complete detachment of the epidermis from dermis (seen below).
            
            Management includes stopping the offending agent, wound care, superimposed infection management, tetanus prophylaxis, pain control, treatment of fluid losses and electrolyte imbalances.
            
            For cases of SJS/TEN, oral cyclosporine at the dose of 3 to 5 mg/kg/day should be given as early in the course of disease as possible, ideally within 72 hours.
            
            For severe cases, including those requiring treatment of hypovolemic shock and patients with multi-organ failure, transfer should be initiated to a center with a burn unit or dermatologic specialty care.
            
            The overall mortality rate is approximately 25 percent.
            """,
            citation: """
            https://commons.wikimedia.org/wiki/File:Mucosal_desquamation_in_a_person_with_Stevens%E2%80%93Johnson_syndrome.jpg
            
            https://www.uptodate.com/contents/stevens-johnson-syndrome-and-toxic-epidermal-necrolysis-pathogenesis-clinical-manifestations-and-diagnosis?search=sjs&sectionRank=3&usage_type=default&anchor=H177928752&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H177928752
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Dermatology"
        ),
        
        Question(
            id:185,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            An 8-year-old boy with a history of mouth sores presents with several days of an erythematous digit.
            
            His finger is shown below. What is the best treatment choice?
            """,
            imageMiddle: "Whitlow",
            options: [
                "Antibiotics.",
                "Betadine soaks.",
                "Incision and drainage.",
                "Antivirals."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            HЅV infection of the finger (known as herpetic whitlow) can occur by auto-inoculation from oral lesions, and recurrent infections should be treated with antivirals.
            
            If a first-time infection is left untreated it will tend to heal over several weeks, but similar to oral ΗЅV-1 infection, they can recur.
            
            Herpetic whitlow can also be an occupational hazard among dental workers who are exposed to infected oral secretions.
            
            Herpetic whitlow is often misdiagnosed as a bacterial infection and antibiotics and drainage are not necessary.
            """,
            citation: """
            https://commons.wikimedia.org/wiki/File:Herpetic_whitlow_in_young_child.jpg
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Dermatology"
        ),
        Question(
            id:186,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 39F presents to your department in active labor. Your charge nurse informs you that she is crowning.
            
            As the baby is delivering you note that one of the shoulders is caught.
            
            What maneuver should you perform?
            """,
            imageMiddle: nil,
            options: [
                "Trendelenberg.",
                "Reverse trendelenberg.",
                "Zavanelli maneuver.",
                "McRoberts maneuver."
            ],
            correctOptionIndex: 3,
            imageBelow: "McRoberts",
            explanation: """
            McRoberts maneuver is a technique that should first be attempted if delivery is complicated by shoulder dystocia, or failure of the shoulders to spontaneously traverse the pelvis after the fetal head. Shoulder dystocia occurs between 0.2 to 3 percent of births.
            
            The McRoberts maneuver requires two assistants, each of whom grasps a maternal leg and flexes it at the thigh back against the abdomen.
            
            During a McRoberts maneuver an assistant should also apply suprapubic pressure with the palm or fist, directing the pressure on the anterior shoulder both downward and laterally (as below).
            
            Suprapubic pressure is supposed to put the shoulders in an oblique plane, since the oblique diameter is the widest diameter of the pelvis.
            
            Trendelenberg can be an initial step to help reduce a prolapsed umbilical cord.
            
            The Zavanelli maneuver is pushing back the delivered fetal head into the birth canal in anticipation of performing a cesarean section in cases of shoulder dystocia.
            """,
            citation: """
            https://commons.wikimedia.org/wiki/File:McRoberts_maneuver.svg
            
            https://www.uptodate.com/contents/shoulder-dystocia-intrapartum-diagnosis-management-and-outcome?search=mcroberts%20maneuver&sectionRank=2&usage_type=default&anchor=H20&source=machineLearning&selectedTitle=1%7E3&display_rank=1#H7
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Obstetrics and Gynecology"
        ),
        
        Question(
            id:187,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 39F with no PMH presents with one week of heavy menstrual bleeding, moderate severity cramping and pressure. She denies weight loss, fevers, and chills. She has no family history of cancer.
            
            A transvaginal ultrasound shows an enlarged uterus with several masses.
            
            What is the most likely diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Sarcoma.",
                "Ectopic pregnancy.",
                "Hematometra.",
                "Fibroid uterus."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Pelvic ultrаѕoսոԁ is the first-line diagnostic tool to diagnose uterine fibroids (leiomyomas). Transvaginal սltrаѕоսոd sensitivity is between 95 and 100 percent.
            
            Precise localization of fibroids is limited in large uteri or when there are many masses. Fibroids are seen on սltrаѕοuոd usually as hypoechoic, well-circumscribed round masses.
            
            Adenomyomas and sarcomas can be difficult to differentiate from leiomyomas on ultrasound, however this patient is far more likely to have fibroids.
            
            Hematometra is blood within the uterine cavity that usually is seen after uterine instrumentation.
            """,
            citation: """
            https://www.uptodate.com/contents/uterine-fibroids-leiomyomas-epidemiology-clinical-features-diagnosis-and-natural-history?search=fibroids%20diagnosis&sectionRank=1&usage_type=default&anchor=H11&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H5287537
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Obstetrics and Gynecology"
        ),
        
        Question(
            id:188,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 19F with PMH of Chlamydia cervicitis and numerous sexual partners presents with fever and bilateral lower quadrant pelvic pain. She also reports vaginal discharge.
            
            On pelvic exam you palpate an ovarian mass.
            
            What is the most likely diagnosis?
            """,
            imageMiddle: nil,
            options: [
                "Fibroid.",
                "Ectopic pregnancy.",
                "Distended bladder.",
                "Tuboovarian abscess."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            A palpable adnexal mass on pelvic exam suggests a tubo-ovarian abscess complicating pelvic inflammatory disease (PID).
            
            PID is an infection of the upper genital tract, including the uterus, fallopian tubes, and ovaries, and can present with a wide breadth of clinical presentations.
            
            Pelvic organ tenderness on exam (ie cervical motion tenderness) is the defining characteristic of acute ΡΙD.
            
            The biggest risk factor for PID is multiple sexual partners.
            
            Tests that should be orders when PID is suspected: Pregnancy test, Nucleic acid amplification tests (NAATs) for C. trachomatis and Neisseria gonorrhoeae, HIV screening, serologic testing for syphilis and microscopy of vaginal discharge, if available.
            
            Treatment among premenopausal women who are hemodynamically stable with small abscesses (<7 cm) can be treated with antibiotics as opposed to surgery plus antibiotics.
            
            Zosyn plus doxycycline is one of several acceptable regimens.
            """,
            citation: """
            https://www.uptodate.com/contents/pelvic-inflammatory-disease-pid-diagnosis-and-management?search=PID&sectionRank=1&usage_type=default&anchor=H12&source=machineLearning&selectedTitle=1%7E150&display_rank=1
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Obstetrics and Gynecology"
        ),
        Question(
            id:189,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 24F who is 10 weeks pregnant by LMP presents with mild crampy abdominal pain without vaginal bleeding. She tells you of a prior emergency department work-up four weeks ago during which she had an ultrasound showing a single sac.
            
            An endovaginal ultrasound is shown below.
            
            What is the most likely diagnosis?
            """,
            imageMiddle: "Anembryonic",
            options: [
                "Ectopic.",
                "Fetal demise.",
                "Threatened miscarriage.",
                "Anembryonic pregnancy."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Anembryonic рrеgոаnϲy (previosuly called blighted ovum) refers to a nonviable рrеgոаnϲу with a gestational sac that does not contain either a yolk sac or embryo. In some cases an embryo may have been present on prior ultrasound but has since been resorbed.
            
            Anembyronic pregnancy should be highly suspected if either: There is no embryo seen on endovaginal scanning in a gestational sac with mean sac diameter ≥25 mm or no embryo is visualized on follow-up scan, or ≥11 days after scan showing gestational sac with yolk sac, but no embryo, or ≥2 weeks after a scan showing gestational sac without yolk sac or embryo.
            The ultrasound shown above is taken more than two weeks after initial ultrasound with a gestational sac, so the absence of yolk sac or embryo is supportive of this diagnosis.
            
            With fetal demise an embryo or fetus is visualized but cardiac activity is absent.
            
            Threatened miscarriage (aka threatened abortion) is essentially any bleeding in pregnancy without clear sign of pregnancy loss.
            
            """,
            citation: """
            https://commons.wikimedia.org/wiki/File:Anembryonic_gestation.jpg
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Obstetrics and Gynecology"
        ),
        
        Question(
            id:190,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 35F with no PMH presents with mild crampy abdominal pain and scant vaginal bleeding. Her blood pressure is 105/70. Her hCG is 12,545. A transvaginal ultrasound shows a likely tubal ectopic that is 3.5 cm.
            
            Which patient feature mentioned is a contraindication to methotrexate use for tubal ectopic?
            """,
            imageMiddle: nil,
            options: [
                "Ectopic size.",
                "Blood pressure.",
                "Symptoms.",
                "Quantitative hCG."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            For single-dose protocols for tubal ectopic pregnancy, intramuscular (IM) methotrexate (MTX) can be given so long as the quantitative hCG is less than 5,000 mIU/mL (and in some cases up to 10,000).
            
            The MTX dose is 50 mg/m2 (maximum dose 100 mg), after which an hCG level is checked on treatment days 4 and 7, and then weekly. The amount of follow-up required for this single-dose protocol means that only patients who have excellent follow-up should be considered candidates.
            
            Ectopic mass diameter <4 cm is also commonly used as a patient selection criterion for medication rather than surgery, however this has not been confirmed in the scientific literature.
            
            Other contraindications to medication treatment for tubal ectopic include: hemodynamic instability, rupture or suspicion of impending rupture (which can sometimes be seen as pelvic free fluid), and fetal cardiac activity.
            
            Severe pain, if present, should trigger consideration of ectopic rupture. However, severe pain alone in a hemodynamically stable patient is not an immediate indication for surgery.
            """,
            citation: """
            https://www.uptodate.com/contents/ectopic-pregnancy-methotrexate-therapy?search=methotrexate%20for%20ectopic%20pregnancy&sectionRank=3&usage_type=default&anchor=H25&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H25
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Obstetrics and Gynecology"
        ),
        
        Question(
            id:191,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following medications can cause fatal pulmonary embolism?
            """,
            imageMiddle: nil,
            options: [
                "Olanzipine.",
                "Haldol.",
                "Aripiprazole.",
                "Clozapine."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Clozapine, often used to treat psychosis and mania, has been associated with increased risk of venous thromboembolic events including fatal pulmonary embolism.
            
            Clozapine also causes myocarditis and cytopenias (such as severe neutropenia in approximately 1% of cases). For the risk of cytopenia, regular blood work is required.
            
            Clozapine’s mechanism of action is primarily through antagonism of the dopamine type 2 (D2) and serotonin type 2A (5-HT2A) receptors. It also has effects on alpha-adrenergic, H1 and cholinergic receptors.
            """,
            citation: """
            https://www.uptodate.com/contents/clozapine-drug-information?sectionName=Adult&topicId=9289&search=clozapine&usage_type=panel&anchor=F153957&source=panel_search_result&selectedTitle=1%7E97&showDrugLabel=true&kp_tab=drug_general&display_rank=1#F153915
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Psychiatry"
        ),
        Question(
            id:192,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            What is the leading cause of transfusion-related mortality in the United States?
            """,
            imageMiddle: nil,
            options: [
                "Transfusion-associated circulatory overload (TACO)",
                "Pneumonia.",
                "Undifferentiated sepsis.",
                "Transfusion-related acute lung injury (TRALI)."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Τrаոѕfսsiοո-related acute lung injury (ΤRΑLΙ), which is a clinically diagnosed post-transfusion complication of noncardiogenic pulmonary edema, causes the most transfusion-related deaths.
            
            Most cases occur with red blood cell transfusions. Hypoxemia that ensues within 6 hours of transfusion should increase suspicion for this diagnosis. Imaging showing infiltrate (within 24 hours) is also needed to make the diagnosis. Treatment is supportive.
            
            Transfusion-associated circulatory overload (TACO) should be suspected when the patient is hypertensive and volume overloaded post-transfusion. Treatment of TACO is with diuretics, and thus it is important to be able to distinguish this process from TRALI (not responsive to diuretics).
            """,
            citation: """
            https://www.uptodate.com/contents/transfusion-related-acute-lung-injury-trali?search=transfusion%20associated%20lung%20injury&sectionRank=2&usage_type=default&anchor=H16&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H16
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Hematology/Oncology"
        ),
        Question(
            id:193,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 53M is brought to your emergency department by the fire department after a house fire. The patient is moderately confused with normal oxygen saturation. His laboratory studies are notable for a bicarbonate of 5 and an anion gap of 34.
            
            What treatment should you administer?
            """,
            imageMiddle: nil,
            options: [
                "Methylene blue.",
                "Thiamine.",
                "Benzodiazepine.",
                "Hydroxocobalamin."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Patients presenting from a house fire altered and with a severe anion gap metabolic acidosis should be suspected to have cyanide poisoning, and hydroxocobalamin should be administered.
            
            Most cases of cyanide poisoning are due to inhaling combusted materials from house fires (especially wool, silk, polyurethane, insulation and upholstery).
            
            Industrial and occupational exposure include metal extraction, mining, electroplating in jewelry, photography, plastics and rubber manufacturing, hair removal from hides, and pesticide and fumigants.
            
            As cyanide poisoning is toxic to mitochondria, inhibiting tissue oxygen utilization, the venous oxyhemoglobin concentration is high, resulting in a bright red appearance of blood. On physical examination, this may manifest as a "cherry-red" color to the skin.
            
            All symptoms generally depend on the dose and route of exposure but can range widely, including: cardiovascular collapse, seizures, headache, confusion, vertigo, hypertension, progressive bradycardia and hypotension, vomiting, abdominal pain, AKI, hepatic necrosis, and rhabdomyolysis.
            
            After inhaling hydrogen cyanide (HCN), the patient may also have an almond odor (present in 60 percent of cases).
            
            Laboratory findings include a severe metabolic acidosis with increased anion gap, lactate elevation, and narrowing of venous-arterial PO2 gradient (venous hyperemia as explained above),
            
            No definitive diagnostic test is readily available.
            
            The adult dose of hуԁrοхοϲоbаlamin is 5 g or 70 mg/kg IV.
            
            Methylene blue is the treatment for methemoglobinemia.
            """,
            citation: """
            https://www.uptodate.com/contents/cyanide-poisoning?search=cyanide&sectionRank=3&usage_type=default&anchor=H30&source=machineLearning&selectedTitle=1%7E64&display_rank=1#H30
            https://wwwn.cdc.gov/TSP/MMG/MMGDetails.aspx?mmgid=1141&toxid=249
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Toxicology"
        ),
        Question(
            id:194,
            imageAbove: "Bells",
            text: """
            A generally healthy 31-year-old male living in Maine presents to your emergency department noting he can’t close his right eyelid. His eye is starting to bother him, and he also reports some difficulty swallowing water.
            
            On examination, you observe weakness in the right lower quadrant of his face, with a flattened nasolabial fold on the right side compared to the left (shown above). The rest of his neurologic examination is normal.
            
            What treatment is indicated?
            """,
            options: [
                "Valacyclovir.",
                "Prednisone.",
                "Admit for IV antibiotics and a lumbar puncture.",
                "Prednisone, valacyclovir, and doxycycline."
            ],
            correctOptionIndex: 3,
            imageBelow: "Bells2",  // First image // Second image
            imageBelow2: "CDCLyme",
            explanation: """
            For patients with new-onset Bell's palsy, early steroid treatment (preferably within three days) is indicated, as it improves the likelihood of recovery, shortens the recovery time, and reduces synkinesis (involuntary movement). The recommended dose is prednisone 60 to 80 mg daily for one week.
            
            In regions with high Lyme disease incidence (such as the Northeast and mid-Atlantic regions from northeastern Virginia to Maine), empiric doxycycline should be added while awaiting Lyme serology results.
            
            For patients presenting with severe facial palsy (House-Brackmann grade IV or higher), oral antiviral therapy (valacyclovir 1000 mg three times daily for one week) is also recommended.
            
            All patients with Bell's palsy should be assessed for eye closure completeness. If there is incomplete closure, eye care measures, including artificial tears, eye protection, and ointment or careful taping of the eye during sleep, are essential to prevent corneal injury.
            """,
            citation: """
            de Almeida JR, Guyatt GH, Sud S, et al. Management of Bell palsy: clinical practice guideline. CMAJ 2014; 186:917.
            
            Gronseth GS, Paduga R, American Academy of Neurology. Evidence-based guideline update: steroids and antivirals for Bell palsy: report of the Guideline Development Subcommittee of the American Academy of Neurology. Neurology 2012; 79:2209.
            """,
            isSample: true,
            videoExplain: nil,
            video: nil,
            subject: "Infectious Disease"),
        Question(
            id:195,
            imageAbove: "Billing",  // Remember to provide the image name or path if you want to associate one with the question.
            text: "Since January 1, 2023, CPT Evaluation and Management Codes and Guidelines have changed, per the recommendations set by the American Medical Association. \n\nSince this date, which most impacts level of coding (and thus billing)?",
            imageMiddle: nil,
            options: [
                "History and Physical details.",
                "Medical decision making complexity.",
                "Medications ordered.",
                "Medical decision making complexity or time spent with patient."
            ],
            correctOptionIndex: 3,
            explanation: """
            To summarize the 42 page AMA CPT Evaluation and Management (E/M) Code and Guidelines Changes which began January 1, 2023, the two factors which most impact levels of E/M services are 1) the level of the medical decision making (MDM): straightforward, low, moderate, or high (complexities) and 2) total time for E/M services performed on the date of the encounter.
            
            MDM includes establishing diagnoses, assessing the status of a condition, and/or selecting a management option. MDM is further defined by three elements. The elements are:
            ■ The number and complexity of problem(s) that are addressed during the encounter.
            ■ The amount and/or complexity of data to be reviewed and analyzed. These data include medical records, prior studies, newly ordered laboratory tests and images, which were reviewed and analyzed for the encounter. This also includes information obtained and considered from interprofessional communications (consults, discussion with PCPs, etc..).
            ■ The risk of complications, morbidity or mortality given your patient’s clinical state.
            
            The take home points here are that when documenting in your MDM section of your note, it is imperative to describe the complexity of problems, complexity of data assessed and risk of complications, or decompensation.
            
            In one MDM example: To summarize, Mrs Smith is a 68 year-old-female with a past medical history of coronary artery disease status post PCI, HFrEF and valvular disease warranting TAVR as well as insulin-dependent DMT2 presenting with one day of rapidly progressive shortness of breath to the point she can only speak in one word sentences, found to be volume overloaded, cool to the touch and hypoxic to 75% on room air, requiring positive pressure ventilation to maintain an oxygen saturation of 94%. I have a high concern for cardiogenic versus septic shock. Her bedside examination as well as elevated pro-BNP and chest X-Ray findings are consistent with severe pulmonary edema. Accompanying lactic acidosis and leukocytosis to 20 cells/HPF also raise suspicion for underlying severe sepsis due to a pulmonary source. Patient’s associated severe acute kidney disease compounds the clinical picture and puts patient at high risk of further decompensation. Patient’s emergency department course was notable for drop in blood pressure with MAPs less than 65, warranting vasopressor support. Broad spectrum antibiotics were administered. Cardiology was consulted and requested the patient be placed on a Bumex drip. Patient will require extremely close monitoring in our intensive care unit given the very high risk of decompensation, as well as ongoing need for several titratable medications. Mrs Smith’s husband was updated regarding all results. I spent approximately 45 minutes at the bedside answering the family’s questions.
            """,
            citation: "https://www.ama-assn.org/system/files/2023-e-m-descriptors-guidelines.pdf",
            isSample: true,
            subject: "Billing and Coding"),
        Question(
            id:196,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/IVCVid.mp4"),
            imageAbove: nil,
            text: """
            A 68F presents with lightheadedness and is found to be hypotensive with a urinary tract infection. After your initial fluid bolus you assess her IVC, shown above.
            
            What therapy should be administered?
            """,
            imageMiddle: nil,
            options: [
                "Vasopressors.",
                "Antibiotics.",
                "Repositioning.",
                "Fluid bolus."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The ultrasound shows a collapsing IVC with respirations, suggesting the patient still needs IV fluids to determine if they are fluid responsive.
            
            >50% collapse during inspiration suggests hypovolemia and potential fluid responsiveness.
            """,
            citation: """
            https://pmc.ncbi.nlm.nih.gov/articles/PMC10053997/
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"),
        Question(
            id:197,
            videoAbove: URL(string: "https://medqvideos.s3.us-west-1.amazonaws.com/AoLongAxisDissectionVid.mp4"),
            imageAbove: nil,
            text: """
            A 77M with PMH of hypertension and DMT2 presents with two days of progressively worsening mid back pain. The patient's HR is 105 and BP 192/97.
            
            An abdominal ultrasound of the patient is shown above.
            
            What is an appropriate antihypertensive regimen?
            """,
            imageMiddle: nil,
            options: [
                "Hydralazine pushes.",
                "Enalaprilat pushes.",
                "Nitroglycerin infusion.",
                "Esmolol and nicardipine infusions."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            imageBelow2: nil,
            explanation: """
            The above ultrasound shows a type-B thoracic aortic dissection in a long axis view on ultrasound.
            
            Aortic dissection, a tear in the inner wall of the aorta (the intimal layer), will lead to blood flow between the layers of the aorta and create a true and false lumen. With type B aortic dissection, the intimal tear originates distal to the subclavian artery.
            
            In type B aortic dissection, decreasing the force of myocardial contraction with beta blockers (known as anti-impulse therapy) has been shown to slow aortic expansion and potentially rupture after dissection.
            
            A beta blocker with a vasodilator are typically used in combination with a goal HR <60 and SBP <120/80.
            
            Beta blockers that are acceptable first-line infusion options include esmolol (25 to 50 mcg/kg per minute) and labetalol (0.5 to 2 mg/minute).
            
            Nicardipine is typically started at an infusion dose of 5 mg/hour.
            """,
            citation: """
            Lombardi JV, Hughes GC, Appoo JJ, et al. Society for Vascular Surgery (SVS) and Society of Thoracic Surgeons (STS) reporting standards for type B aortic dissections. J Vasc Surg 2020; 71:723.
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Ultrasound"
        ),
        Question(
            id:198,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            Which of the following is a hallmark feature of psychosis?
            """,
            imageMiddle: nil,
            options: [
                "Agitation.",
                "Memory deficits.",
                "Personality disorders.",
                "Disorganized thinking."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Psychosis, or loss of contact with reality, is typically characterized by one of the following: dеlսѕiоns, hаllսϲiոatiоոs, and/or disorganized thinking.
            
            Psychosis may present with broad behavioral changes ranging from catatonia to severe agitation.
            
            Note that the risk of suicide is high early during the onset of the disease.
            
            Oral agents (if patients will accept them) that should be considered as first line are second-generation antipsychotics such as aripiprazole or risperidone.
            
            If agitation is a major component of the psychosis presentation, a sedating medication option should be considered instead: olanzipine (Zyprexa) or haloperidol (Haldol). Benzodiazepines can be added to these in severe cases. A sublingual formulation of dexmedetomidine is also available.
            
            For co-existing insomnia, quetiapine is often first-line.
            """,
            citation: """
            https://www.uptodate.com/contents/psychosis-in-adults-initial-management?search=psychosis%20treatment&sectionRank=3&usage_type=default&anchor=H492533672&source=machineLearning&selectedTitle=1%7E150&display_rank=1#H492533672
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Psychiatry"
        ),
        
        Question(
            id:199,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 49M with PMH of gout and osteoarthritis presents with two days of fever and one day of rash and oral symptoms (shown below).
            
            What medication is the likely cause?
            """,
            imageMiddle: "SJS",
            options: [
                "Haloperidol.",
                "Prednisone.",
                "Tylenol.",
                "Allopurinol."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Allopurinol is associated with Stevens-Johnson Syndrome/toxic epidermal necrolysis (SJS/TEN).
            
            Other associated drugs include:
            
            - Lamotrigine
            - Sulfamethoxazole
            - Carbamazepine
            - Phenytoin
            - Nevirapine
            - Sulfasalazine
            - Other sulfonamides
            - Oxicam NSAIDs (piroxicam, etc)
            - Phenobarbital
            - Etoricoxib
            
            SJS, TEN and SJS/TEN overlap are together considered febrile mucocutaneous drug reactions, with SJS being the least severe.
            
            SJS is a type IV hypersensitivity reaction in which a drug or its metabolite overly stimulates cytotoxic T cells and T-helper cells.
            
            SJS constitutes a dermatological emergency and treatment is similar to that for patients with burns. Patients with associated Mycoplasma infections (one potential cause of SJS) can be treated with a macrolide or doxycycline.
            """,
            citation: """
            https://commons.wikimedia.org/wiki/File:Hallmark_symptom_of_Steven_Johnson_Syndrome_presents_as_inflamed_peeling_skin_in_an_initial_allergic_reaction._.jpg
            https://en.wikipedia.org/wiki/Stevens%E2%80%93Johnson_syndrome
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Dermatology"
        ),
        
        Question(
            id:200,
            videoAbove: nil,
            imageAbove: nil,
            text: """
            A 24F with PMH of bipolar disorder and multiple psychiatric hospitalizations presents with complete inability to move her body. She appears to look at you and is breathing comfortably.
            
            What is the best treatment option?
            """,
            imageMiddle: nil,
            options: [
                "Haloperidol.",
                "Ketamine.",
                "Risperidone.",
                "Lorazepam."
            ],
            correctOptionIndex: 3,
            imageBelow: nil,
            explanation: """
            Benzodiazepines are first-line treatment for catatonia.
            
            Dopamine blocking drugs should be avoided, even if patients are psychotic and/or aggressive, as this may lead to neuroleptic malignant syndrome (NMS).
            
            Antipsychotics are contraindicated in malignant ϲаtаtοոia (one of three subtypes), which includes the constellation of fever, autonomic instability, delirium and rigidity.
            
            Retarded catatonia can vary from mutism to staring. Excited catatonia can range from irritability to agitation and frenzy.
            """,
            citation: """
            https://www.uptodate.com/contents/catatonia-treatment-and-prognosis?search=catatonia&sectionRank=3&usage_type=default&anchor=H2451081&source=machineLearning&selectedTitle=1%7E64&display_rank=1#H10661798
            """,
            isSample: false,
            videoExplain: nil,
            video: nil,
            subject: "Psychiatry"
        )
        
        
    ]
}
