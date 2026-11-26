.class public final Lyads/nf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/sh5;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(J[J[J)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_2

    array-length v0, p4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lyads/nf3;->d:Z

    if-eqz v3, :cond_1

    aget-wide v3, p4, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    new-array v4, v3, [J

    iput-object v4, p0, Lyads/nf3;->a:[J

    new-array v3, v3, [J

    iput-object v3, p0, Lyads/nf3;->b:[J

    invoke-static {p3, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p4, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lyads/nf3;->a:[J

    iput-object p4, p0, Lyads/nf3;->b:[J

    :goto_1
    iput-wide p1, p0, Lyads/nf3;->c:J

    return-void

    :cond_2
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final b(J)Lyads/qh5;
    .locals 8

    iget-boolean v0, p0, Lyads/nf3;->d:Z

    if-nez v0, :cond_0

    new-instance p0, Lyads/qh5;

    sget-object p1, Lyads/uh5;->c:Lyads/uh5;

    invoke-direct {p0, p1, p1}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lyads/nf3;->b:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lyads/u56;->b([JJZ)I

    move-result v0

    new-instance v2, Lyads/uh5;

    iget-object v3, p0, Lyads/nf3;->b:[J

    aget-wide v4, v3, v0

    iget-object p0, p0, Lyads/nf3;->a:[J

    aget-wide v6, p0, v0

    invoke-direct {v2, v4, v5, v6, v7}, Lyads/uh5;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-eqz p1, :cond_2

    array-length p1, v3

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lyads/uh5;

    add-int/2addr v0, v1

    aget-wide v4, v3, v0

    aget-wide v0, p0, v0

    invoke-direct {p1, v4, v5, v0, v1}, Lyads/uh5;-><init>(JJ)V

    new-instance p0, Lyads/qh5;

    invoke-direct {p0, v2, p1}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lyads/qh5;

    invoke-direct {p0, v2, v2}, Lyads/qh5;-><init>(Lyads/uh5;Lyads/uh5;)V

    return-object p0
.end method

.method public final b()Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lyads/nf3;->d:Z

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lyads/nf3;->c:J

    return-wide v0
.end method
