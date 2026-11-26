package com.posthog.surveys;

import defpackage.dm3;
import defpackage.ic6;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nb6;
import defpackage.nl3;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogSurveysDefaultDelegate implements PostHogSurveysDelegate {
    private nb6 config;

    public /* synthetic */ PostHogSurveysDefaultDelegate(nb6 nb6Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : nb6Var);
    }

    @Override // com.posthog.surveys.PostHogSurveysDelegate
    public void cleanupSurveys() {
        ic6 ic6Var;
        nb6 nb6Var = this.config;
        if (nb6Var == null || (ic6Var = nb6Var.v) == null) {
            return;
        }
        ic6Var.a("Survey cleanup requested");
    }

    @Override // com.posthog.surveys.PostHogSurveysDelegate
    public void renderSurvey(PostHogDisplaySurvey postHogDisplaySurvey, nl3<? super PostHogDisplaySurvey, j59> nl3Var, dm3<? super PostHogDisplaySurvey, ? super Integer, ? super PostHogSurveyResponse, PostHogNextSurveyQuestion> dm3Var, nl3<? super PostHogDisplaySurvey, j59> nl3Var2) {
        ic6 ic6Var;
        ic6 ic6Var2;
        postHogDisplaySurvey.getClass();
        nl3Var.getClass();
        dm3Var.getClass();
        nl3Var2.getClass();
        nb6 nb6Var = this.config;
        if (nb6Var != null && (ic6Var2 = nb6Var.v) != null) {
            ic6Var2.a("Survey requested to be shown: " + postHogDisplaySurvey.getId() + " - " + postHogDisplaySurvey.getName());
        }
        nb6 nb6Var2 = this.config;
        if (nb6Var2 == null || (ic6Var = nb6Var2.v) == null) {
            return;
        }
        ic6Var.a("Implement your own PostHogSurveysDelegate to render surveys");
    }

    public PostHogSurveysDefaultDelegate(nb6 nb6Var) {
        this.config = nb6Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PostHogSurveysDefaultDelegate() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
