.class public final Lcom/tapjoy/internal/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/tapjoy/internal/n0;

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Integer;

.field public final f:Lcom/tapjoy/internal/t;

.field public final g:Ljava/util/List;

.field public final h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tapjoy/internal/n0;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lcom/tapjoy/internal/t;Ljava/util/List;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/p0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/tapjoy/internal/p0;->b:Lcom/tapjoy/internal/n0;

    iput-object p3, p0, Lcom/tapjoy/internal/p0;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/tapjoy/internal/p0;->d:Ljava/lang/Long;

    iput-object p5, p0, Lcom/tapjoy/internal/p0;->e:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/tapjoy/internal/p0;->f:Lcom/tapjoy/internal/t;

    iput-object p7, p0, Lcom/tapjoy/internal/p0;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/tapjoy/internal/p0;->h:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/p0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tapjoy/internal/p0;

    iget-object v1, p0, Lcom/tapjoy/internal/p0;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/p0;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/tapjoy/internal/p0;->b:Lcom/tapjoy/internal/n0;

    iget-object v3, p1, Lcom/tapjoy/internal/p0;->b:Lcom/tapjoy/internal/n0;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/tapjoy/internal/p0;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p0;->c:Ljava/lang/Long;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/tapjoy/internal/p0;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcom/tapjoy/internal/p0;->d:Ljava/lang/Long;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/tapjoy/internal/p0;->e:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/tapjoy/internal/p0;->e:Ljava/lang/Integer;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/tapjoy/internal/p0;->f:Lcom/tapjoy/internal/t;

    iget-object v3, p1, Lcom/tapjoy/internal/p0;->f:Lcom/tapjoy/internal/t;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/tapjoy/internal/p0;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/tapjoy/internal/p0;->g:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/tapjoy/internal/p0;->h:Ljava/lang/Long;

    iget-object p1, p1, Lcom/tapjoy/internal/p0;->h:Ljava/lang/Long;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/p0;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/tapjoy/internal/p0;->b:Lcom/tapjoy/internal/n0;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/tapjoy/internal/p0;->c:Ljava/lang/Long;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/tapjoy/internal/p0;->d:Ljava/lang/Long;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/tapjoy/internal/p0;->e:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/tapjoy/internal/p0;->f:Lcom/tapjoy/internal/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/tapjoy/internal/p0;->g:Ljava/util/List;

    invoke-static {v2, v0, v1}, Le2;->b(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lcom/tapjoy/internal/p0;->h:Ljava/lang/Long;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/tapjoy/internal/p0;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/p0;->b:Lcom/tapjoy/internal/n0;

    iget-object v2, p0, Lcom/tapjoy/internal/p0;->c:Ljava/lang/Long;

    iget-object v3, p0, Lcom/tapjoy/internal/p0;->d:Ljava/lang/Long;

    iget-object v4, p0, Lcom/tapjoy/internal/p0;->e:Ljava/lang/Integer;

    iget-object v5, p0, Lcom/tapjoy/internal/p0;->f:Lcom/tapjoy/internal/t;

    iget-object v6, p0, Lcom/tapjoy/internal/p0;->g:Ljava/util/List;

    iget-object p0, p0, Lcom/tapjoy/internal/p0;->h:Ljava/lang/Long;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "StatsConfig(token="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", category="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", startTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", endTime="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", frequencySeconds="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", intervalMode="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", filters="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lastFetchTimestamp="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
