package com.posthog.surveys;

import com.google.firebase.analytics.FirebaseAnalytics;
import defpackage.aa4;
import defpackage.bq7;
import defpackage.e2;
import defpackage.g2;
import defpackage.jh2;
import defpackage.zg;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class Survey {
    private final SurveyAppearance appearance;
    private final SurveyConditions conditions;

    @bq7("current_iteration")
    private final Integer currentIteration;

    @bq7("current_iteration_start_date")
    private final Date currentIterationStartDate;
    private final String description;

    @bq7(FirebaseAnalytics.Param.END_DATE)
    private final Date endDate;

    @bq7("feature_flag_keys")
    private final List<SurveyFeatureFlagKeyValue> featureFlagKeys;
    private final String id;

    @bq7("internal_targeting_flag_key")
    private final String internalTargetingFlagKey;

    @bq7("linked_flag_key")
    private final String linkedFlagKey;
    private final String name;
    private final List<SurveyQuestion> questions;
    private final SurveySchedule schedule;

    @bq7(FirebaseAnalytics.Param.START_DATE)
    private final Date startDate;

    @bq7("targeting_flag_key")
    private final String targetingFlagKey;
    private final Map<String, SurveyTranslation> translations;
    private final SurveyType type;

    /* JADX WARN: Multi-variable type inference failed */
    public Survey(String str, String str2, SurveyType surveyType, List<? extends SurveyQuestion> list, String str3, List<SurveyFeatureFlagKeyValue> list2, String str4, String str5, String str6, SurveyConditions surveyConditions, SurveyAppearance surveyAppearance, Integer num, Date date, Date date2, Date date3, SurveySchedule surveySchedule, Map<String, SurveyTranslation> map) {
        str.getClass();
        str2.getClass();
        surveyType.getClass();
        list.getClass();
        this.id = str;
        this.name = str2;
        this.type = surveyType;
        this.questions = list;
        this.description = str3;
        this.featureFlagKeys = list2;
        this.linkedFlagKey = str4;
        this.targetingFlagKey = str5;
        this.internalTargetingFlagKey = str6;
        this.conditions = surveyConditions;
        this.appearance = surveyAppearance;
        this.currentIteration = num;
        this.currentIterationStartDate = date;
        this.startDate = date2;
        this.endDate = date3;
        this.schedule = surveySchedule;
        this.translations = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Survey copy$default(Survey survey, String str, String str2, SurveyType surveyType, List list, String str3, List list2, String str4, String str5, String str6, SurveyConditions surveyConditions, SurveyAppearance surveyAppearance, Integer num, Date date, Date date2, Date date3, SurveySchedule surveySchedule, Map map, int i, Object obj) {
        Map map2;
        SurveySchedule surveySchedule2;
        String str7 = (i & 1) != 0 ? survey.id : str;
        String str8 = (i & 2) != 0 ? survey.name : str2;
        SurveyType surveyType2 = (i & 4) != 0 ? survey.type : surveyType;
        List list3 = (i & 8) != 0 ? survey.questions : list;
        String str9 = (i & 16) != 0 ? survey.description : str3;
        List list4 = (i & 32) != 0 ? survey.featureFlagKeys : list2;
        String str10 = (i & 64) != 0 ? survey.linkedFlagKey : str4;
        String str11 = (i & 128) != 0 ? survey.targetingFlagKey : str5;
        String str12 = (i & 256) != 0 ? survey.internalTargetingFlagKey : str6;
        SurveyConditions surveyConditions2 = (i & 512) != 0 ? survey.conditions : surveyConditions;
        SurveyAppearance surveyAppearance2 = (i & 1024) != 0 ? survey.appearance : surveyAppearance;
        Integer num2 = (i & 2048) != 0 ? survey.currentIteration : num;
        Date date4 = (i & 4096) != 0 ? survey.currentIterationStartDate : date;
        Date date5 = (i & 8192) != 0 ? survey.startDate : date2;
        String str13 = str7;
        Date date6 = (i & 16384) != 0 ? survey.endDate : date3;
        SurveySchedule surveySchedule3 = (i & 32768) != 0 ? survey.schedule : surveySchedule;
        if ((i & 65536) != 0) {
            surveySchedule2 = surveySchedule3;
            map2 = survey.translations;
        } else {
            map2 = map;
            surveySchedule2 = surveySchedule3;
        }
        return survey.copy(str13, str8, surveyType2, list3, str9, list4, str10, str11, str12, surveyConditions2, surveyAppearance2, num2, date4, date5, date6, surveySchedule2, map2);
    }

    public final String component1() {
        return this.id;
    }

    public final SurveyConditions component10() {
        return this.conditions;
    }

    public final SurveyAppearance component11() {
        return this.appearance;
    }

    public final Integer component12() {
        return this.currentIteration;
    }

    public final Date component13() {
        return this.currentIterationStartDate;
    }

    public final Date component14() {
        return this.startDate;
    }

    public final Date component15() {
        return this.endDate;
    }

    public final SurveySchedule component16() {
        return this.schedule;
    }

    public final Map<String, SurveyTranslation> component17() {
        return this.translations;
    }

    public final String component2() {
        return this.name;
    }

    public final SurveyType component3() {
        return this.type;
    }

    public final List<SurveyQuestion> component4() {
        return this.questions;
    }

    public final String component5() {
        return this.description;
    }

    public final List<SurveyFeatureFlagKeyValue> component6() {
        return this.featureFlagKeys;
    }

    public final String component7() {
        return this.linkedFlagKey;
    }

    public final String component8() {
        return this.targetingFlagKey;
    }

    public final String component9() {
        return this.internalTargetingFlagKey;
    }

    public final Survey copy(String str, String str2, SurveyType surveyType, List<? extends SurveyQuestion> list, String str3, List<SurveyFeatureFlagKeyValue> list2, String str4, String str5, String str6, SurveyConditions surveyConditions, SurveyAppearance surveyAppearance, Integer num, Date date, Date date2, Date date3, SurveySchedule surveySchedule, Map<String, SurveyTranslation> map) {
        str.getClass();
        str2.getClass();
        surveyType.getClass();
        list.getClass();
        return new Survey(str, str2, surveyType, list, str3, list2, str4, str5, str6, surveyConditions, surveyAppearance, num, date, date2, date3, surveySchedule, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Survey)) {
            return false;
        }
        Survey survey = (Survey) obj;
        return aa4.e(this.id, survey.id) && aa4.e(this.name, survey.name) && this.type == survey.type && aa4.e(this.questions, survey.questions) && aa4.e(this.description, survey.description) && aa4.e(this.featureFlagKeys, survey.featureFlagKeys) && aa4.e(this.linkedFlagKey, survey.linkedFlagKey) && aa4.e(this.targetingFlagKey, survey.targetingFlagKey) && aa4.e(this.internalTargetingFlagKey, survey.internalTargetingFlagKey) && aa4.e(this.conditions, survey.conditions) && aa4.e(this.appearance, survey.appearance) && aa4.e(this.currentIteration, survey.currentIteration) && aa4.e(this.currentIterationStartDate, survey.currentIterationStartDate) && aa4.e(this.startDate, survey.startDate) && aa4.e(this.endDate, survey.endDate) && this.schedule == survey.schedule && aa4.e(this.translations, survey.translations);
    }

    public final SurveyAppearance getAppearance() {
        return this.appearance;
    }

    public final SurveyConditions getConditions() {
        return this.conditions;
    }

    public final Integer getCurrentIteration() {
        return this.currentIteration;
    }

    public final Date getCurrentIterationStartDate() {
        return this.currentIterationStartDate;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Date getEndDate() {
        return this.endDate;
    }

    public final List<SurveyFeatureFlagKeyValue> getFeatureFlagKeys() {
        return this.featureFlagKeys;
    }

    public final String getId() {
        return this.id;
    }

    public final String getInternalTargetingFlagKey() {
        return this.internalTargetingFlagKey;
    }

    public final String getLinkedFlagKey() {
        return this.linkedFlagKey;
    }

    public final String getName() {
        return this.name;
    }

    public final List<SurveyQuestion> getQuestions() {
        return this.questions;
    }

    public final SurveySchedule getSchedule() {
        return this.schedule;
    }

    public final Date getStartDate() {
        return this.startDate;
    }

    public final String getTargetingFlagKey() {
        return this.targetingFlagKey;
    }

    public final Map<String, SurveyTranslation> getTranslations() {
        return this.translations;
    }

    public final SurveyType getType() {
        return this.type;
    }

    public int hashCode() {
        int iB = e2.b(this.questions, (this.type.hashCode() + zg.b(this.id.hashCode() * 31, 31, this.name)) * 31, 31);
        String str = this.description;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        List<SurveyFeatureFlagKeyValue> list = this.featureFlagKeys;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        String str2 = this.linkedFlagKey;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.targetingFlagKey;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.internalTargetingFlagKey;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        SurveyConditions surveyConditions = this.conditions;
        int iHashCode6 = (iHashCode5 + (surveyConditions == null ? 0 : surveyConditions.hashCode())) * 31;
        SurveyAppearance surveyAppearance = this.appearance;
        int iHashCode7 = (iHashCode6 + (surveyAppearance == null ? 0 : surveyAppearance.hashCode())) * 31;
        Integer num = this.currentIteration;
        int iHashCode8 = (iHashCode7 + (num == null ? 0 : num.hashCode())) * 31;
        Date date = this.currentIterationStartDate;
        int iHashCode9 = (iHashCode8 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.startDate;
        int iHashCode10 = (iHashCode9 + (date2 == null ? 0 : date2.hashCode())) * 31;
        Date date3 = this.endDate;
        int iHashCode11 = (iHashCode10 + (date3 == null ? 0 : date3.hashCode())) * 31;
        SurveySchedule surveySchedule = this.schedule;
        int iHashCode12 = (iHashCode11 + (surveySchedule == null ? 0 : surveySchedule.hashCode())) * 31;
        Map<String, SurveyTranslation> map = this.translations;
        return iHashCode12 + (map != null ? map.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Survey(id=");
        sb.append(this.id);
        sb.append(", name=");
        sb.append(this.name);
        sb.append(", type=");
        sb.append(this.type);
        sb.append(", questions=");
        sb.append(this.questions);
        sb.append(", description=");
        sb.append(this.description);
        sb.append(", featureFlagKeys=");
        sb.append(this.featureFlagKeys);
        sb.append(", linkedFlagKey=");
        sb.append(this.linkedFlagKey);
        sb.append(", targetingFlagKey=");
        sb.append(this.targetingFlagKey);
        sb.append(", internalTargetingFlagKey=");
        sb.append(this.internalTargetingFlagKey);
        sb.append(", conditions=");
        sb.append(this.conditions);
        sb.append(", appearance=");
        sb.append(this.appearance);
        sb.append(", currentIteration=");
        sb.append(this.currentIteration);
        sb.append(", currentIterationStartDate=");
        sb.append(this.currentIterationStartDate);
        sb.append(", startDate=");
        sb.append(this.startDate);
        sb.append(", endDate=");
        sb.append(this.endDate);
        sb.append(", schedule=");
        sb.append(this.schedule);
        sb.append(", translations=");
        return g2.c(sb, this.translations, ')');
    }

    public /* synthetic */ Survey(String str, String str2, SurveyType surveyType, List list, String str3, List list2, String str4, String str5, String str6, SurveyConditions surveyConditions, SurveyAppearance surveyAppearance, Integer num, Date date, Date date2, Date date3, SurveySchedule surveySchedule, Map map, int i, jh2 jh2Var) {
        this(str, str2, surveyType, list, str3, list2, str4, str5, str6, surveyConditions, surveyAppearance, num, date, date2, date3, surveySchedule, (i & 65536) != 0 ? null : map);
    }
}
