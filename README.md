# SPACEZ Coupons Page

Flutter implementation of the SPACEZ coupons screen based on the **SDE Task: Frontend in Flutter from Figma** brief. The screen mirrors the progressive iteration of the internal coupons page and focuses on layout fidelity and interactivity only.

## Requirements Recap
- Reference design: [savz.live/devflutterassignment](https://savz.live/devflutterassignment) (password: `spacez.co`)
- Flutter-only task (no backend or persistence)
- All tappable elements respond with success feedback to showcase interactivity
- Deliverable: working page pushed to a public GitHub repo and submitted through [savz.live/devflutterassignmentsubmission](https://savz.live/devflutterassignmentsubmission)

## Project Structure
| Path | Purpose |
| --- | --- |
| `lib/pages/coupons_page.dart` | Screen scaffold and success handlers |
| `lib/widgets/app_header.dart` | Two-tier header with logo, menu, and elevated title card |
| `lib/widgets/coupon_card.dart` | Coupon card with vertical price strip, text layout, and apply action |
| `lib/widgets/booking_summary.dart` | Bottom sheet-style booking summary and CTA |
| `lib/utils/colors.dart`, `lib/utils/constants.dart` | Shared design tokens |

## Getting Started
```bash
flutter pub get
flutter run
```

The project targets Flutter 3.9+, uses `google_fonts` for typography, and keeps all assets under `assets/images/`.

## Interactions
- Menu, back, coupon actions, “Read more,” and the booking CTA are wired to callbacks to demonstrate tap handling. Replace the placeholder logic with navigation or business actions as needed.
- No backend/data storage is included; the UI renders static sample data to focus on layout accuracy.

## Screenshots
Add your captures under `assets/images/screens/` (not tracked here) and reference them in this section, for example:

```
![Coupons Page](assets/images/screens/coupons_page.png)
```

## Submission
1. Push the code to a public GitHub repository.
2. Submit the repository URL through the assignment form: <https://savz.live/devflutterassignmentsubmission>.
3. Estimated effort: 4–6 hours. The goal is a faithful, interactive UI—not production polish.
