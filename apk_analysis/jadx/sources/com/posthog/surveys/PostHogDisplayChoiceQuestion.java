package com.posthog.surveys;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class PostHogDisplayChoiceQuestion extends PostHogDisplaySurveyQuestion {
    private final List<String> choices;
    private final boolean hasOpenChoice;
    private final boolean isMultipleChoice;
    private final boolean shuffleOptions;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostHogDisplayChoiceQuestion(String str, String str2, String str3, PostHogDisplaySurveyTextContentType postHogDisplaySurveyTextContentType, boolean z, String str4, List<String> list, boolean z2, boolean z3, boolean z4) {
        super(str, str2, str3, postHogDisplaySurveyTextContentType, z, str4);
        str.getClass();
        str2.getClass();
        postHogDisplaySurveyTextContentType.getClass();
        list.getClass();
        this.choices = list;
        this.hasOpenChoice = z2;
        this.shuffleOptions = z3;
        this.isMultipleChoice = z4;
    }

    public final List<String> getChoices() {
        return this.choices;
    }

    public final boolean getHasOpenChoice() {
        return this.hasOpenChoice;
    }

    public final boolean getShuffleOptions() {
        return this.shuffleOptions;
    }

    public final boolean isMultipleChoice() {
        return this.isMultipleChoice;
    }
}
