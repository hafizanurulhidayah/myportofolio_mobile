import 'package:material_ui/material_ui.dart';
import 'package:myportofolio_mobile/widgets/left_drawer.dart';

class ExperienceFormPage extends StatefulWidget {
  const ExperienceFormPage({super.key});

  @override
  State<ExperienceFormPage> createState() => _ExperienceFormPageState();
}

class _ExperienceFormPageState extends State<ExperienceFormPage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _positionController = TextEditingController();
  final TextEditingController _organizationController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  DateTime? _startDate;
  DateTime? _endDate;

  String? _startDateError;
  String? _endDateError;

  Future<void> _selectDate(bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate
          ? (_startDate ?? DateTime.now())
          : (_endDate ?? _startDate ?? DateTime.now()),
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
          _startDateError = null;

          if (_endDate != null && _endDate!.isBefore(picked)) {
            _endDate = null;
          }
        } else {
          _endDate = picked;
          _endDateError = null;
        }
      });
    }
  }

  String? _validateRequired(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Field ini wajib diisi!';
    }

    if (value.trim().length < 2) {
      return 'Minimal 2 karakter!';
    }

    return null;
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  void _saveExperience() {
    final isFormValid = _formKey.currentState!.validate();

    setState(() {
      _startDateError = _startDate == null ? 'Start Date wajib dipilih!' : null;

      _endDateError = _endDate == null ? 'End Date wajib dipilih!' : null;

      if (_startDate != null &&
          _endDate != null &&
          _endDate!.isBefore(_startDate!)) {
        _endDateError = 'End Date tidak boleh sebelum Start Date!';
      }
    });

    if (!isFormValid || _startDateError != null || _endDateError != null) {
      return;
    }

    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Experience berhasil ditambahkan!'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Position: ${_positionController.text.trim()}'),
                const SizedBox(height: 8),
                Text('Organization: ${_organizationController.text.trim()}'),
                const SizedBox(height: 8),
                Text('Description: ${_descriptionController.text.trim()}'),
                const SizedBox(height: 8),
                Text('Start Date: ${_formatDate(_startDate!)}'),
                const SizedBox(height: 8),
                Text('End Date: ${_formatDate(_endDate!)}'),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(dialogContext);

                _formKey.currentState!.reset();

                _positionController.clear();
                _organizationController.clear();
                _descriptionController.clear();

                setState(() {
                  _startDate = null;
                  _endDate = null;
                  _startDateError = null;
                  _endDateError = null;
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _positionController.dispose();
    _organizationController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Add Experience Form')),
        backgroundColor: const Color(0xFFF35F9B),
        foregroundColor: Colors.white,
      ),

      drawer: const LeftDrawer(),

      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Position / Role
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _positionController,
                  decoration: InputDecoration(
                    hintText: 'Contoh: Software Engineer Intern',
                    labelText: 'Position / Role',
                    prefixIcon: const Icon(Icons.work_outline),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  validator: _validateRequired,
                ),
              ),

              // Organization
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _organizationController,
                  decoration: InputDecoration(
                    hintText: 'Contoh: RISTEK Fasilkom UI',
                    labelText: 'Organization',
                    prefixIcon: const Icon(Icons.business),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  validator: _validateRequired,
                ),
              ),

              // Description
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _descriptionController,
                  maxLines: 5,
                  decoration: InputDecoration(
                    hintText: 'Deskripsi pengalaman',
                    labelText: 'Description',
                    alignLabelWithHint: true,
                    prefixIcon: const Icon(Icons.description_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  validator: _validateRequired,
                ),
              ),

              // Start Date
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () => _selectDate(true),
                      icon: const Icon(Icons.calendar_today),
                      label: Text(
                        _startDate == null
                            ? 'Select Start Date'
                            : 'Start Date: ${_formatDate(_startDate!)}',
                      ),
                    ),
                    if (_startDateError != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 12),
                        child: Text(
                          _startDateError!,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              // End Date
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () => _selectDate(false),
                      icon: const Icon(Icons.calendar_today),
                      label: Text(
                        _endDate == null
                            ? 'Select End Date'
                            : 'End Date: ${_formatDate(_endDate!)}',
                      ),
                    ),
                    if (_endDateError != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 5, left: 12),
                        child: Text(
                          _endDateError!,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.error,
                            fontSize: 12,
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              // Save Button
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0xFFF35F9B),
                      ),
                    ),
                    onPressed: _saveExperience,
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
