.class public final Lcom/posthog/surveys/SurveyPropertyFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final operator:Lcom/posthog/surveys/SurveyMatchType;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/posthog/surveys/SurveyMatchType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/posthog/surveys/SurveyMatchType;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/surveys/SurveyPropertyFilter;->values:Ljava/util/List;

    iput-object p2, p0, Lcom/posthog/surveys/SurveyPropertyFilter;->operator:Lcom/posthog/surveys/SurveyMatchType;

    return-void
.end method


# virtual methods
.method public final getOperator()Lcom/posthog/surveys/SurveyMatchType;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyPropertyFilter;->operator:Lcom/posthog/surveys/SurveyMatchType;

    return-object p0
.end method

.method public final getValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/SurveyPropertyFilter;->values:Ljava/util/List;

    return-object p0
.end method
