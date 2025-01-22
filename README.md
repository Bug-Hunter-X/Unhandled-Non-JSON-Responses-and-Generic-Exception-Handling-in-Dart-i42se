# Dart: Unhandled Non-JSON Responses and Generic Exception Handling

This example demonstrates a common issue in Dart where non-JSON responses from an API are not handled correctly, and exception handling is too general.  This can lead to runtime crashes or unexpected behavior.

The `bug.dart` file shows the flawed code, while `bugSolution.dart` provides a corrected version.

**Key Issues:**

* **Assuming JSON response:** The code assumes the response is always JSON without checking the `Content-Type` header.  This can cause a `FormatException` if the response is not JSON.
* **Generic exception handling:** The `catch` block is too broad, providing little information about the actual error.  Specific exceptions should be caught and handled appropriately.
* **Lack of status code handling:**  It only checks for a `200` status code.  Other status codes (e.g., 404, 500) are crucial for error handling and should be dealt with accordingly.