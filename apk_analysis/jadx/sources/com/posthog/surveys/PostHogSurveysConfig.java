package com.posthog.surveys;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogSurveysConfig {
    private String overrideDisplayLanguage;
    private PostHogSurveysDelegate surveysDelegate = new PostHogSurveysDefaultDelegate(null, 1, 0 == true ? 1 : 0);

    public final String getOverrideDisplayLanguage() {
        return this.overrideDisplayLanguage;
    }

    public final PostHogSurveysDelegate getSurveysDelegate() {
        return this.surveysDelegate;
    }

    public final void setOverrideDisplayLanguage(String str) {
        this.overrideDisplayLanguage = str;
    }

    public final void setSurveysDelegate(PostHogSurveysDelegate postHogSurveysDelegate) {
        postHogSurveysDelegate.getClass();
        this.surveysDelegate = postHogSurveysDelegate;
    }
}
