.class public final Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromSurveyAppearance$posthog$default(Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;Lcom/posthog/surveys/SurveyAppearance;Lcom/posthog/surveys/SurveyTranslation;ILjava/lang/Object;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;->fromSurveyAppearance$posthog(Lcom/posthog/surveys/SurveyAppearance;Lcom/posthog/surveys/SurveyTranslation;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromSurveyAppearance$posthog(Lcom/posthog/surveys/SurveyAppearance;Lcom/posthog/surveys/SurveyTranslation;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;
    .locals 21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getThankYouMessageDescriptionContentType()Lcom/posthog/surveys/SurveyTextContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/posthog/surveys/SurveyTextContentType;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "html"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->HTML:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    :goto_1
    move-object/from16 v19, v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->TEXT:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    goto :goto_1

    :goto_2
    new-instance v1, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getFontFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getBorderColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getSubmitButtonColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getSubmitButtonText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getSubmitButtonTextColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getTextColor()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getDescriptionTextColor()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getRatingButtonColor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getRatingButtonActiveColor()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getInputBackground()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getInputTextColor()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getPlaceholder()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getSurveyPopupDelaySeconds()Ljava/lang/Double;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getDisplayThankYouMessage()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_3
    move/from16 v16, v0

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/posthog/surveys/SurveyTranslation;->getThankYouMessageHeader()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_6

    :cond_3
    :goto_5
    move-object/from16 v17, v0

    goto :goto_7

    :cond_4
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getThankYouMessageHeader()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :goto_7
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/posthog/surveys/SurveyTranslation;->getThankYouMessageDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_9

    :cond_5
    :goto_8
    move-object/from16 v18, v0

    goto :goto_a

    :cond_6
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getThankYouMessageDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :goto_a
    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/posthog/surveys/SurveyTranslation;->getThankYouMessageCloseButtonText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_c

    :cond_7
    :goto_b
    move-object/from16 v20, v0

    goto :goto_d

    :cond_8
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/posthog/surveys/SurveyAppearance;->getThankYouMessageCloseButtonText()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :goto_d
    invoke-direct/range {v1 .. v20}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;Ljava/lang/String;)V

    return-object v1
.end method
