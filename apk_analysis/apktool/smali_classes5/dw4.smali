.class public final Ldw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom1;
.implements Ljava/lang/Iterable;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lom1<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Long;",
        ">;",
        "Lre4;"
    }
.end annotation


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ldw4;->b:J

    cmp-long v0, p1, p3

    if-ltz v0, :cond_0

    goto :goto_3

    :cond_0
    const-wide/16 v0, 0x1

    rem-long v2, p3, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    add-long/2addr v2, v0

    :goto_0
    rem-long/2addr p1, v0

    cmp-long v6, p1, v4

    if-ltz v6, :cond_2

    goto :goto_1

    :cond_2
    add-long/2addr p1, v0

    :goto_1
    sub-long/2addr v2, p1

    rem-long/2addr v2, v0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_3

    goto :goto_2

    :cond_3
    add-long/2addr v2, v0

    :goto_2
    sub-long/2addr p3, v2

    :goto_3
    iput-wide p3, p0, Ldw4;->c:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ldw4;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldw4;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ldw4;

    invoke-virtual {v0}, Ldw4;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Ldw4;

    iget-wide v0, p1, Ldw4;->b:J

    iget-wide v2, p0, Ldw4;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Ldw4;->c:J

    iget-wide p0, p1, Ldw4;->c:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getEndInclusive()Ljava/lang/Comparable;
    .locals 2

    iget-wide v0, p0, Ldw4;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final getStart()Ljava/lang/Comparable;
    .locals 2

    iget-wide v0, p0, Ldw4;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 7

    invoke-virtual {p0}, Ldw4;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-wide v0, p0, Ldw4;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    const-wide/16 v3, 0x1f

    mul-long/2addr v3, v0

    iget-wide v0, p0, Ldw4;->c:J

    ushr-long v5, v0, v2

    xor-long/2addr v0, v5

    add-long/2addr v3, v0

    long-to-int p0, v3

    return p0
.end method

.method public final isEmpty()Z
    .locals 4

    iget-wide v0, p0, Ldw4;->b:J

    iget-wide v2, p0, Ldw4;->c:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 5

    new-instance v0, Lcw4;

    iget-wide v1, p0, Ldw4;->b:J

    iget-wide v3, p0, Ldw4;->c:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcw4;-><init>(JJ)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ldw4;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ldw4;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
