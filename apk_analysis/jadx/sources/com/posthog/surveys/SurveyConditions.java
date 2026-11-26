package com.posthog.surveys;

import defpackage.aa4;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class SurveyConditions {
    private final List<String> deviceTypes;
    private final SurveyMatchType deviceTypesMatchType;
    private final SurveyEventConditions events;
    private final Integer seenSurveyWaitPeriodInDays;
    private final String selector;
    private final String url;
    private final SurveyMatchType urlMatchType;

    public SurveyConditions(String str, SurveyMatchType surveyMatchType, String str2, List<String> list, SurveyMatchType surveyMatchType2, Integer num, SurveyEventConditions surveyEventConditions) {
        this.url = str;
        this.urlMatchType = surveyMatchType;
        this.selector = str2;
        this.deviceTypes = list;
        this.deviceTypesMatchType = surveyMatchType2;
        this.seenSurveyWaitPeriodInDays = num;
        this.events = surveyEventConditions;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SurveyConditions copy$default(SurveyConditions surveyConditions, String str, SurveyMatchType surveyMatchType, String str2, List list, SurveyMatchType surveyMatchType2, Integer num, SurveyEventConditions surveyEventConditions, int i, Object obj) {
        if ((i & 1) != 0) {
            str = surveyConditions.url;
        }
        if ((i & 2) != 0) {
            surveyMatchType = surveyConditions.urlMatchType;
        }
        if ((i & 4) != 0) {
            str2 = surveyConditions.selector;
        }
        if ((i & 8) != 0) {
            list = surveyConditions.deviceTypes;
        }
        if ((i & 16) != 0) {
            surveyMatchType2 = surveyConditions.deviceTypesMatchType;
        }
        if ((i & 32) != 0) {
            num = surveyConditions.seenSurveyWaitPeriodInDays;
        }
        if ((i & 64) != 0) {
            surveyEventConditions = surveyConditions.events;
        }
        Integer num2 = num;
        SurveyEventConditions surveyEventConditions2 = surveyEventConditions;
        SurveyMatchType surveyMatchType3 = surveyMatchType2;
        String str3 = str2;
        return surveyConditions.copy(str, surveyMatchType, str3, list, surveyMatchType3, num2, surveyEventConditions2);
    }

    public final String component1() {
        return this.url;
    }

    public final SurveyMatchType component2() {
        return this.urlMatchType;
    }

    public final String component3() {
        return this.selector;
    }

    public final List<String> component4() {
        return this.deviceTypes;
    }

    public final SurveyMatchType component5() {
        return this.deviceTypesMatchType;
    }

    public final Integer component6() {
        return this.seenSurveyWaitPeriodInDays;
    }

    public final SurveyEventConditions component7() {
        return this.events;
    }

    public final SurveyConditions copy(String str, SurveyMatchType surveyMatchType, String str2, List<String> list, SurveyMatchType surveyMatchType2, Integer num, SurveyEventConditions surveyEventConditions) {
        return new SurveyConditions(str, surveyMatchType, str2, list, surveyMatchType2, num, surveyEventConditions);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SurveyConditions)) {
            return false;
        }
        SurveyConditions surveyConditions = (SurveyConditions) obj;
        return aa4.e(this.url, surveyConditions.url) && this.urlMatchType == surveyConditions.urlMatchType && aa4.e(this.selector, surveyConditions.selector) && aa4.e(this.deviceTypes, surveyConditions.deviceTypes) && this.deviceTypesMatchType == surveyConditions.deviceTypesMatchType && aa4.e(this.seenSurveyWaitPeriodInDays, surveyConditions.seenSurveyWaitPeriodInDays) && aa4.e(this.events, surveyConditions.events);
    }

    public final List<String> getDeviceTypes() {
        return this.deviceTypes;
    }

    public final SurveyMatchType getDeviceTypesMatchType() {
        return this.deviceTypesMatchType;
    }

    public final SurveyEventConditions getEvents() {
        return this.events;
    }

    public final Integer getSeenSurveyWaitPeriodInDays() {
        return this.seenSurveyWaitPeriodInDays;
    }

    public final String getSelector() {
        return this.selector;
    }

    public final String getUrl() {
        return this.url;
    }

    public final SurveyMatchType getUrlMatchType() {
        return this.urlMatchType;
    }

    public int hashCode() {
        String str = this.url;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        SurveyMatchType surveyMatchType = this.urlMatchType;
        int iHashCode2 = (iHashCode + (surveyMatchType == null ? 0 : surveyMatchType.hashCode())) * 31;
        String str2 = this.selector;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<String> list = this.deviceTypes;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        SurveyMatchType surveyMatchType2 = this.deviceTypesMatchType;
        int iHashCode5 = (iHashCode4 + (surveyMatchType2 == null ? 0 : surveyMatchType2.hashCode())) * 31;
        Integer num = this.seenSurveyWaitPeriodInDays;
        int iHashCode6 = (iHashCode5 + (num == null ? 0 : num.hashCode())) * 31;
        SurveyEventConditions surveyEventConditions = this.events;
        return iHashCode6 + (surveyEventConditions != null ? surveyEventConditions.hashCode() : 0);
    }

    public String toString() {
        return "SurveyConditions(url=" + this.url + ", urlMatchType=" + this.urlMatchType + ", selector=" + this.selector + ", deviceTypes=" + this.deviceTypes + ", deviceTypesMatchType=" + this.deviceTypesMatchType + ", seenSurveyWaitPeriodInDays=" + this.seenSurveyWaitPeriodInDays + ", events=" + this.events + ')';
    }
}
