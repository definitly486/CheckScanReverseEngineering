.class public final Lcom/posthog/internal/FeatureFlagMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hasExperiment:Ljava/lang/Boolean;
    .annotation runtime Lbq7;
        value = "has_experiment"
    .end annotation
.end field

.field private final id:I

.field private final payload:Ljava/lang/String;

.field private final version:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    iput-object p2, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    iput p3, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    iput-object p4, p0, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/lang/Boolean;ILjh2;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 12
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/posthog/internal/FeatureFlagMetadata;-><init>(ILjava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/internal/FeatureFlagMetadata;ILjava/lang/String;ILjava/lang/Boolean;ILjava/lang/Object;)Lcom/posthog/internal/FeatureFlagMetadata;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/posthog/internal/FeatureFlagMetadata;->copy(ILjava/lang/String;ILjava/lang/Boolean;)Lcom/posthog/internal/FeatureFlagMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    return p0
.end method

.method public final component4()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;ILjava/lang/Boolean;)Lcom/posthog/internal/FeatureFlagMetadata;
    .locals 0

    new-instance p0, Lcom/posthog/internal/FeatureFlagMetadata;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/posthog/internal/FeatureFlagMetadata;-><init>(ILjava/lang/String;ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/internal/FeatureFlagMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/internal/FeatureFlagMetadata;

    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    iget v3, p1, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    iget v3, p1, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHasExperiment()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    return p0
.end method

.method public final getPayload()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    return-object p0
.end method

.method public final getVersion()I
    .locals 0

    iget p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FeatureFlagMetadata(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/posthog/internal/FeatureFlagMetadata;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasExperiment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/posthog/internal/FeatureFlagMetadata;->hasExperiment:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
