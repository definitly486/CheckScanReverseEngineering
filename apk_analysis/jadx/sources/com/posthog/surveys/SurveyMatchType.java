package com.posthog.surveys;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.sy2;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyMatchType {
    REGEX("regex"),
    NOT_REGEX("not_regex"),
    EXACT("exact"),
    IS_NOT("is_not"),
    I_CONTAINS("icontains"),
    NOT_I_CONTAINS("not_icontains"),
    GT("gt"),
    LT("lt");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyMatchType(String str) {
        this.value = str;
    }

    public static g03<SurveyMatchType> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyMatchType surveyMatchType) {
            surveyMatchType.getClass();
            return surveyMatchType.getValue();
        }

        public final SurveyMatchType fromValue(String str) {
            str.getClass();
            return (SurveyMatchType) SurveyEnumsKt.enumFromValue(str, SurveyMatchType.values(), new sy2(5));
        }

        private Companion() {
        }
    }
}
