.class public final Lyads/v25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/pt;


# instance fields
.field public final a:Lyads/vx5;

.field public final b:Lyads/os4;


# direct methods
.method public constructor <init>(Lyads/vx5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/v25;->a:Lyads/vx5;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/v25;->b:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/wk0;J)Lyads/ot;
    .locals 14

    iget-wide v4, p1, Lyads/wk0;->d:J

    iget-wide v1, p1, Lyads/wk0;->c:J

    sub-long/2addr v1, v4

    const-wide/16 v6, 0x4e20

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lyads/v25;->b:Lyads/os4;

    invoke-virtual {v2, v1}, Lyads/os4;->c(I)V

    iget-object v2, p0, Lyads/v25;->b:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1, v3}, Lyads/wk0;->b([BIIZ)Z

    iget-object v0, p0, Lyads/v25;->b:Lyads/os4;

    const/4 v1, -0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move v6, v1

    move-wide v9, v2

    :goto_0
    iget v7, v0, Lyads/os4;->c:I

    iget v8, v0, Lyads/os4;->b:I

    sub-int/2addr v7, v8

    const/4 v11, 0x4

    if-lt v7, v11, :cond_e

    iget-object v7, v0, Lyads/os4;->a:[B

    invoke-static {v7, v8}, Lyads/w25;->a([BI)I

    move-result v7

    iget v8, v0, Lyads/os4;->b:I

    const/16 v12, 0x1ba

    if-eq v7, v12, :cond_0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v0, v8}, Lyads/os4;->e(I)V

    invoke-static {v0}, Lyads/x25;->a(Lyads/os4;)J

    move-result-wide v7

    cmp-long v1, v7, v2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lyads/v25;->a:Lyads/vx5;

    invoke-virtual {v1, v7, v8}, Lyads/vx5;->b(J)J

    move-result-wide v7

    cmp-long v1, v7, p2

    if-lez v1, :cond_2

    cmp-long p0, v9, v2

    if-nez p0, :cond_1

    new-instance v0, Lyads/ot;

    const/4 v1, -0x1

    move-wide v2, v7

    invoke-direct/range {v0 .. v5}, Lyads/ot;-><init>(IJJ)V

    return-object v0

    :cond_1
    int-to-long v0, v6

    add-long v10, v4, v0

    new-instance v6, Lyads/ot;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Lyads/ot;-><init>(IJJ)V

    return-object v6

    :cond_2
    move-wide v6, v7

    const-wide/32 v8, 0x186a0

    add-long/2addr v8, v6

    cmp-long v1, v8, p2

    iget v8, v0, Lyads/os4;->b:I

    if-lez v1, :cond_3

    int-to-long v0, v8

    add-long v10, v4, v0

    new-instance v6, Lyads/ot;

    const/4 v7, 0x0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v6 .. v11}, Lyads/ot;-><init>(IJJ)V

    return-object v6

    :cond_3
    move-wide v9, v6

    move v6, v8

    :cond_4
    iget v1, v0, Lyads/os4;->c:I

    iget v7, v0, Lyads/os4;->b:I

    sub-int v8, v1, v7

    const/16 v13, 0xa

    if-ge v8, v13, :cond_5

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x9

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->k()I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    iget v8, v0, Lyads/os4;->c:I

    iget v13, v0, Lyads/os4;->b:I

    sub-int/2addr v8, v13

    if-ge v8, v7, :cond_6

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    goto/16 :goto_2

    :cond_6
    add-int/2addr v13, v7

    invoke-virtual {v0, v13}, Lyads/os4;->e(I)V

    iget v7, v0, Lyads/os4;->c:I

    iget v8, v0, Lyads/os4;->b:I

    sub-int/2addr v7, v8

    if-ge v7, v11, :cond_7

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    goto :goto_2

    :cond_7
    iget-object v7, v0, Lyads/os4;->a:[B

    invoke-static {v7, v8}, Lyads/w25;->a([BI)I

    move-result v7

    const/16 v8, 0x1bb

    if-ne v7, v8, :cond_9

    iget v7, v0, Lyads/os4;->b:I

    add-int/2addr v7, v11

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v7

    iget v8, v0, Lyads/os4;->c:I

    iget v13, v0, Lyads/os4;->b:I

    sub-int/2addr v8, v13

    if-ge v8, v7, :cond_8

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    goto :goto_2

    :cond_8
    add-int/2addr v13, v7

    invoke-virtual {v0, v13}, Lyads/os4;->e(I)V

    :cond_9
    :goto_1
    iget v7, v0, Lyads/os4;->c:I

    iget v8, v0, Lyads/os4;->b:I

    sub-int/2addr v7, v8

    if-lt v7, v11, :cond_d

    iget-object v7, v0, Lyads/os4;->a:[B

    invoke-static {v7, v8}, Lyads/w25;->a([BI)I

    move-result v7

    if-eq v7, v12, :cond_d

    const/16 v8, 0x1b9

    if-ne v7, v8, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v7, v7, 0x8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_b

    goto :goto_2

    :cond_b
    iget v7, v0, Lyads/os4;->b:I

    add-int/2addr v7, v11

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    iget v7, v0, Lyads/os4;->c:I

    iget v8, v0, Lyads/os4;->b:I

    sub-int/2addr v7, v8

    const/4 v8, 0x2

    if-ge v7, v8, :cond_c

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    goto :goto_2

    :cond_c
    invoke-virtual {v0}, Lyads/os4;->p()I

    move-result v7

    iget v8, v0, Lyads/os4;->c:I

    iget v13, v0, Lyads/os4;->b:I

    add-int/2addr v13, v7

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v0, v7}, Lyads/os4;->e(I)V

    goto :goto_1

    :cond_d
    :goto_2
    iget v1, v0, Lyads/os4;->b:I

    goto/16 :goto_0

    :cond_e
    cmp-long p0, v9, v2

    if-eqz p0, :cond_f

    int-to-long v0, v1

    add-long v11, v4, v0

    new-instance v7, Lyads/ot;

    const/4 v8, -0x2

    invoke-direct/range {v7 .. v12}, Lyads/ot;-><init>(IJJ)V

    return-object v7

    :cond_f
    sget-object p0, Lyads/ot;->d:Lyads/ot;

    return-object p0
.end method

.method public final a()V
    .locals 1

    .line 309
    iget-object p0, p0, Lyads/v25;->b:Lyads/os4;

    sget-object v0, Lyads/u56;->f:[B

    invoke-virtual {p0, v0}, Lyads/os4;->a([B)V

    return-void
.end method
