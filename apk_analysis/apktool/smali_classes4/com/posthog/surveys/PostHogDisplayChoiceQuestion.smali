.class public final Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;
.super Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.source "SourceFile"


# instance fields
.field private final choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOpenChoice:Z

.field private final isMultipleChoice:Z

.field private final shuffleOptions:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Ljava/util/List;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p6}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V

    iput-object p7, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->choices:Ljava/util/List;

    iput-boolean p8, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->hasOpenChoice:Z

    iput-boolean p9, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->shuffleOptions:Z

    iput-boolean p10, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->isMultipleChoice:Z

    return-void
.end method


# virtual methods
.method public final getChoices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->choices:Ljava/util/List;

    return-object p0
.end method

.method public final getHasOpenChoice()Z
    .locals 0

    iget-boolean p0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->hasOpenChoice:Z

    return p0
.end method

.method public final getShuffleOptions()Z
    .locals 0

    iget-boolean p0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->shuffleOptions:Z

    return p0
.end method

.method public final isMultipleChoice()Z
    .locals 0

    iget-boolean p0, p0, Lcom/posthog/surveys/PostHogDisplayChoiceQuestion;->isMultipleChoice:Z

    return p0
.end method
