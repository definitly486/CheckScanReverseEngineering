package com.posthog.surveys;

import defpackage.aa4;
import defpackage.g2;
import defpackage.jh2;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyEventCondition {
    private final String name;
    private final Map<String, SurveyPropertyFilter> propertyFilters;

    public SurveyEventCondition(String str, Map<String, SurveyPropertyFilter> map) {
        str.getClass();
        this.name = str;
        this.propertyFilters = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SurveyEventCondition copy$default(SurveyEventCondition surveyEventCondition, String str, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            str = surveyEventCondition.name;
        }
        if ((i & 2) != 0) {
            map = surveyEventCondition.propertyFilters;
        }
        return surveyEventCondition.copy(str, map);
    }

    public final String component1() {
        return this.name;
    }

    public final Map<String, SurveyPropertyFilter> component2() {
        return this.propertyFilters;
    }

    public final SurveyEventCondition copy(String str, Map<String, SurveyPropertyFilter> map) {
        str.getClass();
        return new SurveyEventCondition(str, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurveyEventCondition)) {
            return false;
        }
        SurveyEventCondition surveyEventCondition = (SurveyEventCondition) obj;
        return aa4.e(this.name, surveyEventCondition.name) && aa4.e(this.propertyFilters, surveyEventCondition.propertyFilters);
    }

    public final String getName() {
        return this.name;
    }

    public final Map<String, SurveyPropertyFilter> getPropertyFilters() {
        return this.propertyFilters;
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode() * 31;
        Map<String, SurveyPropertyFilter> map = this.propertyFilters;
        return iHashCode + (map == null ? 0 : map.hashCode());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SurveyEventCondition(name=");
        sb.append(this.name);
        sb.append(", propertyFilters=");
        return g2.c(sb, this.propertyFilters, ')');
    }

    public /* synthetic */ SurveyEventCondition(String str, Map map, int i, jh2 jh2Var) {
        this(str, (i & 2) != 0 ? null : map);
    }
}
