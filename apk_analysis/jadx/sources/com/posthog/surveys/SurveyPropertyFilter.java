package com.posthog.surveys;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyPropertyFilter {
    private final SurveyMatchType operator;
    private final List<String> values;

    public SurveyPropertyFilter(List<String> list, SurveyMatchType surveyMatchType) {
        list.getClass();
        surveyMatchType.getClass();
        this.values = list;
        this.operator = surveyMatchType;
    }

    public final SurveyMatchType getOperator() {
        return this.operator;
    }

    public final List<String> getValues() {
        return this.values;
    }
}
