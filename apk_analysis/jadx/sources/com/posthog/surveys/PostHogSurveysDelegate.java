package com.posthog.surveys;

import defpackage.dm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes4.dex */
public interface PostHogSurveysDelegate {
    void cleanupSurveys();

    void renderSurvey(PostHogDisplaySurvey postHogDisplaySurvey, nl3<? super PostHogDisplaySurvey, j59> nl3Var, dm3<? super PostHogDisplaySurvey, ? super Integer, ? super PostHogSurveyResponse, PostHogNextSurveyQuestion> dm3Var, nl3<? super PostHogDisplaySurvey, j59> nl3Var2);
}
