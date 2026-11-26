package com.posthog.surveys;

import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.w82;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyAppearanceWidgetType {
    BUTTON("button"),
    TAB("tab"),
    SELECTOR("selector");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyAppearanceWidgetType(String str) {
        this.value = str;
    }

    public static g03<SurveyAppearanceWidgetType> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyAppearanceWidgetType surveyAppearanceWidgetType) {
            surveyAppearanceWidgetType.getClass();
            return surveyAppearanceWidgetType.getValue();
        }

        public final SurveyAppearanceWidgetType fromValue(String str) {
            str.getClass();
            return (SurveyAppearanceWidgetType) SurveyEnumsKt.enumFromValue(str, SurveyAppearanceWidgetType.values(), new w82(5));
        }

        private Companion() {
        }
    }
}
