.class public final Lcom/posthog/surveys/SurveyEventCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final name:Ljava/lang/String;

.field private final propertyFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyPropertyFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyPropertyFilter;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;ILjh2;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/posthog/surveys/SurveyEventCondition;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/surveys/SurveyEventCondition;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/posthog/surveys/SurveyEventCondition;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/posthog/surveys/SurveyEventCondition;->copy(Ljava/lang/String;Ljava/util/Map;)Lcom/posthog/surveys/SurveyEventCondition;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyPropertyFilter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Map;)Lcom/posthog/surveys/SurveyEventCondition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyPropertyFilter;",
            ">;)",
            "Lcom/posthog/surveys/SurveyEventCondition;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/posthog/surveys/SurveyEventCondition;

    invoke-direct {p0, p1, p2}, Lcom/posthog/surveys/SurveyEventCondition;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/surveys/SurveyEventCondition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/surveys/SurveyEventCondition;

    iget-object v1, p0, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    iget-object p1, p1, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPropertyFilters()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/posthog/surveys/SurveyPropertyFilter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurveyEventCondition(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/posthog/surveys/SurveyEventCondition;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", propertyFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/posthog/surveys/SurveyEventCondition;->propertyFilters:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
