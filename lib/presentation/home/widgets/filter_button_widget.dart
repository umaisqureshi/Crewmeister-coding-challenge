import 'package:crewmeister_coding_challenge/presentation/presentation.dart';

class FilterButtonWidget extends StatefulWidget {
  final FilterType type;
  final DateTime? start;
  final DateTime? end;
  const FilterButtonWidget(
      {super.key, required this.type, this.end, this.start});

  @override
  State<FilterButtonWidget> createState() => _FilterButtonWidgetState();
}

class _FilterButtonWidgetState extends State<FilterButtonWidget> {
  bool showSubOptions = false;
  bool showDateSubOptions = false;
  DateTime? startDate;
  DateTime? endDate;
  late FilterType type;

  @override
  void initState() {
    super.initState();
    setValues();
  }

  @override
  void didUpdateWidget(covariant FilterButtonWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    setValues();
  }

  void setValues() {
    type = widget.type;
    showSubOptions = type != FilterType.CLEAR && type != FilterType.DATE;
    showDateSubOptions = type == FilterType.DATE;
    startDate = widget.start;
    endDate = widget.end;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showCustomDialog(context),
      child: Badge(
        backgroundColor: context.appColorScheme.onSecondary,
        textColor: context.appColorScheme.backgroundColor,
        label: Text(type != FilterType.CLEAR ? "1" : "0"),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: context.appColorScheme.shadow,
                blurRadius: 10,
                offset: const Offset(-2, 9),
              ),
            ],
            borderRadius: BorderRadius.circular(40),
            color: context.appColorScheme.backgroundColor,
          ),
          child: Icon(
            Icons.filter_list,
            color: context.appColorScheme.onSecondary,
          ),
        ),
      ),
    );
  }

  void _showCustomDialog(
    BuildContext context,
  ) {
    showDialog(
      context: context,
      useRootNavigator: true,
      useSafeArea: true,
      builder: (_) {
        return StatefulBuilder(
          builder: (_, setState) {
            return AlertDialog(
              backgroundColor: context.appColorScheme.backgroundColor,
              title: Text(
                'Filter',
                style: TextStyle(
                  color: context.appColorScheme.onSecondary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _buildListTile(
                      context,
                      'Type',
                      showSubOptions,
                      () => setState(() {
                        showSubOptions = !showSubOptions;
                      }),
                    ),
                    if (showSubOptions) _buildFilterOptions(context),
                    _buildListTile(
                      context,
                      'Date',
                      showDateSubOptions,
                      () => setState(() {
                        showDateSubOptions = !showDateSubOptions;
                      }),
                    ),
                    if (showDateSubOptions) _buildDateSelector(context),
                  ],
                ),
              ),
              actions: _buildDialogActions(context),
            );
          },
        );
      },
    );
  }

  Widget _buildListTile(
      BuildContext context, String title, bool isExpanded, VoidCallback onTap) {
    return ListTile(
      trailing: Icon(
        isExpanded ? Icons.expand_less : Icons.expand_more,
        color: context.appColorScheme.onSecondary,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: context.appColorScheme.onSecondary,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _buildFilterOptions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
        children: [
          _buildFilterOption(
            context,
            'Sickness',
            FilterType.SICKNESS,
          ),
          _buildFilterOption(
            context,
            'Vacation',
            FilterType.VACATION,
          ),
        ],
      ),
    );
  }

  Widget _buildFilterOption(
      BuildContext context, String label, FilterType filterType) {
    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: type == filterType
              ? Colors.green
              : context.appColorScheme.onSecondary,
          fontWeight: FontWeight.w300,
          fontSize: 10,
        ),
      ),
      onTap: () {
        context.read<HomeBloc>().add(GetFilterAbsenceEvent(type: filterType));
        Navigator.of(context).pop();
      },
    );
  }

  Widget _buildDateSelector(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDateSelectorField(context, 'Start', (date) {
            setState(() {
              startDate = date;
            });
            context.read<HomeBloc>().add(UpdateStartDateEvent(start: date));
          }, startDate),
          const SizedBox(height: 5),
          _buildDateSelectorField(context, 'End', (date) {
            setState(() {
              endDate = date;
            });
            context.read<HomeBloc>().add(UpdateEndDateEvent(end: date));
          }, endDate),
          const SizedBox(height: 10),
          _buildApplyButton(context),
        ],
      ),
    );
  }

  Widget _buildDateSelectorField(BuildContext context, String label,
      Function(DateTime) dateData, DateTime? date) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: context.appColorScheme.onSecondary,
            fontWeight: FontWeight.w300,
            fontSize: 10,
          ),
        ),
        const SizedBox(height: 5),
        DateSelectorWidget(
          dateDate: date,
          onDateSelected: (date) {
            dateData.call(date);
          },
        ),
      ],
    );
  }

  Widget _buildApplyButton(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          if (startDate != null && endDate != null) {
            if (startDate!.isAfter(endDate!)) {
              ScaffoldMessenger.of(context).showSnackBar(
                  getSnackBar(context, "Start date cannot be after end date"));
            } else {
              context
                  .read<HomeBloc>()
                  .add(const GetFilterAbsenceEvent(type: FilterType.DATE));
            }
            Navigator.of(context).pop();
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
                getSnackBar(context, "Please select start and end both dates"));
          }
        },
        child: Container(
          width: context.screenSize.width * 0.4,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            color: context.appColorScheme.primary,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              "Apply",
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: context.appColorScheme.backgroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDialogActions(BuildContext context) {
    return <Widget>[
      TextButton(
        style: _buildButtonStyle(context),
        onPressed: () => Navigator.of(context).pop(),
        child: Text(
          'Close',
          style: TextStyle(
            color: context.appColorScheme.onSecondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      TextButton(
        style: _buildButtonStyle(context),
        onPressed: () {
          context.read<HomeBloc>().add(ClearFilterEvent());
          Navigator.of(context).pop();
        },
        child: Text(
          'Clear',
          style: TextStyle(
            color: context.appColorScheme.onSecondary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ];
  }

  ButtonStyle _buildButtonStyle(BuildContext context) {
    return ButtonStyle(
      elevation: const WidgetStatePropertyAll<double>(5),
      shadowColor: WidgetStatePropertyAll<Color>(context.appColorScheme.shadow),
      backgroundColor:
          WidgetStatePropertyAll<Color>(context.appColorScheme.backgroundColor),
    );
  }
}
