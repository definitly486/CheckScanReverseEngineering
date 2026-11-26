package com.posthog.surveys;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class SurveyQuestion {
    private final SurveyQuestionBranching branching;
    private final String buttonText;
    private final String description;
    private final SurveyTextContentType descriptionContentType;
    private final String id;
    private final Boolean optional;
    private final String question;
    private final Map<String, SurveyQuestionTranslation> translations;
    private final SurveyQuestionType type;

    public final SurveyQuestionBranching getBranching() {
        return this.branching;
    }

    public final String getButtonText() {
        return this.buttonText;
    }

    public final String getDescription() {
        return this.description;
    }

    public final SurveyTextContentType getDescriptionContentType() {
        return this.descriptionContentType;
    }

    public final String getId() {
        return this.id;
    }

    public final Boolean getOptional() {
        return this.optional;
    }

    public final String getQuestion() {
        return this.question;
    }

    public final Map<String, SurveyQuestionTranslation> getTranslations() {
        return this.translations;
    }

    public final SurveyQuestionType getType() {
        return this.type;
    }
}
