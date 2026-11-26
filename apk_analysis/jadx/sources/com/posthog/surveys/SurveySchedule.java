package com.posthog.surveys;

import defpackage.g03;
import defpackage.h03;
import defpackage.ii5;
import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveySchedule {
    ONCE("once"),
    RECURRING("recurring"),
    ALWAYS("always");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveySchedule(String str) {
        this.value = str;
    }

    public static g03<SurveySchedule> getEntries() {
        return $ENTRIES;
    }

    public final String getValue() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String fromValue$lambda$0(SurveySchedule surveySchedule) {
            surveySchedule.getClass();
            return surveySchedule.getValue();
        }

        public final SurveySchedule fromValue(String str) {
            str.getClass();
            return (SurveySchedule) SurveyEnumsKt.enumFromValue(str, SurveySchedule.values(), new ii5(1));
        }

        private Companion() {
        }
    }
}
