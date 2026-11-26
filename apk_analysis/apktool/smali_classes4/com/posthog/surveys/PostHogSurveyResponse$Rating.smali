.class public final Lcom/posthog/surveys/PostHogSurveyResponse$Rating;
.super Lcom/posthog/surveys/PostHogSurveyResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/posthog/surveys/PostHogSurveyResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rating"
.end annotation


# instance fields
.field private final rating:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/posthog/surveys/PostHogSurveyResponse;-><init>(Ljh2;)V

    iput-object p1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/PostHogSurveyResponse$Rating;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/posthog/surveys/PostHogSurveyResponse$Rating;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->copy(Ljava/lang/Integer;)Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    return-object p0
.end method

.method public final copy(Ljava/lang/Integer;)Lcom/posthog/surveys/PostHogSurveyResponse$Rating;
    .locals 0

    new-instance p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    invoke-direct {p0, p1}, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;-><init>(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRating()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rating(rating="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/posthog/surveys/PostHogSurveyResponse$Rating;->rating:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
