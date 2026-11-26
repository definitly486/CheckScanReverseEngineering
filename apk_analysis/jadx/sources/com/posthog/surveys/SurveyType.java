package com.posthog.surveys;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.xy2;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyType {
    POPOVER("popover"),
    API("api"),
    WIDGET("widget");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyType(String str) {
        this.value = str;
    }

    public static g03<SurveyType> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyType surveyType) {
            surveyType.getClass();
            return surveyType.getValue();
        }

        public final SurveyType fromValue(String str) {
            str.getClass();
            return (SurveyType) SurveyEnumsKt.enumFromValue(str, SurveyType.values(), new xy2(4));
        }

        private Companion() {
        }
    }
}
