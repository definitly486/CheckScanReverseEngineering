.class public final Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;
    }
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

    invoke-direct {p0}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;-><init>()V

    return-void
.end method

.method public static synthetic fromSurveyQuestion$posthog$default(Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/SurveyQuestionTranslation;ILjava/lang/Object;)Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;->fromSurveyQuestion$posthog(Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/SurveyQuestionTranslation;)Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final fromSurveyQuestion$posthog(Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/SurveyQuestionTranslation;)Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const/4 p0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getQuestion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getQuestion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p0

    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object v4, v1

    goto :goto_5

    :cond_4
    :goto_4
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :goto_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_7

    :cond_5
    :goto_6
    move-object v7, v1

    goto :goto_8

    :cond_6
    :goto_7
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getButtonText()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :goto_8
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getOptional()Ljava/lang/Boolean;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v6, v1

    goto :goto_9

    :cond_7
    move v6, v5

    :goto_9
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getDescriptionContentType()Lcom/posthog/surveys/SurveyTextContentType;

    move-result-object v1

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v1, :cond_a

    sget-object v10, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v10, v1

    if-eq v1, v9, :cond_9

    if-ne v1, v8, :cond_8

    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->TEXT:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    goto :goto_a

    :cond_8
    invoke-static {}, Lme0;->e()V

    return-object p0

    :cond_9
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->HTML:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    :goto_a
    if-nez v1, :cond_b

    :cond_a
    sget-object v1, Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;->TEXT:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    :cond_b
    invoke-virtual {p1}, Lcom/posthog/surveys/SurveyQuestion;->getType()Lcom/posthog/surveys/SurveyQuestionType;

    move-result-object v10

    if-nez v10, :cond_c

    const/4 v10, -0x1

    goto :goto_b

    :cond_c
    sget-object v11, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v11, v10

    :goto_b
    if-eq v10, v9, :cond_34

    if-eq v10, v8, :cond_2f

    const/4 v11, 0x3

    const/4 v12, 0x5

    if-eq v10, v11, :cond_1d

    const/4 v0, 0x4

    sget-object v8, Lkx2;->b:Lkx2;

    if-eq v10, v0, :cond_15

    if-eq v10, v12, :cond_d

    return-object p0

    :cond_d
    instance-of v0, p1, Lcom/posthog/surveys/MultipleSurveyQuestion;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/posthog/surveys/MultipleSurveyQuestion;

    goto :goto_c

    :cond_e
    move-object p1, p0

    :goto_c
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getChoices()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_f

    goto :goto_e

    :cond_f
    move-object v8, p2

    :goto_d
    move v10, v5

    move-object v5, v1

    goto :goto_f

    :cond_10
    :goto_e
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/posthog/surveys/MultipleSurveyQuestion;->getChoices()Ljava/util/List;

    move-result-object p0

    :cond_11
    if-nez p0, :cond_12

    goto :goto_d

    :cond_12
    move-object v8, p0

    goto :goto_d

    :goto_f
    new-instance v1, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/posthog/surveys/MultipleSurveyQuestion;->getHasOpenChoice()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    move v9, p0

    goto :goto_10

    :cond_13
    move v9, v10

    :goto_10
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/posthog/surveys/MultipleSurveyQuestion;->getShuffleOptions()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    move v10, p0

    :cond_14
    const/4 v11, 0x1

    invoke-direct/range {v1 .. v11}, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/util/List;ZZZ)V

    return-object v1

    :cond_15
    move v10, v5

    move-object v5, v1

    instance-of v0, p1, Lcom/posthog/surveys/SingleSurveyQuestion;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/posthog/surveys/SingleSurveyQuestion;

    goto :goto_11

    :cond_16
    move-object p1, p0

    :goto_11
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getChoices()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_17

    goto :goto_12

    :cond_17
    move-object v8, p2

    goto :goto_13

    :cond_18
    :goto_12
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getChoices()Ljava/util/List;

    move-result-object p0

    :cond_19
    if-nez p0, :cond_1a

    goto :goto_13

    :cond_1a
    move-object v8, p0

    :goto_13
    new-instance v1, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getHasOpenChoice()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    move v9, p0

    goto :goto_14

    :cond_1b
    move v9, v10

    :goto_14
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/posthog/surveys/SingleSurveyQuestion;->getShuffleOptions()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    move v10, p0

    :cond_1c
    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/util/List;ZZZ)V

    return-object v1

    :cond_1d
    move v10, v5

    move-object v5, v1

    instance-of v1, p1, Lcom/posthog/surveys/RatingSurveyQuestion;

    if-eqz v1, :cond_2a

    check-cast p1, Lcom/posthog/surveys/RatingSurveyQuestion;

    invoke-virtual {p1}, Lcom/posthog/surveys/RatingSurveyQuestion;->getDisplay()Lcom/posthog/surveys/SurveyRatingDisplayType;

    move-result-object v1

    if-eqz v1, :cond_21

    sget-object v11, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v11, v1

    if-eq v1, v9, :cond_1f

    if-ne v1, v8, :cond_1e

    sget-object p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    goto :goto_15

    :cond_1e
    invoke-static {}, Lme0;->e()V

    return-object p0

    :cond_1f
    sget-object p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->EMOJI:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    :goto_15
    if-nez p0, :cond_20

    goto :goto_17

    :cond_20
    :goto_16
    move-object v8, p0

    goto :goto_18

    :cond_21
    :goto_17
    sget-object p0, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    goto :goto_16

    :goto_18
    invoke-virtual {p1}, Lcom/posthog/surveys/RatingSurveyQuestion;->getScale()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_22

    goto :goto_19

    :cond_22
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lb36;

    invoke-direct {v9, p0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1a

    :cond_23
    :goto_19
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lcom/posthog/surveys/RatingSurveyQuestion;->getScale()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :cond_24
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v9, Lb36;

    invoke-direct {v9, p0, v1}, Lb36;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1a
    iget-object p0, v9, Lb36;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object v1, v9, Lb36;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v10

    new-instance v1, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getLowerBoundLabel()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_25

    goto :goto_1b

    :cond_25
    move-object v11, v9

    goto :goto_1c

    :cond_26
    :goto_1b
    invoke-virtual {p1}, Lcom/posthog/surveys/RatingSurveyQuestion;->getLowerBoundLabel()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_25

    move-object v11, v0

    :goto_1c
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getUpperBoundLabel()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_27

    goto :goto_1d

    :cond_27
    move v9, p0

    move-object v12, p2

    goto :goto_1e

    :cond_28
    :goto_1d
    invoke-virtual {p1}, Lcom/posthog/surveys/RatingSurveyQuestion;->getUpperBoundLabel()Ljava/lang/String;

    move-result-object p1

    move v9, p0

    if-nez p1, :cond_29

    move-object v12, v0

    goto :goto_1e

    :cond_29
    move-object v12, p1

    :goto_1e
    invoke-direct/range {v1 .. v12}, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;IILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2a
    new-instance v1, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;

    sget-object v8, Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;->NUMBER:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getLowerBoundLabel()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2b

    goto :goto_1f

    :cond_2b
    move-object v11, p0

    goto :goto_20

    :cond_2c
    :goto_1f
    move-object v11, v0

    :goto_20
    if-eqz p2, :cond_2e

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getUpperBoundLabel()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2d

    goto :goto_21

    :cond_2d
    move-object v12, p0

    goto :goto_22

    :cond_2e
    :goto_21
    move-object v12, v0

    :goto_22
    const/4 v9, 0x1

    const/4 v10, 0x5

    invoke-direct/range {v1 .. v12}, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;IILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_2f
    move-object v5, v1

    instance-of v0, p1, Lcom/posthog/surveys/LinkSurveyQuestion;

    if-eqz v0, :cond_30

    check-cast p1, Lcom/posthog/surveys/LinkSurveyQuestion;

    goto :goto_23

    :cond_30
    move-object p1, p0

    :goto_23
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/posthog/surveys/LinkSurveyQuestion;->getLink()Ljava/lang/String;

    move-result-object p0

    :cond_31
    new-instance v1, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;

    if-eqz p2, :cond_33

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyQuestionTranslation;->getLink()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_32

    goto :goto_24

    :cond_32
    move-object v8, p1

    goto :goto_25

    :cond_33
    :goto_24
    move-object v8, p0

    :goto_25
    invoke-direct/range {v1 .. v8}, Lcom/posthog/surveys/PostHogDisplayLinkQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_34
    move-object v5, v1

    new-instance v1, Lcom/posthog/surveys/PostHogDisplayOpenQuestion;

    invoke-direct/range {v1 .. v7}, Lcom/posthog/surveys/PostHogDisplayOpenQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V

    return-object v1
.end method
