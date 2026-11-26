package com.posthog.surveys;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.et0;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyAppearancePosition {
    LEFT(TtmlNode.LEFT),
    RIGHT(TtmlNode.RIGHT),
    CENTER(TtmlNode.CENTER);

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyAppearancePosition(String str) {
        this.value = str;
    }

    public static g03<SurveyAppearancePosition> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyAppearancePosition surveyAppearancePosition) {
            surveyAppearancePosition.getClass();
            return surveyAppearancePosition.getValue();
        }

        public final SurveyAppearancePosition fromValue(String str) {
            str.getClass();
            return (SurveyAppearancePosition) SurveyEnumsKt.enumFromValue(str, SurveyAppearancePosition.values(), new et0(3));
        }

        private Companion() {
        }
    }
}
