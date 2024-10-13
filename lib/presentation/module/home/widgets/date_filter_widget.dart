import 'package:crewmeister_coding_challenge/presentation/presentation.dart';
import 'package:intl/intl.dart';

class DateSelectorWidget extends StatefulWidget {
  final Function(DateTime) onDateSelected;
  final DateTime? dateDate;
  const DateSelectorWidget(
      {Key? key, required this.onDateSelected, required this.dateDate})
      : super(key: key);

  @override
  State<DateSelectorWidget> createState() => _DateSelectorWidgetState();
}

class _DateSelectorWidgetState extends State<DateSelectorWidget> {
  DateTime? _selectedDate;
  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePickerDialog(
      context: context,
      initialDate: DateTime.now(),
      minDate: DateTime(2000, 10, 10),
      maxDate: DateTime(2024, 10, 30),
      width: context.screenSize.width * 0.8,
      height: 400,
      selectedDate: DateTime.now(),
      currentDateDecoration: const BoxDecoration(),
      currentDateTextStyle: GoogleFonts.inter(),
      daysOfTheWeekTextStyle: GoogleFonts.inter(
        fontSize: 12,
        color: context.appColorScheme.primary,
      ),
      disabledCellsTextStyle: GoogleFonts.inter(
        color: context.appColorScheme.primary.withOpacity(0.3),
      ),
      enabledCellsDecoration: const BoxDecoration(),
      enabledCellsTextStyle: GoogleFonts.inter(
        color: context.appColorScheme.primary,
      ),
      initialPickerType: PickerType.days,
      selectedCellDecoration: BoxDecoration(
          color: context.appColorScheme.primary,
          borderRadius: BorderRadius.circular(20)),
      selectedCellTextStyle: GoogleFonts.inter(
          fontWeight: FontWeight.w900,
          color: context.appColorScheme.backgroundColor),
      slidersColor: context.appColorScheme.primary,
      slidersSize: 20,
      splashColor: context.appColorScheme.backgroundColor,
      splashRadius: 40,
      centerLeadingDate: true,
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
      widget.onDateSelected(pickedDate); // Return selected date via callback
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: context.appColorScheme.onSecondary),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today,
              color: context.appColorScheme.primary,
              size: 10,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              _selectedDate != null
                  ? DateFormat('dd MMM yyyy').format(_selectedDate!)
                  : widget.dateDate != null
                      ? DateFormat('dd MMM yyyy').format(widget.dateDate!)
                      : "Select Date",
              style: GoogleFonts.inter(
                  fontSize: 10, color: context.appColorScheme.primary),
            ),
          ],
        ),
      ),
    );
  }
}
