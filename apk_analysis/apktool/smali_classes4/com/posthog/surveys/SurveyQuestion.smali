.class public Lcom/posthog/surveys/SurveyQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final branching:Lcom/posthog/surveys/SurveyQuestionBranching;

.field private final buttonText:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final descriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

.field private final id:Ljava/lang/String;

.field private final optional:Ljava/lang/Boolean;

.field private final question:Ljava/lang/String;

.field private final translations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyQuestionTranslation;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/posthog/surveys/SurveyQuestionType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBranching()Lcom/posthog/surveys/SurveyQuestionBranching;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->branching:Lcom/posthog/surveys/SurveyQuestionBranching;

    return-object p0
.end method

.method public final getButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getDescriptionContentType()Lcom/posthog/surveys/SurveyTextContentType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->descriptionContentType:Lcom/posthog/surveys/SurveyTextContentType;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getOptional()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->optional:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getQuestion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->question:Ljava/lang/String;

    return-object p0
.end method

.method public final getTranslations()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyQuestionTranslation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->translations:Ljava/util/Map;

    return-object p0
.end method

.method public final getType()Lcom/posthog/surveys/SurveyQuestionType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyQuestion;->type:Lcom/posthog/surveys/SurveyQuestionType;

    return-object p0
.end method
