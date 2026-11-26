.class public final Lcom/posthog/surveys/PostHogSurveysConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private overrideDisplayLanguage:Ljava/lang/String;

.field private surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/posthog/surveys/PostHogSurveysDefaultDelegate;-><init>(Lnb6;ILjh2;)V

    iput-object v0, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;

    return-void
.end method


# virtual methods
.method public final getOverrideDisplayLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->overrideDisplayLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public final getSurveysDelegate()Lcom/posthog/surveys/PostHogSurveysDelegate;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;

    return-object p0
.end method

.method public final setOverrideDisplayLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->overrideDisplayLanguage:Ljava/lang/String;

    return-void
.end method

.method public final setSurveysDelegate(Lcom/posthog/surveys/PostHogSurveysDelegate;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/posthog/surveys/PostHogSurveysConfig;->surveysDelegate:Lcom/posthog/surveys/PostHogSurveysDelegate;

    return-void
.end method
