package com.posthog.surveys;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.ty2;

/* JADX INFO: loaded from: classes4.dex */
public enum SurveyQuestionBranchingType {
    NEXT_QUESTION("next_question"),
    END(TtmlNode.END),
    RESPONSE_BASED("response_based"),
    SPECIFIC_QUESTION("specific_question");

    private final String value;
    private static final /* synthetic */ g03 $ENTRIES = h03.a(values());
    public static final Companion Companion = new Companion(null);

    SurveyQuestionBranchingType(String str) {
        this.value = str;
    }

    public static g03<SurveyQuestionBranchingType> getEntries() {
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
        public static final String fromValue$lambda$0(SurveyQuestionBranchingType surveyQuestionBranchingType) {
            surveyQuestionBranchingType.getClass();
            return surveyQuestionBranchingType.getValue();
        }

        public final SurveyQuestionBranchingType fromValue(String str) {
            str.getClass();
            return (SurveyQuestionBranchingType) SurveyEnumsKt.enumFromValue(str, SurveyQuestionBranchingType.values(), new ty2(4));
        }

        private Companion() {
        }
    }
}
