package com.posthog.surveys;

import defpackage.jh2;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SurveyQuestionBranching {

    public static final class End extends SurveyQuestionBranching {
        public static final End INSTANCE = new End();

        private End() {
            super(null);
        }
    }

    public static final class Next extends SurveyQuestionBranching {
        public static final Next INSTANCE = new Next();

        private Next() {
            super(null);
        }
    }

    public static final class ResponseBased extends SurveyQuestionBranching {
        private final Map<String, Object> responseValues;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBased(Map<String, ? extends Object> map) {
            super(null);
            map.getClass();
            this.responseValues = map;
        }

        public final Map<String, Object> getResponseValues() {
            return this.responseValues;
        }
    }

    public static final class SpecificQuestion extends SurveyQuestionBranching {
        private final int index;

        public SpecificQuestion(int i) {
            super(null);
            this.index = i;
        }

        public final int getIndex() {
            return this.index;
        }
    }

    public /* synthetic */ SurveyQuestionBranching(jh2 jh2Var) {
        this();
    }

    private SurveyQuestionBranching() {
    }
}
