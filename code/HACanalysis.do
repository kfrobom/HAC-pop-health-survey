capture log close
log using HACanalysis.log, replace

clear all
set more off

import excel "U:\KEF_­HAC Population Health Survey 2017-07-26 - responses downloaded 2017-08-21 .xlsx", sheet("HAC Population Health Survey 20") firstrow

tab Village
* eliminate "testing"
drop in 291

tab Village
tab Language
tab Gender
tab Age
tab YearsOfResidency
tab Village YearsOfResidency

tab MonthsAwayYN
tab MonthsAwayNumber
tab MonthsAwayWhich
tab MonthsAwayLocations
tab MonthsAwayReasons
tab MonthsAwayReasonsOther

tab MaritalStatus
tab MultipleWivesHusband
tab MultipleWivesWife

tab HouseholdAdults
tab HouseholdChildren
tab HouseholdTotal

tab EducationLevel
tab IncomeSources
tab IncomeSourcesOther

tab NewsSource
tab WaterSource
tab WaterSourceOther

tab HealthcareAccessed
tab HealthcareChildren
tab HealthcareLocation
tab HealthcareLocationFrequent
tab HealthcareLocationFrequentReason

tab HealthcareMissed
tab HealthcareMissedReason
tab HealthcareLast
tab HealthcareLastLocation
tab HealthcareLastTransport
tab HealthcareLastTransportTime
tab HealthcareLastTransportCost

tab FamilyPlanningYN
tab FamilyPlanningWhyNot
tab FamilyPlanningUse
tab FamilyPlanningPreferred
tab FamilyPlanningPreferredYN
tab FamilyPlanningPreferredWhyNot

tab HIVDiscussYN
tab HIVTestYN
tab HIVTestWhyNot
tab HIVTestLast
tab HIVTestResults

tab ARTStartYN
tab ARTStartWhyNot
tab ARTStartLocation
tab ARTCurrent
tab ARTCurrentWhyNot
tab ARTLocation
tab ARTLocationType
tab ARTLocationReason
tab ARTMissedYN
tab ARTMissedReason

tab ViralLoadYN
tab ViralLoadLast
tab ViralLoadLocation
tab ViralLoadResults
tab ViralLoadTime
tab ViralLoadExplain

tab HIVTreatments

tab EQMobility
tab EQSelfCare
tab EQActivities
tab EQPain
tab EQAnxiety
tab EQScale


/* Euroqol analysis? */

/*Will need to come back to this section for creation of categories*/

generate MAWJan = regexm(MonthsAwayWhich, "Jan") if MonthsAwayNumber~=.
tab MAWJan, missing
list MonthsAwayWhich if MAWJan==1

tab MonthsAwayWhich

/* Suggested by data center */
gen january=strpos(MonthsAwayWhich,"January")>0 | strpos(MonthsAwayWhich,"Jan")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0
gen april=strpos(MonthsAwayWhich,"April")>0 | strpos(MonthsAwayWhich,"Apr")>0


save "U:/Health Survey cleaned.dta", replace

log close
