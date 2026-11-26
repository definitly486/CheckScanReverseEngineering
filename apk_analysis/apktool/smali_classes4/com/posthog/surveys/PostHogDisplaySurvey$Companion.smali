.class public final Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogDisplaySurvey;
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

    invoke-direct {p0}, Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;-><init>()V

    return-void
.end method

.method public static synthetic toDisplaySurvey$default(Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;Lcom/posthog/surveys/Survey;Lcom/posthog/surveys/SurveyTranslation;Ljava/util/List;ILjava/lang/Object;)Lcom/posthog/surveys/PostHogDisplaySurvey;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/surveys/PostHogDisplaySurvey$Companion;->toDisplaySurvey(Lcom/posthog/surveys/Survey;Lcom/posthog/surveys/SurveyTranslation;Ljava/util/List;)Lcom/posthog/surveys/PostHogDisplaySurvey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toDisplaySurvey(Lcom/posthog/surveys/Survey;Lcom/posthog/surveys/SurveyTranslation;Ljava/util/List;)Lcom/posthog/surveys/PostHogDisplaySurvey;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/surveys/Survey;",
            "Lcom/posthog/surveys/SurveyTranslation;",
            "Ljava/util/List<",
            "Lcom/posthog/surveys/SurveyQuestionTranslation;",
            ">;)",
            "Lcom/posthog/surveys/PostHogDisplaySurvey;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getQuestions()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_2

    check-cast v1, Lcom/posthog/surveys/SurveyQuestion;

    sget-object v5, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->Companion:Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;

    if-eqz p3, :cond_0

    invoke-static {v0, p3}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/posthog/surveys/SurveyQuestionTranslation;

    :cond_0
    invoke-virtual {v5, v1, v2}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;->fromSurveyQuestion$posthog(Lcom/posthog/surveys/SurveyQuestion;Lcom/posthog/surveys/SurveyQuestionTranslation;)Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->o()V

    throw v2

    :cond_3
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/posthog/surveys/SurveyTranslation;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    :cond_4
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getName()Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getAppearance()Lcom/posthog/surveys/SurveyAppearance;

    move-result-object p3

    if-eqz p3, :cond_6

    sget-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;->Companion:Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;

    invoke-virtual {v0, p3, p2}, Lcom/posthog/surveys/PostHogDisplaySurveyAppearance$Companion;->fromSurveyAppearance$posthog(Lcom/posthog/surveys/SurveyAppearance;Lcom/posthog/surveys/SurveyTranslation;)Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;

    move-result-object v2

    :cond_6
    move-object v4, v2

    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {p1}, Lcom/posthog/surveys/Survey;->getEndDate()Ljava/util/Date;

    move-result-object v6

    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurvey;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/posthog/surveys/PostHogDisplaySurvey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/posthog/surveys/PostHogDisplaySurveyAppearance;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method
