.class public final Lcom/posthog/internal/PostHogBatchEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apiKey:Ljava/lang/String;
    .annotation runtime Lbq7;
        value = "api_key"
    .end annotation
.end field

.field private final batch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private sentAt:Ljava/util/Date;
    .annotation runtime Lbq7;
        value = "sent_at"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    iput-object p3, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;ILjh2;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/posthog/internal/PostHogBatchEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/posthog/internal/PostHogBatchEvent;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;ILjava/lang/Object;)Lcom/posthog/internal/PostHogBatchEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/posthog/internal/PostHogBatchEvent;->copy(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)Lcom/posthog/internal/PostHogBatchEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)Lcom/posthog/internal/PostHogBatchEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;",
            "Ljava/util/Date;",
            ")",
            "Lcom/posthog/internal/PostHogBatchEvent;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/posthog/internal/PostHogBatchEvent;

    invoke-direct {p0, p1, p2, p3}, Lcom/posthog/internal/PostHogBatchEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/posthog/internal/PostHogBatchEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/posthog/internal/PostHogBatchEvent;

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    iget-object v3, p1, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    iget-object p1, p1, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getBatch()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/posthog/PostHogEvent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    return-object p0
.end method

.method public final getSentAt()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final setSentAt(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PostHogBatchEvent(apiKey="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", batch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/posthog/internal/PostHogBatchEvent;->batch:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sentAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/posthog/internal/PostHogBatchEvent;->sentAt:Ljava/util/Date;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
