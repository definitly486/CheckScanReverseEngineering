package com.posthog.surveys;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogDisplayRatingQuestion extends PostHogDisplaySurveyQuestion {
    private final String lowerBoundLabel;
    private final PostHogDisplaySurveyRatingType ratingType;
    private final int scaleLowerBound;
    private final int scaleUpperBound;
    private final String upperBoundLabel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogDisplayRatingQuestion(String str, String str2, String str3, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, boolean z, String str4, PostHogDisplaySurveyRatingType postHogDisplaySurveyRatingType, int i, int i2, String str5, String str6) {
        super(str, str2, str3, postHogDisplaySurveyTextContentType, z, str4);
        str.getClass();
        str2.getClass();
        postHogDisplaySurveyTextContentType.getClass();
        postHogDisplaySurveyRatingType.getClass();
        str5.getClass();
        str6.getClass();
        this.ratingType = postHogDisplaySurveyRatingType;
        this.scaleLowerBound = i;
        this.scaleUpperBound = i2;
        this.lowerBoundLabel = str5;
        this.upperBoundLabel = str6;
    }

    public final String getLowerBoundLabel() {
        return this.lowerBoundLabel;
    }

    public final PostHogDisplaySurveyRatingType getRatingType() {
        return this.ratingType;
    }

    public final int getScaleLowerBound() {
        return this.scaleLowerBound;
    }

    public final int getScaleUpperBound() {
        return this.scaleUpperBound;
    }

    public final String getUpperBoundLabel() {
        return this.upperBoundLabel;
    }
}
