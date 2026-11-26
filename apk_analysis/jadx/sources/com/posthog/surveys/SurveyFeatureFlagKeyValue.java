package com.posthog.surveys;

import defpackage.aa4;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyFeatureFlagKeyValue {
    private final String key;
    private final String value;

    public SurveyFeatureFlagKeyValue(String str, String str2) {
        str.getClass();
        this.key = str;
        this.value = str2;
    }

    public static /* synthetic */ SurveyFeatureFlagKeyValue copy$default(SurveyFeatureFlagKeyValue surveyFeatureFlagKeyValue, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = surveyFeatureFlagKeyValue.key;
        }
        if ((i & 2) != 0) {
            str2 = surveyFeatureFlagKeyValue.value;
        }
        return surveyFeatureFlagKeyValue.copy(str, str2);
    }

    public final String component1() {
        return this.key;
    }

    public final String component2() {
        return this.value;
    }

    public final SurveyFeatureFlagKeyValue copy(String str, String str2) {
        str.getClass();
        return new SurveyFeatureFlagKeyValue(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurveyFeatureFlagKeyValue)) {
            return false;
        }
        SurveyFeatureFlagKeyValue surveyFeatureFlagKeyValue = (SurveyFeatureFlagKeyValue) obj;
        return aa4.e(this.key, surveyFeatureFlagKeyValue.key) && aa4.e(this.value, surveyFeatureFlagKeyValue.value);
    }

    public final String getKey() {
        return this.key;
    }

    public final String getValue() {
        return this.value;
    }

    public int hashCode() {
        int iHashCode = this.key.hashCode() * 31;
        String str = this.value;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SurveyFeatureFlagKeyValue(key=");
        sb.append(this.key);
        sb.append(", value=");
        return xp.e(sb, this.value, ')');
    }
}
