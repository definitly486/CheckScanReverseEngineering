.class public final Lcom/tapjoy/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>(IJJJJIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tapjoy/internal/d;->a:I

    iput-wide p2, p0, Lcom/tapjoy/internal/d;->b:J

    iput-wide p4, p0, Lcom/tapjoy/internal/d;->c:J

    iput-wide p6, p0, Lcom/tapjoy/internal/d;->d:J

    iput-wide p8, p0, Lcom/tapjoy/internal/d;->e:J

    iput p10, p0, Lcom/tapjoy/internal/d;->f:I

    iput p11, p0, Lcom/tapjoy/internal/d;->g:I

    iput p12, p0, Lcom/tapjoy/internal/d;->h:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/tapjoy/internal/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/tapjoy/internal/d;

    iget v1, p0, Lcom/tapjoy/internal/d;->a:I

    iget v3, p1, Lcom/tapjoy/internal/d;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/tapjoy/internal/d;->b:J

    iget-wide v5, p1, Lcom/tapjoy/internal/d;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/tapjoy/internal/d;->c:J

    iget-wide v5, p1, Lcom/tapjoy/internal/d;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/tapjoy/internal/d;->d:J

    iget-wide v5, p1, Lcom/tapjoy/internal/d;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/tapjoy/internal/d;->e:J

    iget-wide v5, p1, Lcom/tapjoy/internal/d;->e:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/tapjoy/internal/d;->f:I

    iget v3, p1, Lcom/tapjoy/internal/d;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/tapjoy/internal/d;->g:I

    iget v3, p1, Lcom/tapjoy/internal/d;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget p0, p0, Lcom/tapjoy/internal/d;->h:I

    iget p1, p1, Lcom/tapjoy/internal/d;->h:I

    if-eq p0, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/tapjoy/internal/d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/tapjoy/internal/d;->b:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/tapjoy/internal/d;->c:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/tapjoy/internal/d;->d:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget-wide v2, p0, Lcom/tapjoy/internal/d;->e:J

    invoke-static {v0, v1, v2, v3}, Lvg;->b(IIJ)I

    move-result v0

    iget v2, p0, Lcom/tapjoy/internal/d;->f:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget v2, p0, Lcom/tapjoy/internal/d;->g:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget p0, p0, Lcom/tapjoy/internal/d;->h:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    iget v0, p0, Lcom/tapjoy/internal/d;->a:I

    iget-wide v1, p0, Lcom/tapjoy/internal/d;->b:J

    iget-wide v3, p0, Lcom/tapjoy/internal/d;->c:J

    iget-wide v5, p0, Lcom/tapjoy/internal/d;->d:J

    iget-wide v7, p0, Lcom/tapjoy/internal/d;->e:J

    iget v9, p0, Lcom/tapjoy/internal/d;->f:I

    iget v10, p0, Lcom/tapjoy/internal/d;->g:I

    iget p0, p0, Lcom/tapjoy/internal/d;->h:I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "AggregatedNetworkStats(uid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rxBytes="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", txBytes="

    const-string v1, ", rxPackets="

    invoke-static {v11, v0, v3, v4, v1}, Ldq;->d(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", txPackets="

    const-string v1, ", state="

    invoke-static {v11, v0, v7, v8, v1}, Ldq;->d(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    const-string v0, ", roaming="

    const-string v1, ", tag="

    invoke-static {v11, v9, v0, v10, v1}, Lgg;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ")"

    invoke-static {v11, v0, p0}, Ll2;->e(Ljava/lang/StringBuilder;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
