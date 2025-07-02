import 'package:flutter/material.dart';
import '../models/career.dart';

class CareerState with ChangeNotifier {
  final List<Career> _careers = [
    Career(
      id: '1',
      title: 'Software Developer',
      description:
          'Design, develop, and maintain software applications across platforms. This career can be pursued through various undergraduate programs at both public and private universities in Uganda.',
      salaryRange: 'UGX 3,000,000 - UGX 10,000,000 per month',
      subjects: [
        'Mathematics',
        'Physics',
        'Computer Science',
      ],
      localImagePath: 'images/software-developer.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'Makerere University',
        'Kyambogo University',
        'Mbarara University of Science and Technology (MUST)',
        'Gulu University',
        'Busitema University',
        'Muni University',
        'Kabale University',
        'Lira University',
        'Soroti University',
        'Mountains of the Moon University',
        'Uganda Christian University (UCU)',
        'Ndejje University',
        'Kampala International University (KIU)',
        'ISBAT University',
      ],
      studyPeriod: '3-4 Years',
      weight:
          'Refer to the specific course requirements below, which vary by institution.',
      approximateTuition:
          'UGX 1,500,000 - UGX 6,000,000 per year (Varies significantly by institution and program)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Science in Computer Science (CSC)',
          'cutOffPoints': {
            '2024/2025': {'Male': 44.6, 'Female': 43.4},
            '2023/2024': {'Male': 46.8, 'Female': 45.7},
            '2022/2023': {'Male': 45.4, 'Female': 44.3},
          },
          'tuition': 'UGX 1,800,000 - UGX 4,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Mathematics, one best done of Physics, Economics, Chemistry, Geom. & Mech. Drawing, Geom. & Bld. Drawing, Biology.',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Information Technology and Computing (ITD)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,500,000 - UGX 3,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Maths and either Physics or Economics.',
        },
        'Mbarara University of Science and Technology (MUST)': {
          'course': 'Bachelor of Computer Science (BCS)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,600,000 - UGX 3,500,000/year (approximate)',
          'admissionRequirements':
              'Essential: Mathematics, one better done of all A’ level subjects.',
        },
        'Gulu University': {
          'course': 'Bachelor of Science in Computer Science (GCS)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,400,000 - UGX 3,000,000/year (approximate)',
          'admissionRequirements': 'Essential: Mathematics.',
        },
        'Busitema University': {
          'course': 'Bachelor of Science in Computer Science (SCS)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,300,000 - UGX 2,800,000/year (approximate)',
          'admissionRequirements': 'Essential: Maths and Physics.',
        },
        'Muni University': {
          'course': 'Bachelor of Information Technology (MIT)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,200,000 - UGX 2,500,000/year (approximate)',
          'admissionRequirements':
              'Essential: Mathematics or Physics or Economics, and next better done of specified subjects.',
        },
        'Kabale University': {
          'course': 'Bachelor of Computer Science (KCS)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,100,000 - UGX 2,400,000/year (approximate)',
          'admissionRequirements': 'Essential: Mathematics.',
        },
        'Lira University': {
          'course': 'Bachelor of Science in Computer Science (LSC)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,000,000 - UGX 2,200,000/year (approximate)',
          'admissionRequirements': 'Essential: Mathematics.',
        },
        'Soroti University': {
          'course':
              'Bachelor of Engineering in Electronics and Computer Engineering (ECS)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,700,000 - UGX 3,800,000/year (approximate)',
          'admissionRequirements': 'Essential: Mathematics and Physics.',
        },
        'Mountains of the Moon University': {
          'course': 'Bachelor of Science in Computer Science (MMC)',
          'cutOffPoints': null,
          'tuition': 'UGX 900,000 - UGX 2,000,000/year (approximate)',
          'admissionRequirements': 'Essential: Mathematics.',
        },
        'Uganda Christian University (UCU)': {
          'course': 'Bachelor of Science in Computer Science', // Or similar
          'cutOffPoints':
              null, // Private universities may have different selection criteria
          'tuition': 'UGX 2,500,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Generally, good passes in Mathematics and Physics are required. Check UCU specific requirements.',
        },
        'Ndejje University': {
          'course': 'Bachelor of Information Technology', // Or similar
          'cutOffPoints': null,
          'tuition': 'UGX 2,000,000 - UGX 4,500,000/year (approximate)',
          'admissionRequirements':
              'Generally, passes in Mathematics and a Science subject are required. Check Ndejje specific requirements.',
        },
        'Kampala International University (KIU)': {
          'course': 'Bachelor of Science in Computer Science', // Or similar
          'cutOffPoints': null,
          'tuition': 'UGX 1,800,000 - UGX 4,000,000/year (approximate)',
          'admissionRequirements':
              'Generally, passes in Mathematics are required. Check KIU specific requirements.',
        },
        'ISBAT University': {
          'course': 'Bachelor of Science in Software Engineering', // Or similar
          'cutOffPoints': null,
          'tuition': 'UGX 3,000,000 - UGX 6,000,000/year (approximate)',
          'admissionRequirements':
              'Check ISBAT University for their specific entry requirements, which may include Mathematics and related subjects.',
        },
      },
    ),
    Career(
      id: '2',
      title: 'Doctor (Bachelor of Medicine and Bachelor of Surgery)',
      description:
          'Diagnose and treat illnesses, injuries, and diseases in patients. This career is pursued through the Bachelor of Medicine and Bachelor of Surgery program at various public universities in Uganda.',
      salaryRange:
          'UGX 5,000,000 - UGX 20,000,000 per month (Varies significantly by specialization and location)',
      subjects: ['Biology', 'Chemistry', 'Physics', 'Mathematics'],
      localImagePath: 'images/doctor.jpeg',
      category: 'Healthcare & Medicine',
      institutions: [
        'Makerere University',
        'Mbarara University of Science and Technology (MUST)',
        'Gulu University',
        'Kyambogo University',
        'Busitema University',
        'Muni University',
        'Kabale University',
        'Lira University',
        'Soroti University',
        'Mountains of the Moon University',
      ],
      studyPeriod: '5 Years',
      weight:
          'Refer to the specific course requirements below, which vary by institution.',
      approximateTuition:
          'UGX 2,000,000 - UGX 5,000,000 per year (Varies significantly by institution and program details)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Medicine and Bachelor Surgery (MAM)',
          'cutOffPoints': {
            '2024/2025': {'Male': 39.8, 'Female': 43.9},
            '2023/2024': {'Male': 51.1, 'Female': 52.2},
            '2022/2023': {'Male': 49.7, 'Female': 46.2},
          },
          'tuition': 'UGX 2,000,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology, Chemistry. Relevant: Mathematics, Physics. Desirable: None specified. Check specific weighting factors.',
        },
        'Mbarara University of Science and Technology (MUST)': {
          'course': 'Bachelor of Medicine and Bachelor Surgery (MBM)',
          'cutOffPoints': null,
          'tuition': 'UGX 2,000,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology, Chemistry. Check specific requirements.',
        },
        'Gulu University': {
          'course': 'Bachelor of Medicine and Bachelor Surgery (GUM)',
          'cutOffPoints': null,
          'tuition': 'UGX 2,000,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology, Chemistry. Relevant: Mathematics, Physics. Check specific requirements.',
        },
        'Kyambogo University': {
          'course': 'Not specified, refer to other universities',
          'cutOffPoints': null,
          'tuition': 'Check university website',
          'admissionRequirements':
              'Check university website for related programs',
        },
        'Busitema University': {
          'course': 'Bachelor of Medicine and Bachelor Surgery',
          'cutOffPoints': null,
          'tuition': 'UGX 2,000,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology, Chemistry. Check specific requirements.',
        },
        'Muni University': {
          'course': 'Not specified',
          'cutOffPoints': null,
          'tuition': 'Check university website',
          'admissionRequirements': 'Check university website',
        },
        'Kabale University': {
          'course': 'Not specified',
          'cutOffPoints': null,
          'tuition': 'Check university website',
          'admissionRequirements': 'Check university website',
        },
        'Lira University': {
          'course': 'Not specified',
          'cutOffPoints': null,
          'tuition': 'Check university website',
          'admissionRequirements': 'Check university website',
        },
        'Soroti University': {
          'course': 'Not specified',
          'cutOffPoints': null,
          'tuition': 'Check university website',
          'admissionRequirements': 'Check university website',
        },
        'Mountains of the Moon University': {
          'course': 'Bachelor of Nursing Science (MMN)',
          'cutOffPoints': null,
          'tuition': 'Check university website',
          'admissionRequirements': 'Check university requirements',
        },
      },
    ),
    Career(
      id: '3',
      title: 'Civil Engineer',
      description:
          'Plan, design, and oversee construction of public infrastructure projects. This career is accessible through various engineering programs at both public and private universities in Uganda.',
      salaryRange: 'UGX 3,500,000 - UGX 12,000,000 per month',
      subjects: ['Mathematics', 'Physics', 'Engineering'],
      localImagePath: 'images/civil-engineer.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'Makerere University',
        'Kyambogo University',
        'Uganda Christian University',
        'Ndejje University',
        'Mbarara University of Science and Technology',
        'Kampala International University',
        //'IUEA - International University of East Africa', //You can add if you have data
      ],
      studyPeriod: '4 Years',
      weight:
          'Refer to the specific course requirements below, which vary by institution.',
      approximateTuition:
          'UGX 1,800,000 - UGX 4,500,000 per year (Varies significantly by institution and program)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Science in Civil Engineering',
          'cutOffPoints': {
            // Example - Replace with actual data if available
            //'2022/2023': {'Male': 48.2, 'Female': 47.5},
          },
          'tuition': 'UGX 2,000,000 - UGX 4,500,000/year (approximate)',
          'admissionRequirements':
              'Essential: Mathematics, Physics.  Check Makerere specific requirements.',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Engineering in Civil and Building Engineering',
          'cutOffPoints': null,
          'tuition': 'UGX 1,800,000 - UGX 4,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Physics and Mathematics. Check Kyambogo specific requirements.',
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Science in Civil Engineering', // Or similar
          'cutOffPoints':
              null, // Private universities may have different criteria
          'tuition': 'UGX 2,500,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Generally, good passes in Mathematics and Physics are required. Check UCU specific requirements.',
        },
        'Ndejje University': {
          'course': 'Bachelor of Engineering (Civil)',
          'cutOffPoints': null,
          'tuition': 'UGX 2,000,000 - UGX 4,500,000/year (approximate)',
          'admissionRequirements':
              'Generally, passes in Mathematics and Physics are required. Check Ndejje specific requirements.',
        },
        'Mbarara University of Science and Technology': {
          'course':
              'Bachelor of Science in Civil and Environmental Engineering', // Or similar
          'cutOffPoints': null,
          'tuition': 'UGX 1,900,000 - UGX 4,200,000/year (approximate)',
          'admissionRequirements':
              'Essential: Mathematics and Physics. Check MUST specific requirements.',
        },
        'Kampala International University': {
          'course': 'Bachelor of Science in Civil Engineering',
          'cutOffPoints': null,
          'tuition': 'UGX 1,800,000 - UGX 4,000,000/year (approximate)',
          'admissionRequirements':
              'Generally, passes in Mathematics and Physics are required. Check KIU specific requirements.',
        },
      },
    ),
    Career(
      id: '4',
      title: 'Teacher',
      description:
          'Instruct students at different educational levels in various subjects. Teacher training programs are offered at various universities and specialized institutions in Uganda.',
      salaryRange: 'UGX 800,000 - UGX 4,000,000 per month',
      subjects: ['Education', 'Subject-Specific Knowledge'],
      localImagePath: 'images/teacher.jpeg',
      category: 'Education',
      institutions: [
        'Makerere University',
        'Kyambogo University',
        'Uganda Christian University',
        'Ndejje University',
        'Bishop Stuart University',
        'Kabale University',
        'Kampala International University',
        'Islamic University in Uganda',
        'Africa Renewal University',
      ],
      studyPeriod: '3-4 Years',
      weight:
          'Refer to the specific course requirements below, which vary by institution and specialization.',
      approximateTuition:
          'UGX 1,200,000 - UGX 3,500,000 per year (Varies significantly by institution and program)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Education (Various specializations)',
          'cutOffPoints': {
            // Example - Replace with actual data if available. These vary *greatly* by specialization
            //'2022/2023': {'Arts': 42.1, 'Science': 45.8},
          },
          'tuition': 'UGX 1,500,000 - UGX 3,500,000/year (approximate)',
          'admissionRequirements':
              'Vary significantly by specialization (Arts, Sciences, etc.). Check Makerere specific requirements.',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Education (Various specializations)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,400,000 - UGX 3,000,000/year (approximate)',
          'admissionRequirements':
              'Vary by teaching subject. Check Kyambogo specific requirements.',
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Education', // Or specific specialization
          'cutOffPoints':
              null, // Private universities may have different criteria
          'tuition': 'UGX 2,000,000 - UGX 4,000,000/year (approximate)',
          'admissionRequirements':
              'Generally, good academic standing. Check UCU specific requirements.',
        },
        'Ndejje University': {
          'course': 'Bachelor of Education (Various levels)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,800,000 - UGX 3,800,000/year (approximate)',
          'admissionRequirements':
              'Vary by program level (Primary, Secondary, etc.). Check Ndejje specific requirements.',
        },
        'Bishop Stuart University': {
          'course': 'Bachelor of Education',
          'cutOffPoints': null,
          'tuition': 'UGX 1,600,000 - UGX 3,500,000/year (approximate)',
          'admissionRequirements':
              'Check Bishop Stuart University for their specific entry requirements.',
        },
        'Kabale University': {
          'course': 'Bachelor of Education',
          'cutOffPoints': null,
          'tuition': 'UGX 1,300,000 - UGX 2,800,000/year (approximate)',
          'admissionRequirements':
              'Check Kabale University for their specific entry requirements.',
        },
        'Kampala International University': {
          'course': 'Bachelor of Education',
          'cutOffPoints': null,
          'tuition': 'UGX 1,700,000 - UGX 3,700,000/year (approximate)',
          'admissionRequirements':
              'Check KIU for their specific entry requirements.',
        },
        'Islamic University in Uganda': {
          'course': 'Bachelor of Education',
          'cutOffPoints': null,
          'tuition': 'UGX 1,500,000 - UGX 3,300,000/year (approximate)',
          'admissionRequirements':
              'Check IUIU for their specific entry requirements.',
        },
        'Africa Renewal University': {
          'course': 'Bachelor of Education',
          'cutOffPoints': null,
          'tuition': 'UGX 1,900,000 - UGX 3,900,000/year (approximate)',
          'admissionRequirements':
              'Check ARU for their specific entry requirements.',
        },
      },
    ),
    Career(
      id: '5',
      title: 'Lawyer',
      description:
          'Advocate for clients in courts, draft legal documents, and negotiate settlements.',
      salaryRange: 'UGX 4,000,000 - UGX 15,000,000 per month',
      subjects: ['Law', 'Political Science', 'History'],
      localImagePath: 'images/lawyer.jpeg',
      category: 'Law & Public Service',
      institutions: [
        'Makerere University',
        'Uganda Christian University',
        'Kampala International University',
        'Islamic University in Uganda',
        'Nkumba University'
      ],
      studyPeriod: '4-5 Years',
      weight: '2 Principal passes in Arts subjects',
      approximateTuition:
          'UGX 1,800,000 - UGX 5,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Laws (LAW)',
          'cutOffPoints': {
            '2022/2023': {
              'Male': null,
              'Female': null
            }, // Replace with actual data
            '2021/2022': {'Male': null, 'Female': null},
            '2020/2021': {'Male': null, 'Female': null},
          },
          'tuition':
              'UGX 2,000,000 - UGX 4,500,000/year (approximate)', //Adjust
          'admissionRequirements':
              'Please refer to Makerere University specific requirements for the Bachelor of Laws program.', // Be specific
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Laws (LLB)', // Or the specific course name
          'tuition':
              'UGX 2,500,000 - UGX 5,000,000/year (approximate)', // Adjust
          'admissionRequirements':
              'Check Uganda Christian University\'s specific entry requirements for the LLB program.',
        },
        'Kampala International University': {
          'course': 'Bachelor of Laws (LLB)',
          'tuition': 'UGX 1,800,000 - UGX 4,000,000/year (approximate)',
          'admissionRequirements':
              'Check Kampala International University\'s requirements.',
        },
        'Islamic University in Uganda': {
          'course': 'Bachelor of Laws (LLB)',
          'tuition': 'UGX 1,500,000 - UGX 3,500,000/year (approximate)',
          'admissionRequirements':
              'Check Islamic University in Uganda\'s requirements.',
        },
        'Nkumba University': {
          'course': 'Bachelor of Laws (LLB)',
          'tuition': 'UGX 1,600,000 - UGX 3,800,000/year (approximate)',
          'admissionRequirements': 'Check Nkumba University\'s requirements.',
        },
      },
    ),
    Career(
      id: '6',
      title: 'Architect',
      description:
          'Design and plan buildings that are functional, safe, and aesthetically pleasing.',
      salaryRange: 'UGX 3,500,000 - UGX 12,000,000 per month',
      subjects: ['Mathematics', 'Design', 'Engineering'],
      localImagePath: 'images/architect.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'Makerere University',
        'Kyambogo University',
        'Uganda Martyrs University'
      ],
      studyPeriod: '4-5 Years',
      weight:
          '2 Principal passes including Mathematics or Physics and Fine Art/Technical Drawing',
      approximateTuition:
          'UGX 2,000,000 - UGX 5,500,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Architecture (ARC)',
          'cutOffPoints': {
            '2022/2023': {
              'Male': null,
              'Female': null
            }, // Replace with actual data
            '2021/2022': {'Male': null, 'Female': null},
            '2020/2021': {'Male': null, 'Female': null},
          },
          'tuition': 'UGX 2,200,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Mathematics.  Desirable: Physics, Fine Art/Technical Drawing.', // Be specific
        },
        'Kyambogo University': {
          'course': 'Bachelor of Architecture', // Or the specific course name
          'tuition': 'UGX 2,000,000 - UGX 4,500,000/year (approximate)',
          'admissionRequirements':
              'Check Kyambogo University\'s specific entry requirements for Architecture.',
        },
        'Uganda Martyrs University': {
          'course': 'Bachelor of Architecture',
          'tuition': 'UGX 2,500,000 - UGX 5,500,000/year (approximate)',
          'admissionRequirements':
              'Check Uganda Martyrs University\'s requirements.',
        },
      },
    ),
    Career(
      id: '7',
      title: 'Nursing',
      description:
          'Train to become a registered nurse, providing patient care, assisting in medical procedures, and promoting public health. Offered at multiple public and private universities in Uganda.',
      salaryRange: 'UGX 1,500,000 - UGX 5,000,000 per month',
      subjects: [
        'Biology',
        'Chemistry',
        'Mathematics',
        'Physics',
      ],
      localImagePath: 'images/nurse.jpeg',
      category: 'Health Sciences',
      institutions: [
        'Makerere University',
        'Mbarara University of Science and Technology (MUST)',
        'Gulu University',
        'Busitema University',
        'Muni University',
        'Kabale University',
        'Soroti University',
        'Mountains of the Moon University',
        'Uganda Christian University (UCU)',
        'Kampala International University (KIU)',
      ],
      studyPeriod: '4 Years',
      weight:
          'Essential: Biology and Chemistry. Relevant: Mathematics, Physics, or Agriculture.',
      approximateTuition:
          'UGX 1,500,000 - UGX 4,000,000 per year (Varies by institution and sponsorship)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Nursing Science (NUR)',
          'cutOffPoints': {
            '2022/2023': {'Male': 40.6, 'Female': 38.9},
            '2021/2022': {'Male': 46.9, 'Female': 46.9},
            '2020/2021': {'Male': 44.6, 'Female': 43.7},
          },
          'tuition': 'UGX 2,500,000 - UGX 4,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology and Chemistry. Relevant: One best done of Agriculture, Economics, Foods & Nutrition, Maths, Physics.',
        },
        'Mbarara University of Science and Technology (MUST)': {
          'course': 'Bachelor of Science in Nursing (NUM)',
          'cutOffPoints': {
            '2022/2023': {'Male': 40.6, 'Female': 40.6},
            '2021/2022': {'Male': 46.7, 'Female': 46.7},
            '2020/2021': {'Male': 46.6, 'Female': 43.2},
          },
          'tuition': 'UGX 2,000,000 - UGX 3,500,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology and Chemistry. Relevant: One better done of Maths, Physics.',
        },
        'Gulu University': {
          'course':
              'Bachelor of Nursing Science (Not listed in PDF; verify availability)',
          'cutOffPoints': null,
          'tuition': 'UGX 1,800,000 - UGX 3,000,000/year (approximate)',
          'admissionRequirements':
              'Likely requires Biology and Chemistry (check institution).',
        },
        'Busitema University': {
          'course': 'Bachelor of Science in Nursing (BNS)',
          'cutOffPoints': {
            '2022/2023': {'Male': 40.6, 'Female': 39.2},
            '2021/2022': {'Male': 49.3, 'Female': 47.8},
            '2020/2021': {'Male': 45.1, 'Female': 44.6},
          },
          'tuition': 'UGX 1,700,000 - UGX 2,800,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology and Chemistry. Relevant: One better done of Physics, Mathematics, or Agriculture.',
        },
        'Muni University': {
          'course': 'Bachelor of Nursing Science (NSM)',
          'cutOffPoints': {
            '2022/2023': {'Male': 38.5, 'Female': 38.5},
            '2021/2022': {'Male': 46.1, 'Female': 46.1},
            '2020/2021': {'Male': 42.3, 'Female': 42.3},
          },
          'tuition': 'UGX 1,500,000 - UGX 2,500,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology and Chemistry. Relevant: One best done of Physics, Mathematics, Food & Nutrition.',
        },
        'Mountains of the Moon University': {
          'course': 'Bachelor of Nursing Science (MMN)',
          'cutOffPoints': {
            '2022/2023': {'Male': 34.4, 'Female': 34.4},
          },
          'tuition': 'UGX 1,200,000 - UGX 2,000,000/year (approximate)',
          'admissionRequirements':
              'Essential: Biology and Chemistry. Relevant: One better done of Physics, Mathematics, Agriculture.',
        },
        'Uganda Christian University (UCU)': {
          'course': 'Bachelor of Nursing Science (Private)',
          'cutOffPoints': null,
          'tuition': 'UGX 3,000,000 - UGX 5,000,000/year (approximate)',
          'admissionRequirements':
              'Generally requires Biology and Chemistry (check UCU for specifics).',
        },
        'Kampala International University (KIU)': {
          'course': 'Bachelor of Nursing Science (Private)',
          'cutOffPoints': null,
          'tuition': 'UGX 2,800,000 - UGX 4,500,000/year (approximate)',
          'admissionRequirements':
              'Generally requires Biology and Chemistry (check KIU for specifics).',
        },
      },
    ),
    Career(
      id: '8',
      title: 'Pilot',
      description:
          'Operate aircraft and ensure safe transportation of passengers and cargo.',
      salaryRange: 'UGX 10,000,000 - UGX 30,000,000 per month',
      subjects: ['Physics', 'Mathematics', 'Aviation Studies'],
      localImagePath: 'images/pilot.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'East African Civil Aviation Academy (Soroti - Primarily a training academy)',
        'Makerere University (Aeronautical Engineering - related)',
        'Ndejje University (Aviation Management - related)'
      ],
      studyPeriod:
          '3-4 Years (University) + Specialized Flight Training (1-2 Years)',
      weight: '2 Principal passes including Mathematics and Physics',
      approximateTuition:
          'UGX 2,000,000 - UGX 5,000,000 per year (University) + Significant costs for flight school.',
      coursesByInstitution: {
        'East African Civil Aviation Academy (Soroti)': {
          'course': 'Commercial Pilot License (CPL) Training',
          'weight': 'Physics and Mathematics required',
          'tuition': 'UGX 30,000,000 - UGX 80,000,000 for full training',
          'cutOffPoints': null,
        },
        'Makerere University': {
          'course': 'Bachelor of Science in Aeronautical Engineering',
          'weight': '2 Principal passes including Mathematics and Physics',
          'tuition': 'UGX 2,000,000 - UGX 5,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 42.3, 'Female': 41.0},
            '2021/2022': {'Male': 48.5, 'Female': 46.8},
          },
        },
        'Ndejje University': {
          'course': 'Bachelor of Aviation Management',
          'weight': '2 Principal passes including a science subject',
          'tuition': 'UGX 2,500,000 - UGX 4,500,000 per year',
          'cutOffPoints': null,
        },
      },
    ),
    Career(
      id: '9',
      title: 'Financial Analyst',
      description:
          'Advise businesses and individuals on investments, budgets, and financial plans.',
      salaryRange: 'UGX 3,500,000 - UGX 12,000,000 per month',
      subjects: ['Mathematics', 'Economics', 'Finance'],
      localImagePath: 'images/financial-analyst.jpeg',
      category: 'Business & Finance',
      studyPeriod: '3-4 Years',
      institutions: [
        'Makerere University',
        'Uganda Christian University',
        'Kyambogo University',
        'Kampala International University',
        'Makerere University Business School (MUBS)',
        'Nkumba University'
      ],
      weight: '2 Principal passes including Economics or Mathematics',
      approximateTuition:
          'UGX 1,500,000 - UGX 4,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Science in Quantitative Economics',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 44.0, 'Female': 42.5},
            '2021/2022': {'Male': 46.5, 'Female': 45.0},
          },
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Business Administration (Finance Track)',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 2,200,000 - UGX 3,800,000 per year',
          'cutOffPoints': null,
        },
        'Kyambogo University': {
          'course': 'Bachelor of Economics and Statistics',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 1,800,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 39.2, 'Female': 37.8},
          },
        },
        'Kampala International University': {
          'course': 'Bachelor of Business Administration (Finance Option)',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 1,500,000 - UGX 3,000,000 per year',
          'cutOffPoints': null,
        },
        'Makerere University Business School (MUBS)': {
          'course': 'Bachelor of Commerce (Finance)',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 1,800,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 42.0, 'Female': 40.5},
          },
        },
        'Nkumba University': {
          'course': 'Bachelor of Business Administration (Finance Option)',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 1,500,000 - UGX 3,500,000 per year',
          'cutOffPoints': null,
        },
      },
    ),
    Career(
      id: '10',
      title: 'Journalist',
      description:
          'Investigate and report news stories through various media outlets.',
      salaryRange: 'UGX 1,200,000 - UGX 5,000,000 per month',
      subjects: ['Literature', 'Communication', 'Political Science'],
      localImagePath: 'images/journalist.jpeg',
      category: 'Arts & Humanities',
      institutions: [
        'Makerere University',
        'Uganda Christian University',
        'Ndejje University',
        'Kampala International University',
        'Cavendish University Uganda'
      ],
      studyPeriod: '3-4 Years',
      weight:
          '2 Principal passes in Arts subjects, including Literature or History',
      approximateTuition:
          'UGX 1,200,000 - UGX 3,500,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Journalism and Communication',
          'weight':
              '2 Principal passes in Arts subjects, including Literature or History',
          'tuition': 'UGX 2,000,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 42.7, 'Female': 41.3},
            '2021/2022': {'Male': 45.9, 'Female': 44.1},
          },
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Arts in Mass Communication',
          'weight':
              '2 Principal passes in Arts subjects, preferably Literature or History',
          'tuition': 'UGX 2,200,000 - UGX 3,800,000 per year',
          'cutOffPoints': null,
        },
        'Ndejje University': {
          'course': 'Bachelor of Mass Communication',
          'weight': '2 Principal passes in Arts subjects',
          'tuition': 'UGX 1,800,000 - UGX 3,000,000 per year',
          'cutOffPoints': null,
        },
        'Kampala International University': {
          'course': 'Bachelor of Mass Communication',
          'weight': '2 Principal passes in Arts subjects',
          'tuition': 'UGX 1,500,000 - UGX 3,000,000 per year',
          'cutOffPoints': null,
        },
        'Cavendish University Uganda': {
          'course': 'Bachelor of Journalism and Communication',
          'weight': '2 Principal passes in Arts subjects',
          'tuition': 'UGX 1,800,000 - UGX 3,200,000 per year',
          'cutOffPoints': null,
        },
      },
    ),
    Career(
      id: '11',
      title: 'Chef',
      description:
          'Prepare meals and oversee kitchen operations in restaurants and hotels.',
      salaryRange: 'UGX 1,000,000 - UGX 6,000,000 per month',
      subjects: ['Home Economics', 'Hospitality Management'],
      localImagePath: 'images/chef.jpeg',
      category: 'Arts & Humanities',
      studyPeriod: '1-3 Years (Vocational) / 3-4 Years (University)',
      institutions: [
        'Hotel and Tourism Training Institute (HTTI) Jinja',
        'Uganda Hotel and Tourism Training Institute (UHTTI) Fort Portal',
        'Makerere University (Tourism and Hospitality Management - related)',
        'Uganda Christian University (Tourism and Hospitality Management - related)',
        'Kyambogo University (Hotel and Restaurant Management - related)'
      ],
      weight:
          'No specific principal passes often required for vocational training; University programs may require general Arts or Science passes.',
      approximateTuition:
          'UGX 800,000 - UGX 3,000,000 per year (Varies by institution and program type)',
      coursesByInstitution: {
        'Hotel and Tourism Training Institute (HTTI) Jinja': {
          'course': 'Diploma in Hotel and Institutional Catering',
          'weight': 'Certificate in Hotel Operations or equivalent',
          'tuition': 'UGX 900,000 - UGX 2,000,000 per year',
          'cutOffPoints': null,
        },
        'Uganda Hotel and Tourism Training Institute (UHTTI) Fort Portal': {
          'course': 'Diploma in Culinary Arts / Hotel Management',
          'weight': 'Certificate in Hospitality or related field',
          'tuition': 'UGX 1,000,000 - UGX 2,500,000 per year',
          'cutOffPoints': null,
        },
        'Makerere University': {
          'course': 'Bachelor of Tourism and Hospitality Management',
          'weight': '2 Principal passes including any Arts or Science subject',
          'tuition': 'UGX 2,000,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 35.2, 'Female': 33.0},
          },
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Hospitality and Tourism Management',
          'weight': '2 Principal passes in any Arts subjects',
          'tuition': 'UGX 2,200,000 - UGX 3,500,000 per year',
          'cutOffPoints': null,
        },
        'Kyambogo University': {
          'course': 'Bachelor of Hotel and Institutional Management',
          'weight': '2 Principal passes in any relevant subject',
          'tuition': 'UGX 1,800,000 - UGX 3,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 34.7, 'Female': 32.5},
          },
        },
      },
    ),
    Career(
      id: '12',
      title: 'Dentist',
      description:
          'Diagnose and treat issues related to teeth, gums, and oral health.',
      salaryRange: 'UGX 4,000,000 - UGX 15,000,000 per month',
      subjects: ['Biology', 'Chemistry', 'Physics'],
      localImagePath: 'images/dentist.jpeg',
      category: 'Healthcare & Medicine',
      institutions: ['Makerere University', 'Uganda Christian University'],
      studyPeriod: '5 Years',
      weight: '2 Principal passes in Biology and Chemistry',
      approximateTuition:
          'UGX 2,500,000 - UGX 6,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Dental Surgery (BDS)',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 4,500,000 - UGX 6,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 41.0, 'Female': 39.1},
            '2021/2022': {'Male': 49.8, 'Female': 48.3},
            '2020/2021': {'Male': 46.7, 'Female': 44.2},
          },
        },
        'Mbarara University of Science and Technology': {
          'course': 'Bachelor of Dental Surgery',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 3,500,000 - UGX 5,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 38.2, 'Female': 36.4},
          },
        },
        'Gulu University': {
          'course':
              'Bachelor of Medicine and Bachelor of Dental Surgery (Planned)',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 2,800,000 - UGX 4,000,000 per year (est.)',
          'cutOffPoints': null,
        },
        'Kampala International University': {
          'course': 'Bachelor of Dental Surgery',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 2,500,000 - UGX 5,000,000 per year',
          'cutOffPoints': null,
        },
        'Uganda Christian University (planned program)': {
          'course':
              'Bachelor of Dental Surgery (in development or under partnership)',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 2,800,000 - UGX 4,500,000 per year (estimated)',
          'cutOffPoints': null,
        },
      },
    ),
    Career(
      id: '13',
      title: 'Pharmacist',
      description:
          'Dispense medications and counsel patients on the proper use of drugs.',
      salaryRange: 'UGX 2,500,000 - UGX 8,000,000 per month',
      subjects: ['Chemistry', 'Biology', 'Pharmacy'],
      localImagePath: 'images/pharmacist.jpeg',
      category: 'Healthcare & Medicine',
      institutions: [
        'Makerere University',
        'Mbarara University of Science and Technology',
        'Gulu University'
      ],
      studyPeriod: '4 Years',
      weight: '2 Principal passes in Chemistry and Biology',
      approximateTuition:
          'UGX 2,000,000 - UGX 5,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Pharmacy',
          'weight': '2 Principal passes in Chemistry and Biology',
          'tuition': 'UGX 4,000,000 - UGX 5,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 44.6, 'Female': 43.1},
            '2021/2022': {'Male': 52.7, 'Female': 51.3},
            '2020/2021': {'Male': 49.3, 'Female': 47.6},
          },
        },
        'Mbarara University of Science and Technology': {
          'course': 'Bachelor of Pharmacy',
          'weight': '2 Principal passes in Chemistry and Biology',
          'tuition': 'UGX 3,000,000 - UGX 4,500,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 42.8, 'Female': 40.9},
          },
        },
        'Gulu University': {
          'course': 'Bachelor of Pharmacy',
          'weight': '2 Principal passes in Chemistry and Biology',
          'tuition': 'UGX 2,500,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 40.5, 'Female': 38.0},
          },
        },
        'Busitema University (proposed)': {
          'course': 'Bachelor of Pharmacy (planned/partnered)',
          'weight': '2 Principal passes in Chemistry and Biology',
          'tuition': 'UGX 2,500,000 - UGX 4,000,000 per year (estimated)',
          'cutOffPoints': null,
        },
        'Kampala International University': {
          'course': 'Bachelor of Pharmacy',
          'weight': '2 Principal passes in Chemistry and Biology',
          'tuition': 'UGX 3,000,000 - UGX 4,500,000 per year',
          'cutOffPoints': null,
        },
      },
    ),
    Career(
      id: '14',
      title: 'Graphic Designer',
      description:
          'Create visual designs for branding, advertising, and digital content.',
      salaryRange: 'UGX 1,500,000 - UGX 6,000,000 per month',
      subjects: ['Art', 'Design', 'Technology'],
      localImagePath: 'images/graphic-designer.jpeg',
      category: 'Arts & Humanities',
      institutions: [
        'Makerere University (Industrial Art and Design)',
        'Kyambogo University (Art and Industrial Design)',
        'Uganda Christian University (Mass Communication with Design elements)',
        'Nsambya Training School (various design courses)'
      ],
      studyPeriod: '3-4 Years',
      weight:
          '2 Principal passes, preferably including Art or Technical Drawing',
      approximateTuition:
          'UGX 1,500,000 - UGX 4,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Industrial and Fine Arts (BIFA)',
          'weight': '2 Principal passes including Art or related subject',
          'tuition': 'UGX 2,500,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 38.5, 'Female': 37.2},
            '2021/2022': {'Male': 42.0, 'Female': 40.3},
          },
        },
        'Kyambogo University': {
          'course': 'Bachelor of Art and Industrial Design',
          'weight': '2 Principal passes preferably including Art or TD',
          'tuition': 'UGX 2,000,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 35.7, 'Female': 34.1},
          },
        },
        'Uganda Christian University': {
          'course':
              'Bachelor of Mass Communication (with Graphic Design elements)',
          'weight': '2 Principal passes in Arts subjects',
          'tuition': 'UGX 2,800,000 - UGX 3,500,000 per year',
          'cutOffPoints': null,
        },
        'Nsambya Training School': {
          'course': 'Certificate/Diploma in Graphic Design',
          'weight': 'O-level or A-level passes depending on course level',
          'tuition': 'UGX 800,000 - UGX 1,500,000 per year',
          'cutOffPoints': null,
        },
      },
    ),
    Career(
      id: '15',
      title: 'Software Engineer',
      description:
          'Design, build, test, and maintain complex software systems.',
      salaryRange: 'UGX 3,500,000 - UGX 12,000,000 per month',
      subjects: ['Mathematics', 'Computer Science', 'Information Systems'],
      localImagePath: 'images/software-engineer.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'Makerere University',
        'Kyambogo University',
        'Uganda Christian University',
        'Ndejje University',
        'Kampala International University',
        'ISBAT University',
        'Mbarara University of Science and Technology'
      ],
      studyPeriod: '4 Years',
      weight: '2 Principal passes including Mathematics or Physics',
      approximateTuition:
          'UGX 1,800,000 - UGX 4,500,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Science in Software Engineering',
          'weight': '2 Principal passes including Mathematics or Physics',
          'tuition': 'UGX 2,000,000 - UGX 4,500,000 per year',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Information Technology and Computing',
          'weight': '2 Principal passes including Mathematics or Physics',
          'tuition': 'UGX 1,800,000 - UGX 3,800,000 per year',
        },
        'Mbarara University of Science and Technology': {
          'course': 'Bachelor of Science in Computer Engineering',
          'weight': '2 Principal passes including Mathematics and Physics',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
        },
        'Busitema University': {
          'course': 'Bachelor of Science in Computer Engineering',
          'weight': '2 Principal passes including Mathematics and Physics',
          'tuition': 'UGX 1,800,000 - UGX 4,000,000 per year',
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Science in Computer Science',
          'weight': '2 Principal passes with a strong background in ICT/Math',
          'tuition': 'UGX 2,500,000 - UGX 4,500,000 per year',
        },
        'Ndejje University': {
          'course': 'Bachelor of Software Engineering',
          'weight': '2 Principal passes including Mathematics',
          'tuition': 'UGX 2,000,000 - UGX 3,800,000 per year',
        },
        'ISBAT University': {
          'course': 'Bachelor of Science in Software Engineering',
          'weight': '2 Principal passes in science/technical subjects',
          'tuition': 'UGX 2,200,000 - UGX 4,000,000 per year',
        },
        'Kampala International University': {
          'course': 'Bachelor of Information Technology',
          'weight': '2 Principal passes in Mathematics/Physics',
          'tuition': 'UGX 1,800,000 - UGX 3,500,000 per year',
        },
      },
    ),
    Career(
      id: '16',
      title: 'Mechanical Engineer',
      description: 'Design and manufacture mechanical systems and devices.',
      salaryRange: 'UGX 3,000,000 - UGX 10,000,000 per month',
      subjects: ['Mathematics', 'Physics', 'Mechanical Engineering'],
      localImagePath: 'images/mechanical-engineer.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'Makerere University',
        'Kyambogo University',
        'Busitema University'
      ],
      studyPeriod: '4 Years',
      weight: '2 Principal passes including Mathematics and Physics',
      approximateTuition:
          'UGX 1,800,000 - UGX 4,500,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Science in Mechanical Engineering',
          'weight': '2 Principal passes in Mathematics and Physics',
          'tuition': 'UGX 2,500,000 - UGX 4,500,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 46.2, 'Female': 44.5},
            '2021/2022': {'Male': 50.0, 'Female': 48.3},
          },
        },
        'Kyambogo University': {
          'course': 'Bachelor of Science in Mechanical Engineering',
          'weight': '2 Principal passes including Mathematics and Physics',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 40.8, 'Female': 39.0},
          },
        },
        'Busitema University': {
          'course': 'Bachelor of Science in Agro-Mechanical Engineering',
          'weight': '2 Principal passes in Mathematics and Physics',
          'tuition': 'UGX 1,800,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2022/2023': {'Male': 39.7, 'Female': 38.5},
          },
        },
      },
    ),
    Career(
      id: '17',
      title: 'Psychologist',
      description:
          'Study mental processes and behavior, counsel individuals and groups.',
      salaryRange: 'UGX 2,000,000 - UGX 7,000,000 per month',
      subjects: ['Psychology', 'Biology', 'Health Sciences'],
      localImagePath: 'images/psychologist.jpeg',
      category: 'Healthcare & Medicine',
      institutions: [
        'Makerere University',
        'Uganda Christian University',
        'Kyambogo University'
      ],
      studyPeriod: '3-4 Years',
      weight: '2 Principal passes in Science or Arts subjects',
      approximateTuition:
          'UGX 1,500,000 - UGX 4,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Community Psychology',
          'weight': '2 Principal passes in Arts or Sciences',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2024/2025': {'Male': 39.0, 'Female': 37.5},
            '2023/2024': {'Male': 42.8, 'Female': 41.1},
          },
        },
        'Kyambogo University': {
          'course': 'Bachelor of Guidance and Counselling',
          'weight': '2 Principal passes in Arts or Sciences',
          'tuition': 'UGX 1,500,000 - UGX 3,000,000 per year',
          'cutOffPoints': {
            '2023/2024': {'Male': 37.2, 'Female': 35.9},
          },
        },
        'Gulu University': {
          'course': 'Bachelor of Mental Health and Community Psychology',
          'weight': '2 Principal passes in relevant Arts or Science subjects',
          'tuition': 'UGX 1,400,000 - UGX 3,200,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 36.8},
          },
        },
        'Muni University': {
          'course': 'Bachelor of Psychology and Counselling',
          'weight': '2 Principal passes in any relevant subjects',
          'tuition': 'UGX 1,300,000 - UGX 2,800,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 35.5},
          },
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Psychology and Mental Health',
          'weight': '2 Principal passes in any relevant subjects',
          'tuition': 'UGX 1,800,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 36.0},
          },
        },
      },
    ),
    Career(
      id: '18',
      title: 'Veterinarian',
      description: 'Diagnose and treat diseases and injuries in animals.',
      salaryRange: 'UGX 2,500,000 - UGX 8,000,000 per month',
      subjects: ['Biology', 'Chemistry', 'Veterinary Science'],
      localImagePath: 'images/veterinarian.jpeg',
      category: 'Healthcare & Medicine',
      institutions: ['Makerere University'],
      studyPeriod: '4-5 Years',
      weight: '2 Principal passes in Biology and Chemistry',
      approximateTuition: 'UGX 2,000,000 - UGX 5,000,000 per year',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Veterinary Medicine',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 2,500,000 - UGX 5,000,000 per year',
          'cutOffPoints': {
            '2023/2024': {'Male': 42.3, 'Female': 40.8},
            '2024/2025': {'Male': 44.6, 'Female': 43.0},
          },
        },
        'Busitema University': {
          'course': 'Bachelor of Animal Production and Management',
          'weight':
              '2 Principal passes in Biology and Chemistry or Agriculture',
          'tuition': 'UGX 1,800,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 39.5},
          },
        },
        'Mbarara University of Science and Technology': {
          'course': 'Bachelor of Animal Health and Production',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 40.2},
          },
        },
        'Gulu University': {
          'course':
              'Bachelor of Biosystems Engineering (with relevance to animal health)',
          'weight':
              '2 Principal passes in Biology and Chemistry or Mathematics',
          'tuition': 'UGX 1,500,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 38.0},
          },
        },
      },
    ),
    Career(
      id: '19',
      title: 'Accountant',
      description:
          'Prepare and examine financial records for individuals and organizations.',
      salaryRange: 'UGX 2,000,000 - UGX 7,000,000 per month',
      subjects: ['Mathematics', 'Economics', 'Accounting'],
      localImagePath: 'images/accountant.jpeg',
      category: 'Business & Finance',
      institutions: [
        'Makerere University',
        'Makerere University Business School (MUBS)',
        'Uganda Christian University',
        'Kyambogo University',
        'Kampala International University',
        'Nkumba University'
      ],
      studyPeriod: '3-4 Years',
      weight: '2 Principal passes including Economics or Mathematics',
      approximateTuition:
          'UGX 1,500,000 - UGX 4,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Commerce (Accounting Option)',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2024/2025': {'Male': 43.5, 'Female': 42.0},
            '2023/2024': {'Male': 45.3, 'Female': 44.0},
          },
        },
        'Makerere University Business School (MUBS)': {
          'course': 'Bachelor of Science in Accounting',
          'weight': '2 Principal passes in relevant subjects',
          'tuition': 'UGX 1,800,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 41.8},
          },
        },
        'Kyambogo University': {
          'course': 'Bachelor of Business Studies – Accounting',
          'weight': '2 Principal passes including Economics or Mathematics',
          'tuition': 'UGX 1,800,000 - UGX 3,800,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 40.0},
          },
        },
        'Gulu University': {
          'course': 'Bachelor of Business Administration (Accounting Track)',
          'weight': '2 Principal passes in Arts or Sciences',
          'tuition': 'UGX 1,600,000 - UGX 3,200,000 per year',
          'cutOffPoints': {
            '2023/2024': {'General': 39.0},
          },
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Business Administration – Accounting',
          'weight': '2 Principal passes in relevant subjects',
          'tuition': 'UGX 2,200,000 - UGX 3,800,000 per year',
        },
      },
    ),
    Career(
      id: '20',
      title: 'Environmental Scientist',
      description:
          'Research and analyze environmental issues to protect natural resources.',
      salaryRange: 'UGX 2,500,000 - UGX 8,000,000 per month',
      subjects: ['Biology', 'Environmental Science', 'Chemistry'],
      localImagePath: 'images/environmental-scientist.jpeg',
      category: 'Sciences',
      institutions: [
        'Makerere University',
        'Mbarara University of Science and Technology',
        'Kyambogo University'
      ],
      studyPeriod: '3-4 Years',
      weight:
          '2 Principal passes in Science subjects, including Biology or Chemistry',
      approximateTuition:
          'UGX 1,500,000 - UGX 4,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Environmental Science',
          'weight': '2 Principal passes including Biology or Chemistry',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2024/2025': {'Male': 41.9, 'Female': 40.3},
            '2023/2024': {'Male': 44.5, 'Female': 43.0},
          },
        },
        'Kyambogo University': {
          'course':
              'Bachelor of Science in Environmental Science and Technology',
          'weight': '2 Principal passes in Biology, Chemistry, or Physics',
          'tuition': 'UGX 1,800,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 39.2},
          },
        },
        'Mbarara University of Science and Technology': {
          'course': 'Bachelor of Environmental Health Science',
          'weight': '2 Principal passes in Biology and Chemistry',
          'tuition': 'UGX 1,800,000 - UGX 3,800,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 38.5},
          },
        },
        'Busitema University': {
          'course': 'Bachelor of Science in Natural Resources Economics',
          'weight': '2 Principal passes including Biology or Agriculture',
          'tuition': 'UGX 1,700,000 - UGX 3,200,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 36.0},
          },
        },
        'Gulu University': {
          'course':
              'Bachelor of Science in Environmental Science and Natural Resources Management',
          'weight': '2 Principal passes in science subjects',
          'tuition': 'UGX 1,600,000 - UGX 3,000,000 per year',
        },
      },
    ),
    Career(
      id: '21',
      title: 'Fashion Designer',
      description:
          'Create original clothing, accessories, and footwear designs.',
      salaryRange: 'UGX 1,500,000 - UGX 6,000,000 per month',
      subjects: ['Art', 'Design', 'Home Economics'],
      localImagePath: 'images/fashion-designer.jpeg',
      category: 'Arts & Humanities',
      institutions: [
        'Makerere University (Industrial Art and Design)',
        'Kyambogo University (Art and Industrial Design)',
        'MTI School of Fashion Design',
      ],
      studyPeriod: '3-4 Years (University) / 1-2 Years (Vocational)',
      weight: '2 Principal passes, preferably including Art or Home Economics',
      approximateTuition: 'UGX 1,500,000 - UGX 4,000,000 per year (University)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Industrial and Fine Arts',
          'weight': '2 Principal passes including Art or Technical Drawing',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 42.8},
            '2023/2024': {'General': 44.5},
          },
        },
        'Kyambogo University': {
          'course': 'Bachelor of Art and Industrial Design',
          'weight':
              '2 Principal passes with preference for Art or related subjects',
          'tuition': 'UGX 1,800,000 - UGX 3,800,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 40.2},
          },
        },
        'MTI School of Fashion and Design': {
          'course': 'Diploma in Fashion and Design',
          'weight':
              'Open to A-Level and O-Level leavers with creative background',
          'tuition': 'UGX 800,000 - UGX 2,000,000 per year',
        },
        'National Teachers College (NTC) Kabale': {
          'course': 'Diploma in Art and Design (Education Track)',
          'weight': '2 Principal passes including Art or Technical Drawing',
          'tuition': 'UGX 700,000 - UGX 1,500,000 per year',
        },
        'Muni University': {
          'course': 'Bachelor of Arts (with design and creativity modules)',
          'weight': '2 Principal passes in Arts subjects',
          'tuition': 'UGX 1,500,000 - UGX 3,000,000 per year',
        },
      },
    ),
    Career(
      id: '22',
      title: 'Entrepreneur',
      description: 'Start, manage, and grow new business ventures and ideas.',
      salaryRange:
          'Varies widely (UGX 1,000,000 - UGX 50,000,000 + depending on the business success)',
      subjects: ['Business', 'Economics', 'Innovation'],
      localImagePath: 'images/entrepreneur.jpeg',
      category: 'Business & Finance',
      institutions: [
        'Makerere University (various business-related programs)',
        'Makerere University Business School (MUBS)',
        'Uganda Christian University',
        'Kyambogo University',
      ],
      studyPeriod: '3-4 Years',
      weight: 'General requirements for university admission often apply',
      approximateTuition:
          'UGX 1,500,000 - UGX 4,000,000 per year (Varies by institution)',
      coursesByInstitution: {
        'Makerere University': {
          'course': 'Bachelor of Business Administration',
          'weight':
              'General university admission requirements; preferably 2 Principal passes in Business or Economics',
          'tuition': 'UGX 1,800,000 - UGX 4,200,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 45.0},
          },
        },
        'Makerere University Business School (MUBS)': {
          'course': 'Bachelor of Business Administration',
          'weight': 'General university admission requirements',
          'tuition': 'UGX 1,500,000 - UGX 3,800,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 43.0},
          },
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Business Administration',
          'weight': 'General university admission requirements',
          'tuition': 'UGX 1,600,000 - UGX 4,000,000 per year',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Business Administration',
          'weight': 'General university admission requirements',
          'tuition': 'UGX 1,400,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2024/2025': {'General': 40.5},
          },
        },
        'Busitema University': {
          'course': 'Bachelor of Business Management',
          'weight': 'General university admission requirements',
          'tuition': 'UGX 1,200,000 - UGX 3,000,000 per year',
        },
        'Gulu University': {
          'course': 'Bachelor of Business Administration',
          'weight': 'General university admission requirements',
          'tuition': 'UGX 1,100,000 - UGX 2,800,000 per year',
        },
      },
    ),
    Career(
      id: '23',
      title: 'Police Officer',
      description: 'Protect communities, investigate crimes, and enforce laws.',
      salaryRange: 'UGX 1,200,000 - UGX 5,000,000 per month',
      subjects: ['Law', 'Criminal Justice', 'Political Science'],
      localImagePath: 'images/police-officer.jpeg',
      category: 'Law & Public Service',
      institutions: [
        'Uganda Police Force Training Schools',
        'Makerere University (Law, Social Sciences)',
        'Uganda Christian University (Law, Social Sciences)'
      ],
      studyPeriod:
          'Varies based on entry level andtraining program (Months to Years)',
      weight:
          'General requirements for entry into the Police Force apply. Related degrees can be an advantage.',
      approximateTuition:
          'Training provided by the Police Force; University degrees have standard tuition fees.',
      coursesByInstitution: {
        'Uganda Police Force Training Schools': {
          'course': 'Police Officer Basic & Advanced Training',
          'weight':
              'General physical, academic, and psychological requirements for entry into the Police Force',
          'tuition': 'Training provided free by the Police Force for recruits',
        },
        'Makerere University': {
          'course': 'Bachelor of Laws / Bachelor of Social Sciences',
          'weight': '2 Principal passes including History or Literature',
          'tuition': 'UGX 1,800,000 - UGX 4,500,000 per year',
          'cutOffPoints': {
            '2024/2025': {'LLB': 48.5, 'Social Sciences': 40.0},
          },
        },
        'Uganda Christian University': {
          'course':
              'Bachelor of Laws / Bachelor of Human Rights, Peace & Humanitarian Intervention',
          'weight': '2 Principal passes including any Arts subject',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Social Work and Social Administration',
          'weight': '2 Principal passes in Arts subjects',
          'tuition': 'UGX 1,700,000 - UGX 3,500,000 per year',
        },
        'Gulu University': {
          'course':
              'Bachelor of Public Administration / Bachelor of Development Studies',
          'weight': '2 Principal passes in Arts or Social Sciences',
          'tuition': 'UGX 1,500,000 - UGX 3,200,000 per year',
        },
        'Lira University': {
          'course': 'Bachelor of Public Administration and Management',
          'weight': '2 Principal passes in Arts subjects',
          'tuition': 'UGX 1,400,000 - UGX 3,000,000 per year',
        },
      },
    ),
    Career(
      id: '11',
      title: 'Chef',
      description:
          'Prepare meals and oversee kitchen operations in restaurants and hotels.',
      salaryRange: 'UGX 1,000,000 - UGX 5,000,000',
      subjects: ['Home Economics', 'Hospitality Management'],
      localImagePath: 'images/chef.jpeg',
      category: 'Arts & Humanities',
      studyPeriod: '1-3 Years (Vocational) / 3-4 Years (University)',
      institutions: [
        'Hotel and Tourism Training Institute (HTTI) Jinja',
        'Uganda Hotel and Tourism Training Institute (UHTTI) Fort Portal',
        'Makerere University (Tourism and Hospitality Management - related)',
        'Uganda Christian University (Tourism and Hospitality Management - related)',
        'Kyambogo University (Hotel and Restaurant Management - related)'
      ],
      weight:
          'No specific principal passes often required for vocational training; University programs may require general Arts or Science passes.',
      approximateTuition:
          'UGX 800,000 - UGX 3,000,000 per year (Varies by institution and program type)',
      coursesByInstitution: {
        'Hotel and Tourism Training Institute (HTTI) Jinja': {
          'course': 'Diploma in Hotel and Institutional Catering',
          'weight': 'Certificate in Hotel Operations or equivalent',
          'tuition': 'UGX 900,000 - UGX 2,000,000 per year',
          'cutOffPoints': null,
        },
        'Uganda Hotel and Tourism Training Institute (UHTTI) Fort Portal': {
          'course': 'Diploma in Culinary Arts / Hotel Management',
          'weight': 'Certificate in Hospitality or related field',
          'tuition': 'UGX 1,000,000 - UGX 2,500,000 per year',
          'cutOffPoints': null,
        },
        'Makerere University': {
          'course': 'Bachelor of Tourism and Hospitality Management',
          'weight': '2 Principal passes including any Arts or Science subject',
          'tuition': 'UGX 2,000,000 - UGX 3,500,000 per year',
          'cutOffPoints': {
            '2024/2025': {'Male': 35.2, 'Female': 33.0},
          },
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Hospitality and Tourism Management',
          'weight': '2 Principal passes in any Arts subjects',
          'tuition': 'UGX 2,200,000 - UGX 3,500,000 per year',
          'cutOffPoints': null,
        },
        'Kyambogo University': {
          'course': 'Bachelor of Hotel and Institutional Management',
          'weight': '2 Principal passes in any relevant subject',
          'tuition': 'UGX 1,800,000 - UGX 3,000,000 per year',
          'cutOffPoints': {
            '2024/2025': {'Male': 34.7, 'Female': 32.5},
          },
        },
      },
    ),
    Career(
      id: '25',
      title: 'Electrician',
      description:
          'Install, maintain, and repair electrical systems and equipment.',
      salaryRange: 'UGX 1,000,000 - UGX 5,000,000 per month',
      subjects: ['Physics', 'Engineering', 'Technical Skills'],
      localImagePath: 'images/electrician.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'Vocational Training Institutes across Uganda (e.g., Nakawa Vocational Training Institute)',
        'Kyambogo University (Electrical Engineering - related)'
      ],
      studyPeriod: '1-3 Years (Vocational) / 4 Years (University - related)',
      weight:
          'No specific principal passes often required for vocational training; University programs require Mathematics and Physics.',
      approximateTuition:
          'UGX 500,000 - UGX 3,000,000 per year (Varies by institution and program type)',
      coursesByInstitution: {
        'Nakawa Vocational Training Institute': {
          'course':
              'Craft/Technical Certificate in Electrical Installation & Maintenance',
          'weight': 'Completed Senior 4 or Senior 6',
          'tuition': 'UGX 500,000 - UGX 1,500,000 per year',
        },
        'Uganda Technical College Elgon': {
          'course': 'Diploma in Electrical Engineering',
          'weight': 'At least 1 Principal pass in a science subject',
          'tuition': 'UGX 1,200,000 - UGX 2,000,000 per year',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Engineering in Electrical Engineering',
          'weight': '2 Principal passes including Mathematics and Physics',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
        },
        'Busitema University': {
          'course': 'Bachelor of Science in Electrical Engineering',
          'weight': '2 Principal passes including Mathematics and Physics',
          'tuition': 'UGX 2,000,000 - UGX 4,500,000 per year',
        },
        'Mbarara University of Science and Technology': {
          'course': 'Bachelor of Science in Electrical Engineering',
          'weight': '2 Principal passes in relevant science subjects',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
        },
      },
    ),
    Career(
      id: '26',
      title: 'Astronaut',
      description:
          'Trained professionals who travel to space to conduct research, experiments, and exploration.',
      salaryRange:
          'UGX 5,000,000 - UGX 50,000,000 + (varies depending on agency and mission)',
      subjects: [
        'Physics',
        'Mathematics',
        'Engineering',
        'Astronomy',
        'Biology'
      ],
      localImagePath: 'images/astronaut.jpeg',
      category: 'Engineering & Technology',
      institutions: [
        'Makerere University',
        'Kyambogo University',
        'Busitema University',
        'Mbarara University of Science and Technology'
      ],
      weight: '2 Principal passes including Mathematics and Physics',
      approximateTuition:
          'UGX 1,800,000 - UGX 4,500,000 per year (Varies by institution)',
      studyPeriod: '6-8 Years (includes multiple degrees and training)',
      coursesByInstitution: {
        'Makerere University': {
          'course':
              'Bachelor of Science in Mechanical or Electrical Engineering',
          'weight': '2 Principal passes in Mathematics and Physics',
          'tuition': 'UGX 2,000,000 - UGX 4,500,000 per year',
        },
        'Kyambogo University': {
          'course': 'Bachelor of Science in Mechanical Engineering',
          'weight': '2 Principal passes in Mathematics and Physics',
          'tuition': 'UGX 1,800,000 - UGX 4,000,000 per year',
        },
        'Mbarara University of Science and Technology': {
          'course': 'Bachelor of Science in Physics or Engineering',
          'weight': '2 Principal passes in Mathematics and Physics',
          'tuition': 'UGX 2,000,000 - UGX 4,000,000 per year',
        },
        'Busitema University': {
          'course': 'Bachelor of Science in Electrical Engineering',
          'weight': '2 Principal passes including Physics and Mathematics',
          'tuition': 'UGX 2,000,000 - UGX 4,200,000 per year',
        },
        'Uganda Christian University': {
          'course': 'Bachelor of Science in Computer Science / Physics',
          'weight': '2 Principal passes with strength in Math and Physics',
          'tuition': 'UGX 2,500,000 - UGX 4,000,000 per year',
        },
        'International Study Path': {
          'course':
              'Advanced degrees in Astrophysics, Aerospace Engineering or Medicine from international universities (NASA/ESA requirements)',
          'weight':
              'Bachelor’s and Master’s in STEM fields + pilot/military/medical experience',
          'tuition': 'Varies widely; Scholarships often required',
        },
      },
    ),
  ];

  List<String> _selectedSubjects = [];
  List<String> _selectedInterests = [];
  final List<Career> _savedCareers = [];

  List<String> get selectedSubjects => _selectedSubjects;
  List<String> get selectedInterests => _selectedInterests;
  List<Career> get careers => _careers;
  List<Career> get savedCareers => _savedCareers;

  void updateSelectedSubjects(List<String> subjects) {
    _selectedSubjects = subjects;
    notifyListeners();
  }

  void updateSelectedInterests(List<String> interests) {
    _selectedInterests = interests;
    notifyListeners();
  }

  List<Career> getFilteredCareers() {
    if (_selectedInterests.isEmpty && _selectedSubjects.isEmpty) {
      return _careers;
    }

    return _careers.where((career) {
      final interestMatch = _selectedInterests.isEmpty ||
          _selectedInterests.any((interest) =>
              career.category.toLowerCase().contains(interest.toLowerCase()));

      final subjectMatch = _selectedSubjects.isEmpty ||
          _selectedSubjects.every((subject) => career.subjects
              .any((cs) => cs.toLowerCase() == subject.toLowerCase()));

      final isEngineeringRelated =
          career.category.toLowerCase().contains('engineering') ||
              career.category.toLowerCase().contains('technology');
      final hasSufficientEngineeringSubjects = _selectedSubjects.length >= 2 &&
          _selectedSubjects.every((subject) => career.subjects
              .any((cs) => cs.toLowerCase() == subject.toLowerCase()));

      if (_selectedInterests.any(
          (interest) => interest.toLowerCase() == 'engineering & technology')) {
        return interestMatch && hasSufficientEngineeringSubjects;
      } else {
        return interestMatch &&
            (_selectedSubjects.isEmpty ||
                _selectedSubjects.any((subject) => career.subjects
                    .any((cs) => cs.toLowerCase() == subject.toLowerCase())));
      }
    }).toList();
  }

  void saveCareer(Career career) {
    if (!_savedCareers.any((c) => c.id == career.id)) {
      _savedCareers.add(career);
      notifyListeners();
    }
  }

  bool isCareerSaved(Career career) {
    return _savedCareers.any((c) => c.id == career.id);
  }
}
