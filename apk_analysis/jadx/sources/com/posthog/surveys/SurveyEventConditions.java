package com.posthog.surveys;

import defpackage.aa4;
import defpackage.qg;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyEventConditions {
    private final Boolean repeatedActivation;
    private final List<SurveyEventCondition> values;

    public SurveyEventConditions(Boolean bool, List<SurveyEventCondition> list) {
        list.getClass();
        this.repeatedActivation = bool;
        this.values = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SurveyEventConditions copy$default(SurveyEventConditions surveyEventConditions, Boolean bool, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            bool = surveyEventConditions.repeatedActivation;
        }
        if ((i & 2) != 0) {
            list = surveyEventConditions.values;
        }
        return surveyEventConditions.copy(bool, list);
    }

    public final Boolean component1() {
        return this.repeatedActivation;
    }

    public final List<SurveyEventCondition> component2() {
        return this.values;
    }

    public final SurveyEventConditions copy(Boolean bool, List<SurveyEventCondition> list) {
        list.getClass();
        return new SurveyEventConditions(bool, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurveyEventConditions)) {
            return false;
        }
        SurveyEventConditions surveyEventConditions = (SurveyEventConditions) obj;
        return aa4.e(this.repeatedActivation, surveyEventConditions.repeatedActivation) && aa4.e(this.values, surveyEventConditions.values);
    }

    public final Boolean getRepeatedActivation() {
        return this.repeatedActivation;
    }

    public final List<SurveyEventCondition> getValues() {
        return this.values;
    }

    public int hashCode() {
        Boolean bool = this.repeatedActivation;
        return this.values.hashCode() + ((bool == null ? 0 : bool.hashCode()) * 31);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SurveyEventConditions(repeatedActivation=");
        sb.append(this.repeatedActivation);
        sb.append(", values=");
        return qg.f(sb, this.values, ')');
    }
}
