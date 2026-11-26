package com.posthog.surveys;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.firebase.dynamiclinks.DynamicLink;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.uy2;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyQuestionType {
    OPEN(TtmlNode.TEXT_EMPHASIS_MARK_OPEN),
    LINK(DynamicLink.Builder.KEY_LINK),
    RATING("rating"),
    MULTIPLE_CHOICE("multiple_choice"),
    SINGLE_CHOICE("single_choice");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyQuestionType(String str) {
        this.value = str;
    }

    public static g03<SurveyQuestionType> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyQuestionType surveyQuestionType) {
            surveyQuestionType.getClass();
            return surveyQuestionType.getValue();
        }

        public final SurveyQuestionType fromValue(String str) {
            str.getClass();
            return (SurveyQuestionType) SurveyEnumsKt.enumFromValue(str, SurveyQuestionType.values(), new uy2(1));
        }

        private Companion() {
        }
    }
}
