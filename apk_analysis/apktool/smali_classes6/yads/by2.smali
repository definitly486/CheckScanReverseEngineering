.class public final Lyads/by2;
.super Lyads/qt;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lyads/ky2;IJJ)V
    .locals 14

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lci;

    invoke-direct {v1, p1}, Lci;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lyads/ay2;

    move/from16 v0, p2

    invoke-direct {v2, p1, v0}, Lyads/ay2;-><init>(Lyads/ky2;I)V

    iget-wide v5, p1, Lyads/ky2;->j:J

    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, v5

    iget v0, p1, Lyads/ky2;->e:I

    int-to-long v7, v0

    div-long/2addr v3, v7

    :goto_0
    iget v0, p1, Lyads/ky2;->d:I

    if-lez v0, :cond_1

    int-to-long v7, v0

    iget v0, p1, Lyads/ky2;->c:I

    int-to-long v9, v0

    add-long/2addr v7, v9

    const-wide/16 v9, 0x2

    div-long/2addr v7, v9

    const-wide/16 v9, 0x1

    :goto_1
    add-long/2addr v7, v9

    move-wide v11, v7

    goto :goto_3

    :cond_1
    iget v0, p1, Lyads/ky2;->a:I

    iget v7, p1, Lyads/ky2;->b:I

    if-ne v0, v7, :cond_2

    if-lez v0, :cond_2

    int-to-long v7, v0

    goto :goto_2

    :cond_2
    const-wide/16 v7, 0x1000

    :goto_2
    iget v0, p1, Lyads/ky2;->g:I

    int-to-long v9, v0

    mul-long/2addr v7, v9

    iget v0, p1, Lyads/ky2;->h:I

    int-to-long v9, v0

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x8

    div-long/2addr v7, v9

    const-wide/16 v9, 0x40

    goto :goto_1

    :goto_3
    iget p1, p1, Lyads/ky2;->c:I

    const/4 v0, 0x6

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object v0, p0

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-direct/range {v0 .. v13}, Lyads/qt;-><init>(Lyads/nt;Lyads/pt;JJJJJI)V

    return-void
.end method
