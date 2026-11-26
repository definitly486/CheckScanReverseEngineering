package com.posthog.surveys;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class PostHogNextSurveyQuestion {
    private final boolean isSurveyCompleted;
    private final int questionIndex;

    public /* synthetic */ PostHogNextSurveyQuestion(int i, boolean z, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? false : z);
    }

    public final int getQuestionIndex() {
        return this.questionIndex;
    }

    public final boolean isSurveyCompleted() {
        return this.isSurveyCompleted;
    }

    public PostHogNextSurveyQuestion(int i, boolean z) {
        this.questionIndex = i;
        this.isSurveyCompleted = z;
    }
}
