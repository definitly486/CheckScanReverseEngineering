package com.posthog.surveys;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyTranslation {
    private final String name;
    private final String thankYouMessageCloseButtonText;
    private final String thankYouMessageDescription;
    private final String thankYouMessageHeader;

    public /* synthetic */ SurveyTranslation(String str, String str2, String str3, String str4, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : str4);
    }

    public static /* synthetic */ SurveyTranslation copy$default(SurveyTranslation surveyTranslation, String str, String str2, String str3, String str4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = surveyTranslation.name;
        }
        if ((i & 2) != 0) {
            str2 = surveyTranslation.thankYouMessageHeader;
        }
        if ((i & 4) != 0) {
            str3 = surveyTranslation.thankYouMessageDescription;
        }
        if ((i & 8) != 0) {
            str4 = surveyTranslation.thankYouMessageCloseButtonText;
        }
        return surveyTranslation.copy(str, str2, str3, str4);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.thankYouMessageHeader;
    }

    public final String component3() {
        return this.thankYouMessageDescription;
    }

    public final String component4() {
        return this.thankYouMessageCloseButtonText;
    }

    public final SurveyTranslation copy(String str, String str2, String str3, String str4) {
        return new SurveyTranslation(str, str2, str3, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurveyTranslation)) {
            return false;
        }
        SurveyTranslation surveyTranslation = (SurveyTranslation) obj;
        return aa4.e(this.name, surveyTranslation.name) && aa4.e(this.thankYouMessageHeader, surveyTranslation.thankYouMessageHeader) && aa4.e(this.thankYouMessageDescription, surveyTranslation.thankYouMessageDescription) && aa4.e(this.thankYouMessageCloseButtonText, surveyTranslation.thankYouMessageCloseButtonText);
    }

    public final String getName() {
        return this.name;
    }

    public final String getThankYouMessageCloseButtonText() {
        return this.thankYouMessageCloseButtonText;
    }

    public final String getThankYouMessageDescription() {
        return this.thankYouMessageDescription;
    }

    public final String getThankYouMessageHeader() {
        return this.thankYouMessageHeader;
    }

    public int hashCode() {
        String str = this.name;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.thankYouMessageHeader;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.thankYouMessageDescription;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.thankYouMessageCloseButtonText;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SurveyTranslation(name=");
        sb.append(this.name);
        sb.append(", thankYouMessageHeader=");
        sb.append(this.thankYouMessageHeader);
        sb.append(", thankYouMessageDescription=");
        sb.append(this.thankYouMessageDescription);
        sb.append(", thankYouMessageCloseButtonText=");
        return xp.e(sb, this.thankYouMessageCloseButtonText, ')');
    }

    public SurveyTranslation(String str, String str2, String str3, String str4) {
        this.name = str;
        this.thankYouMessageHeader = str2;
        this.thankYouMessageDescription = str3;
        this.thankYouMessageCloseButtonText = str4;
    }

    public SurveyTranslation() {
        this(null, null, null, null, 15, null);
    }
}
