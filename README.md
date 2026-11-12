# Windows Logon Investigation

**Ashique Meethale Purayil** · SOC portfolio practice

## Objective

I reviewed a simulated Windows Security event summary for the `finance01` account. My goal was to identify the successful logon and compare its source IP with the earlier failed attempts. Source A and Source B represent two different IP addresses in the exercise.

## Event timeline

| Time | Windows Event ID | Account | Source IP | Outcome |
| --- | --- | --- | --- | --- |
| Before 10:04 | `4625` | `finance01` | Source A | 3 failed logon attempts |
| 10:04 | `4624` | `finance01` | Source B | 1 successful logon |

## Triage decision

The **10:04 logon from Source B** is the event I would verify first. The records involve the same account and two distinct source IPs. Whether the successful logon was authorized and whether the two sources were related remain open questions.

## Next checks

1. Review the logon type, source address, and destination computer for the 10:04 event.
2. Compare Source B with the account's recent sign-ins to check whether that access was expected.
3. Check whether Source A generated failed logons for other accounts in the same time window.

## References

- [Microsoft Learn — Event 4624, successful logon](https://learn.microsoft.com/windows/security/threat-protection/auditing/event-4624)
- [Microsoft Learn — Event 4625, failed logon](https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-10/security/threat-protection/auditing/event-4625)
