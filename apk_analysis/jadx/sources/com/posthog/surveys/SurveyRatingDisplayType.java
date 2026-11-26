package com.posthog.surveys;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.vy2;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyRatingDisplayType {
    NUMBER("number"),
    EMOJI("emoji");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyRatingDisplayType(String str) {
        this.value = str;
    }

    public static g03<SurveyRatingDisplayType> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyRatingDisplayType surveyRatingDisplayType) {
            surveyRatingDisplayType.getClass();
            return surveyRatingDisplayType.getValue();
        }

        public final SurveyRatingDisplayType fromValue(String str) {
            str.getClass();
            return (SurveyRatingDisplayType) SurveyEnumsKt.enumFromValue(str, SurveyRatingDisplayType.values(), new vy2(3));
        }

        private Companion() {
        }
    }
}
