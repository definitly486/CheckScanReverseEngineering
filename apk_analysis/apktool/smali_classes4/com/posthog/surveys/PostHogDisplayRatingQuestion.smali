.class public final Lcom/posthog/surveys/PostHogDisplayRatingQuestion;
.super Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;
.source "SourceFile"


# instance fields
.field private final lowerBoundLabel:Ljava/lang/String;

.field private final ratingType:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

.field private final scaleLowerBound:I

.field private final scaleUpperBound:I

.field private final upperBoundLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p6}, Lcom/posthog/surveys/PostHogDisplaySurveyQuestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/posthog/surveys/PostHogDisplaySurveyTextContentType;ZLjava/lang/String;)V

    iput-object p7, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->ratingType:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    iput p8, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleLowerBound:I

    iput p9, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleUpperBound:I

    iput-object p10, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->lowerBoundLabel:Ljava/lang/String;

    iput-object p11, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->upperBoundLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLowerBoundLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->lowerBoundLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getRatingType()Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->ratingType:Lcom/posthog/surveys/PostHogDisplaySurveyRatingType;

    return-object p0
.end method

.method public final getScaleLowerBound()I
    .locals 0

    iget p0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleLowerBound:I

    return p0
.end method

.method public final getScaleUpperBound()I
    .locals 0

    iget p0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->scaleUpperBound:I

    return p0
.end method

.method public final getUpperBoundLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/PostHogDisplayRatingQuestion;->upperBoundLabel:Ljava/lang/String;

    return-object p0
.end method
