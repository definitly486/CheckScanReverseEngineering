.class public Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;


# instance fields
.field private final buttonText:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final isOptional:Z

.field private final question:Ljava/lang/String;

.field private final questionDescription:Ljava/lang/String;

.field private final questionDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;-><init>(Ljh2;)V

    sput-object v0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->Companion:Lcom/posthog/surveys/PostHogDisplaySurveyQuestion$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->question:Ljava/lang/String;

    iput-object p3, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescription:Ljava/lang/String;

    iput-object p4, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    iput-boolean p5, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->isOptional:Z

    iput-object p6, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->buttonText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getButtonText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->buttonText:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuestion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->question:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuestionDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getQuestionDescriptionContentType()Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->questionDescriptionContentType:Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;

    return-object p0
.end method

.method public final isOptional()Z
    .locals 0

    iget-boolean p0, p0, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;->isOptional:Z

    return p0
.end method
