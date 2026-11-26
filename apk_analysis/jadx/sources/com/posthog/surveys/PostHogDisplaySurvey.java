package com.posthog.surveys;

import defpackage.aa4;
import defpackage.e2;
import defpackage.jh2;
import defpackage.qn1;
import defpackage.u96;
import defpackage.zg;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogDisplaySurvey {
    public static final Companion Companion = new Companion(null);
    private final PostHogDisplaySurveyAppearance appearance;
    private final Date endDate;
    private final String id;
    private final String name;
    private final List<PostHogDisplaySurveyQuestion> questions;
    private final Date startDate;

    /* JADX WARN: Multi-variable type inference failed */
    public PostHogDisplaySurvey(String str, String str2, List<? extends PostHogDisplaySurveyQuestion> list, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2) {
        str.getClass();
        str2.getClass();
        list.getClass();
        this.id = str;
        this.name = str2;
        this.questions = list;
        this.appearance = postHogDisplaySurveyAppearance;
        this.startDate = date;
        this.endDate = date2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PostHogDisplaySurvey copy$default(PostHogDisplaySurvey postHogDisplaySurvey, String str, String str2, List list, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = postHogDisplaySurvey.id;
        }
        if ((i & 2) != 0) {
            str2 = postHogDisplaySurvey.name;
        }
        if ((i & 4) != 0) {
            list = postHogDisplaySurvey.questions;
        }
        if ((i & 8) != 0) {
            postHogDisplaySurveyAppearance = postHogDisplaySurvey.appearance;
        }
        if ((i & 16) != 0) {
            date = postHogDisplaySurvey.startDate;
        }
        if ((i & 32) != 0) {
            date2 = postHogDisplaySurvey.endDate;
        }
        Date date3 = date;
        Date date4 = date2;
        return postHogDisplaySurvey.copy(str, str2, list, postHogDisplaySurveyAppearance, date3, date4);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final List<PostHogDisplaySurveyQuestion> component3() {
        return this.questions;
    }

    public final PostHogDisplaySurveyAppearance component4() {
        return this.appearance;
    }

    public final Date component5() {
        return this.startDate;
    }

    public final Date component6() {
        return this.endDate;
    }

    public final PostHogDisplaySurvey copy(String str, String str2, List<? extends PostHogDisplaySurveyQuestion> list, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2) {
        str.getClass();
        str2.getClass();
        list.getClass();
        return new PostHogDisplaySurvey(str, str2, list, postHogDisplaySurveyAppearance, date, date2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PostHogDisplaySurvey)) {
            return false;
        }
        PostHogDisplaySurvey postHogDisplaySurvey = (PostHogDisplaySurvey) obj;
        return aa4.e(this.id, postHogDisplaySurvey.id) && aa4.e(this.name, postHogDisplaySurvey.name) && aa4.e(this.questions, postHogDisplaySurvey.questions) && aa4.e(this.appearance, postHogDisplaySurvey.appearance) && aa4.e(this.startDate, postHogDisplaySurvey.startDate) && aa4.e(this.endDate, postHogDisplaySurvey.endDate);
    }

    public final PostHogDisplaySurveyAppearance getAppearance() {
        return this.appearance;
    }

    public final Date getEndDate() {
        return this.endDate;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public final List<PostHogDisplaySurveyQuestion> getQuestions() {
        return this.questions;
    }

    public final Date getStartDate() {
        return this.startDate;
    }

    public int hashCode() {
        int iB = e2.b(this.questions, zg.b(this.id.hashCode() * 31, 31, this.name), 31);
        PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance = this.appearance;
        int iHashCode = (iB + (postHogDisplaySurveyAppearance == null ? 0 : postHogDisplaySurveyAppearance.hashCode())) * 31;
        Date date = this.startDate;
        int iHashCode2 = (iHashCode + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.endDate;
        return iHashCode2 + (date2 != null ? date2.hashCode() : 0);
    }

    public String toString() {
        return "PostHogDisplaySurvey(id=" + this.id + ", name=" + this.name + ", questions=" + this.questions + ", appearance=" + this.appearance + ", startDate=" + this.startDate + ", endDate=" + this.endDate + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ PostHogDisplaySurvey toDisplaySurvey$default(Companion companion, Survey survey, SurveyTranslation surveyTranslation, List list, int i, Object obj) {
            if ((i & 2) != 0) {
                surveyTranslation = null;
            }
            if ((i & 4) != 0) {
                list = null;
            }
            return companion.toDisplaySurvey(survey, surveyTranslation, list);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        public final PostHogDisplaySurvey toDisplaySurvey(Survey survey, SurveyTranslation surveyTranslation, List<SurveyQuestionTranslation> list) {
            String name;
            survey.getClass();
            List<SurveyQuestion> questions = survey.getQuestions();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = questions.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    String id = survey.getId();
                    if (surveyTranslation == null || (name = surveyTranslation.getName()) == null) {
                        name = survey.getName();
                    }
                    SurveyAppearance appearance = survey.getAppearance();
                    return new PostHogDisplaySurvey(id, name, arrayList, appearance != null ? PostHogDisplaySurveyAppearance.Companion.fromSurveyAppearance$posthog(appearance, surveyTranslation) : null, survey.getStartDate(), survey.getEndDate());
                }
                Object next = it.next();
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                PostHogDisplaySurveyQuestion postHogDisplaySurveyQuestionFromSurveyQuestion$posthog = PostHogDisplaySurveyQuestion.Companion.fromSurveyQuestion$posthog((SurveyQuestion) next, list != null ? (SurveyQuestionTranslation) qn1.W(i, list) : null);
                if (postHogDisplaySurveyQuestionFromSurveyQuestion$posthog != null) {
                    arrayList.add(postHogDisplaySurveyQuestionFromSurveyQuestion$posthog);
                }
                i = i2;
            }
        }

        private Companion() {
        }
    }

    public /* synthetic */ PostHogDisplaySurvey(String str, String str2, List list, PostHogDisplaySurveyAppearance postHogDisplaySurveyAppearance, Date date, Date date2, int i, jh2 jh2Var) {
        this(str, str2, list, (i & 8) != 0 ? null : postHogDisplaySurveyAppearance, (i & 16) != 0 ? null : date, (i & 32) != 0 ? null : date2);
    }
}
