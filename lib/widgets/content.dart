import 'package:flutter/material.dart';

class ContentWidget extends StatefulWidget {
  const ContentWidget({super.key});

  @override
  State<ContentWidget> createState() => _ContentWidgetState();
}

class _ContentWidgetState extends State<ContentWidget> {
  bool isEasySearch = true; // untuk tracking tab aktif
  String? selectedBrand;
  String? selectedSeries;
  String? selectedModel;

   @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        color: Colors.orange,
      ),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1080), // Sama dengan header
          padding: const EdgeInsets.symmetric(horizontal: 24), // Sama dengan header
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  'FIND THE RIGHT CARTRIDGES FOR YOUR PRINTER',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  children: [
                    // Tab buttons
                    Row(
                      children: [
                        Expanded(
                          child: _buildTabButton(
                            '3-Step Easy Search®',
                            isEasySearch,
                            () => setState(() => isEasySearch = true),
                          ),
                        ),
                        Expanded(
                          child: _buildTabButton(
                            'Search by Serial Number',
                            !isEasySearch,
                            () => setState(() => isEasySearch = false),
                          ),
                        ),
                      ],
                    ),
                    // Search form
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Expanded(
                            child: _buildDropdown(
                              '1. Printer Brand',
                              ['Sony', 'Toshiba'],
                              selectedBrand,
                              (value) => setState(() => selectedBrand = value),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: _buildDropdown(
                              '2. Printer Series',
                              ['2300px', '1200px'],
                              selectedSeries,
                              (value) => setState(() => selectedSeries = value),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: _buildDropdown(
                              '3. Printer Model',
                              ['Slim', 'HDD'],
                              selectedModel,
                              (value) => setState(() => selectedModel = value),
                            ),
                          ),
                          const SizedBox(width: 16),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero,
                              ),
                            ),
                            child: const Text(
                              'FIND CARTRIDGES',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabButton(String text, bool isActive, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: isActive ? Colors.blue : Colors.grey[200],
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown(
    String hint,
    List<String> items,
    String? value,
    void Function(String?) onChanged,
  ) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      ),
      value: value,
      items: items.map((item) {
        return DropdownMenuItem(
          value: item,
          child: Text(item),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
