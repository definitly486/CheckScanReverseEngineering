package com.posthog.surveys;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogDisplayLinkQuestion extends PostHogDisplaySurveyQuestion {
    private final String link;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogDisplayLinkQuestion(String str, String str2, String str3, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, boolean z, String str4, String str5) {
        super(str, str2, str3, postHogDisplaySurveyTextContentType, z, str4);
        str.getClass();
        str2.getClass();
        postHogDisplaySurveyTextContentType.getClass();
        this.link = str5;
    }

    public final String getLink() {
        return this.link;
    }
}
