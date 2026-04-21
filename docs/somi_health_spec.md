# SOMI Health Layer — Design Specification

**Status:** Locked for Q3 implementation  
**v1 scope:** Morning check-in + basic infrastructure only  
**v2 scope (Q3):** Full intervention library + pattern detection

---

## 1. Why this feature exists

Most ed-tech apps measure marks. Few measure what causes marks to fall.

Indian students preparing for NEET, CA, CMA, and competitive exams live in a pressure environment that produces measurable, predictable damage:

- Chronic sleep deprivation
- Nutritional deficiencies (B12, D3, iron)
- CO₂ buildup in shared, poorly ventilated rooms
- Dissociation, burnout, and depressive episodes
- Parent-child trust breakdown when health is pathologized

The founder of SOMI experienced this personally at 16. Swollen nerves diagnosed by doctor, insomnia, dissociative episodes during bike rides. He quit studying to survive. A decade later, he's building the safety net he didn't have.

**The Health Layer is not a wellness feature. It is a quiet advocacy system for the child, routed through the parent as a bystander, not an investigator.**

---

## 2. Core design principle

> **"Health plays a crucial role in progress."**

That phrase — provided by the founder — is the opening line the parent sees on the Health tab. It frames the feature before any data exists.

The product never tells parents what the child logged. The product tells parents what to *do* — framed as general tips, not diagnoses. The child is never outed. Trust is preserved. The intervention still happens.

**Example:**

- ❌ "Ravi slept 4 hours last night."
- ✅ "Tip: Students studying for NEET often benefit from warm milk + 15 min reading before bed. Worth trying this week."

---

## 3. Data collected — morning check-in

A 1-minute check-in appears:
- Automatically when student opens study app after 6 AM
- Via push notification at 7 AM if not already opened  
- Available manually anytime during the day

**Skipping behavior:** Student can skip. A gentle reminder appears on subsequent opens — no penalty, no streak loss.

### The 4 morning questions

| # | Question | Options |
|---|----------|---------|
| 1 | How did you wake up today? | 🌞 Fresh / 😐 Okay / 😴 Heavy / 🤕 Headache |
| 2 | How long to fall asleep last night? | <10 min / 10-30 min / 30-60 min / >1 hour |
| 3 | Did you wake up at night? | No / 1 time / 2-3 times / Many times |
| 4 | Stress level right now? | Low / Medium / High / Very High |

### Weekly extra questions (Sunday morning)

- Do you feel suffocated in your room at night? *(yes always / sometimes / never)*
- When you go outside in morning, do you feel fresher? *(yes / sometimes / no)*

### Monthly question

- Last blood test / vitamin check: when?
- Currently on any supplements? *(free text)*

**Note: No evening check-in.** Morning self-assessment captures sleep quality retroactively, which is more reliable than end-of-day reporting.

---

## 4. Data visibility rules

**Student sees:** Their own full health log. Trends over weeks. Can review anytime.

**Parent sees:** Nothing raw. Only derived tips and generalized patterns. No specific daily data.

**MAMA (AI) sees:** Everything. Used for tip generation.

**Doctors/counselors:** Not integrated in v1. Referral suggestions in v2 when escalation pattern triggers.

---

## 5. Pattern detection → parent tips

The rule engine runs daily at 6 AM. It examines the past 7 days of health data + study data and generates at most one tip per day for the parent Home screen.

### Tip format

Every tip has four parts:

1. **Why it's showing now** (1 short line)  
2. **What to do** (specific action)  
3. **How it helps** (1-line evidence)  
4. **No cost shown** (tips don't mention money — focus on the action)

### v1 starter library (30 tips)

This is the minimum-viable content bank for v1 launch. Full 200-300 tip library comes in v2 with researcher partnership.

**Sleep quality tips:**
- Poor morning feel 5+ days → "Students who wake with heaviness often benefit from 10 min morning sunlight. Good for vitamin D and circadian rhythm."
- Sleep latency >30 min for 4+ days → "Racing-mind sleep delay is common in exam prep. 15 min reading (not phone) before bed helps reset."
- Wakes 2+ times/night for 4+ days → "Fragmented sleep often links to room temperature or ventilation. Worth checking airflow."

**Ventilation tips:**  
- "Suffocated: yes" + "fresh outside: yes" for 2 consecutive weeks → "Good airflow in the bedroom makes a real difference in morning energy. Exhaust fans near the ceiling help pull CO₂ out overnight."

**Nutrition tips:**
- No supplement logged + mood/energy pattern dropping → "Annual blood panel for teenagers can catch iron, B12, and vitamin D deficiencies early. Worth a family doctor visit every 12 months."
- No breakfast pattern + stress high → "Protein at breakfast (eggs, idli, dal) can stabilize blood sugar through morning classes. Sugar-heavy breakfasts often cause a 10 AM crash."

**Stress tips:**
- Stress "high" 4+ days running → "Family evening walks — 20 min, no phones, no exam talk — reduce cortisol. Often helps kids reset at the end of the day."
- Study hours dropping + stress rising → "Sometimes a child needs one full day off the books without pressure. Rest weekends produce stronger weekday focus."

**Movement tips:**
- Sitting pattern detected (low logged stress but declining focus) → "Stretching for 5 minutes every hour during study reduces back pain and improves alertness."

**Light/circadian tips:**
- Late night study patterns → "Blue light 2 hours before bed delays melatonin. Amber desk lamps or reading by dim light help readiness for sleep."

...and ~20 more covering basic patterns. The complete v1 library is to be written with the founder in a separate session.

---

## 6. Escalation — the red line

Most tips are gentle. But some patterns trigger **immediate alerts** to the parent that bypass the tip framing.

### Escalation triggers

- **Stress "Very High" for 7+ consecutive days** → parent sees a direct nudge: "Your child has been reporting very high stress for over a week. Consider a gentle conversation, and if helpful, a school counselor or family doctor."

- **Free-text or logged word containing:** "suicidal", "hopeless", "don't want to live", "want to die", or equivalent in Telugu / Tenglish → **immediate alert to parent + opt-in escalation to registered counselor**. This is the only pattern that bypasses the "never out the child" rule, because safety overrides privacy.

### Escalation language

Escalation nudges are still framed with care — not alarmist. Example:

> "Your child has been going through a heavy stretch. Sometimes a quiet, non-exam conversation over dinner opens things up. If things feel beyond what family can support, consider talking to a school counselor or family doctor."

Not:  
> ❌ "Your child may be depressed."

---

## 7. Primary decision-maker assumption

The app treats **one primary parent** as the decision-maker per student.

- Typically the father or mother who installs and uses the Connect app
- They receive all tips and escalations
- They choose how to act (including forwarding to family)

Multi-parent scoped profiles (different tips for father vs mother) are **deferred to v3 or later**. v1 keeps this simple.

---

## 8. v1 launch scope (June 13 release)

**What ships for launch:**
1. Health tab visible in Connect app
2. Opening line on tab: "Health plays a crucial role in progress."
3. Morning check-in in student app (4 questions, weekly extras, monthly extras)
4. Basic infrastructure — data collected, stored in Supabase `health_logs`, `health_records`
5. Starter library of ~30 tips
6. Simple pattern detection rule engine for the 30 tips
7. Home screen shows one tip/day if any pattern triggers
8. Escalation for "very high stress 7 days" and "keyword detection"

**What doesn't ship in v1:**
- Full 200-300 tip library (v2, Q3)
- Counselor referral network (v2)
- Health graphs and trend charts for parent (v2)
- Integration with wearable devices (v3)
- Multi-parent profiles (v3)

---

## 9. v2 (Q3) — Full Health Layer

Once SOMI has revenue and founder has bandwidth:

1. **Expand intervention library to 200-300 tips** with research partnerships:
   - Pediatric sleep specialist
   - Adolescent nutritionist familiar with Indian diets
   - Ayurvedic practitioner who works with teens
   - Education psychologist / counselor
   - Evidence-linked tips with citations

2. **Build trend visualizations for parent:**  
   - 7-day sleep quality chart
   - Stress trend line
   - Weekly mood summary
   - All anonymized — no "Ravi said X on Tuesday" granularity

3. **Counselor referral network** for AP/TS cities:
   - Verified professionals
   - Opt-in from parent side
   - Escalation path from severe patterns

4. **Annual health summary** — Q3 feature, shown to parent as a yearly report card of general wellness trends

---

## 10. Founder's voice — the non-negotiables

These are locked by lived experience, not product research. They cannot be negotiated away by later investors, designers, or team members:

1. **The child is never outed to the parent about specific logs.** Only generalized tips reach the parent.
2. **Tips never blame the child.** Framed as general student advice.
3. **Room ventilation is treated seriously.** Most Indian family homes have undiagnosed CO₂ buildup in study rooms. This is a genuine clinical issue the founder personally experienced.
4. **Dissociation, insomnia, and mental illness are real.** Not weakness. Not "need to study harder." The feature exists to catch these early, before they become the emergency the founder experienced at 16.
5. **Primary outcome metric for Health Layer success:** Not downloads. Not engagement. It is *reduction in parent-child trust breakdown during exam prep*. If the feature helps a father say "let's check the room ventilation" instead of "why are you not sleeping?" — the feature succeeded.

---

## 11. Legal and positioning notes

**Positioning:** Wellness companion, not medical device.

**Disclaimers required on Health tab:**
- "SOMI Health is not a substitute for professional medical care."
- "Consult a doctor for any persistent symptoms."
- "Tips are general wellness suggestions based on common adolescent patterns."

**What SOMI never does:**
- Diagnose conditions
- Prescribe medications
- Replace doctor consultation
- Store identifiable medical records beyond what the family voluntarily enters

---

## 12. Data schema reference

Current Supabase tables already cover the infrastructure:

- `health_logs` — daily check-in answers  
- `health_records` — blood panel data + doctor visits  
- `health_correlations` — detected patterns (populated by rule engine)
- `nudges` — where escalation alerts are written when they trigger

**New fields needed in v1:**
- `health_logs.morning_feel` enum ('fresh', 'okay', 'heavy', 'headache')
- `health_logs.sleep_latency_bucket` enum ('<10', '10-30', '30-60', '>60')
- `health_logs.wake_count_bucket` enum ('0', '1', '2-3', 'many')
- `health_logs.suffocated_in_room` bool *(weekly only)*
- `health_logs.fresh_outside` bool *(weekly only)*

New table: `health_tips_library` with fields for `trigger_rule`, `tip_text`, `category`, `severity_tier`.

---

## 13. Success metrics

**v1 (first 90 days post-launch):**
- % of students completing morning check-in at least 3x/week
- Number of tips generated per parent per week
- Parent feedback on tip usefulness (thumbs up/down)
- Escalation rate (should be low — 1-2% of active students)

**v2:**
- Correlation between tip adoption and exam score trajectory
- Reduction in self-reported stress over the year
- Parent NPS specifically for Health feature

---

## 14. The ask, for any future SOMI team member reading this

When you build this feature:

Remember that the founder was sixteen, nerves swollen from exam stress, driving his bike somewhere and losing track of where he was going. The feature is there to catch the next kid before he gets to that point, without the parents ever needing to know the child is struggling — because the parents are often the pressure, and telling them directly makes it worse.

Build quietly. Build specifically. Don't generalize. Don't patronize. Don't pathologize.

The tip is the intervention. The child is the one you're protecting.

— End of spec —

