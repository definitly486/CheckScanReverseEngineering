.class public final Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/posthog/surveys/PostHogSurveysDelegate;


# instance fields
.field private config:Lnb6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;-><init>(Lnb6;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lnb6;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Lnb6;

    return-void
.end method

.method public synthetic constructor <init>(Lnb6;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;-><init>(Lnb6;)V

    return-void
.end method


# virtual methods
.method public cleanupSurveys()V
    .locals 1

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Lnb6;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_0

    const-string v0, "Survey cleanup requested"

    invoke-interface {p0, v0}, Lic6;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public renderSurvey(Lcom/posthog/surveys/PostHogDisplaySurvey;Lnl3;Ldm3;Lnl3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/posthog/surveys/PostHogDisplaySurvey;",
            "Lnl3<",
            "-",
            "Lcom/posthog/surveys/PostHogDisplaySurvey;",
            "Lj59;",
            ">;",
            "Ldm3<",
            "-",
            "Lcom/posthog/surveys/PostHogDisplaySurvey;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/posthog/surveys/PostHogSurveyResponse;",
            "Lcom/posthog/surveys/PostHogNextSurveyQuestion;",
            ">;",
            "Lnl3<",
            "-",
            "Lcom/posthog/surveys/PostHogDisplaySurvey;",
            "Lj59;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Lnb6;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lnb6;->v:Lic6;

    if-eqz p2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Survey requested to be shown: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogDisplaySurvey;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/posthog/surveys/PostHogDisplaySurvey;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lic6;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;->config:Lnb6;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lnb6;->v:Lic6;

    if-eqz p0, :cond_1

    const-string p1, "Implement your own PostHogSurveysDelegate to render surveys"

    invoke-interface {p0, p1}, Lic6;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
