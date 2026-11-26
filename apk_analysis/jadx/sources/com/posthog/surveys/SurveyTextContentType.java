package com.posthog.surveys;

import com.tapjoy.TJAdUnitConstants;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.lg8;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyTextContentType {
    HTML(TJAdUnitConstants.String.HTML),
    TEXT("text");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyTextContentType(String str) {
        this.value = str;
    }

    public static g03<SurveyTextContentType> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyTextContentType surveyTextContentType) {
            surveyTextContentType.getClass();
            return surveyTextContentType.getValue();
        }

        public final SurveyTextContentType fromValue(String str) {
            str.getClass();
            return (SurveyTextContentType) SurveyEnumsKt.enumFromValue(str, SurveyTextContentType.values(), new lg8(0));
        }

        private Companion() {
        }
    }
}
