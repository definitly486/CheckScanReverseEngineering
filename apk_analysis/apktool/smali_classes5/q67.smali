.class public final Lq67;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J

.field public final d:D

.field public final e:Ljava/lang/Long;

.field public final f:Lcom/google/common/collect/n;


# direct methods
.method public constructor <init>(IJJDLjava/lang/Long;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJD",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lh88$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq67;->a:I

    iput-wide p2, p0, Lq67;->b:J

    iput-wide p4, p0, Lq67;->c:J

    iput-wide p6, p0, Lq67;->d:D

    iput-object p8, p0, Lq67;->e:Ljava/lang/Long;

    invoke-static {p9}, Lcom/google/common/collect/n;->n(Ljava/util/Collection;)Lcom/google/common/collect/n;

    move-result-object p1

    iput-object p1, p0, Lq67;->f:Lcom/google/common/collect/n;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lq67;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lq67;

    iget v0, p0, Lq67;->a:I

    iget v1, p1, Lq67;->a:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lq67;->b:J

    iget-wide v2, p1, Lq67;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lq67;->c:J

    iget-wide v2, p1, Lq67;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p0, Lq67;->d:D

    iget-wide v2, p1, Lq67;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq67;->e:Ljava/lang/Long;

    iget-object v1, p1, Lq67;->e:Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lq67;->f:Lcom/google/common/collect/n;

    iget-object p1, p1, Lq67;->f:Lcom/google/common/collect/n;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 7

    iget v0, p0, Lq67;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lq67;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lq67;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lq67;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-object v5, p0, Lq67;->e:Ljava/lang/Long;

    iget-object v6, p0, Lq67;->f:Lcom/google/common/collect/n;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "maxAttempts"

    iget v2, p0, Lq67;->a:I

    invoke-virtual {v0, v2, v1}, Lod5$a;->a(ILjava/lang/String;)V

    const-string v1, "initialBackoffNanos"

    iget-wide v2, p0, Lq67;->b:J

    invoke-virtual {v0, v2, v3, v1}, Lod5$a;->b(JLjava/lang/String;)V

    const-string v1, "maxBackoffNanos"

    iget-wide v2, p0, Lq67;->c:J

    invoke-virtual {v0, v2, v3, v1}, Lod5$a;->b(JLjava/lang/String;)V

    iget-wide v1, p0, Lq67;->d:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "backoffMultiplier"

    invoke-virtual {v0, v2, v1}, Lod5$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "perAttemptRecvTimeoutNanos"

    iget-object v2, p0, Lq67;->e:Ljava/lang/Long;

    invoke-virtual {v0, v2, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "retryableStatusCodes"

    iget-object p0, p0, Lq67;->f:Lcom/google/common/collect/n;

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
