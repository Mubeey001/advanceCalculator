import 'package:calculator/data/calculator_model.dart';
import 'package:calculator/routes/routes.dart';
import 'package:calculator/util/constants/images.dart';

List<CalculatorModel> calculators = [
  CalculatorModel(
    id: '1',
    name: 'BMI Calculator',
    route: Routes.bimScreenRoute,
    icon: AppImages.bmi,
  ),
  CalculatorModel(
    id: '2',
    name: 'Loan Calculator',
    route: Routes.loanScreenRoute,
    icon: AppImages.loan,
  ),
  CalculatorModel(
    id: '3',
    name: 'GST Calculator',
    route: Routes.gstScreenRoute,
    icon: AppImages.gst,
  ),
  CalculatorModel(
    id: '4',
    name: 'FD Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.fd,
  ),
  CalculatorModel(
    id: '5',
    name: 'RD Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.rd,
  ),
  CalculatorModel(
    id: '6',
    name: 'EPF',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.epf,
  ),
  CalculatorModel(
    id: '7',
    name: 'Incoming Tax Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.tax,
  ),
  CalculatorModel(
    id: '8',
    name: 'PPF Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.ppf,
  ),
  CalculatorModel(
    id: '9',
    name: 'SWP Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.swp,
  ),
  CalculatorModel(
    id: '10',
    name: 'Mutual Returns Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.mutual,
  ),
  CalculatorModel(
    id: '11',
    name: 'Sukanya Samriddhi Yonaja Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.sukanya,
  ),
  CalculatorModel(
    id: '12',
    name: 'Sip Calculator',
    route: Routes.coomingSoonScreenRoute,
    icon: AppImages.sip,
  ),
];
