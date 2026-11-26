.class public final Lyads/nj6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mj6;


# instance fields
.field public final a:Lyads/zs2;

.field public final b:Lyads/k06;

.field public final c:Lyads/pj6;

.field public final d:Lyads/vz2;

.field public final e:I

.field public f:J

.field public g:I

.field public h:J


# direct methods
.method public constructor <init>(Lyads/zs2;Lyads/k06;Lyads/pj6;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/nj6;->a:Lyads/zs2;

    iput-object p2, p0, Lyads/nj6;->b:Lyads/k06;

    iput-object p3, p0, Lyads/nj6;->c:Lyads/pj6;

    iget p1, p3, Lyads/pj6;->a:I

    iget p2, p3, Lyads/pj6;->d:I

    mul-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x8

    iget p2, p3, Lyads/pj6;->c:I

    if-ne p2, p1, :cond_0

    iget p2, p3, Lyads/pj6;->b:I

    mul-int/2addr p2, p1

    mul-int/lit8 v0, p2, 0x8

    div-int/lit8 p2, p2, 0xa

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lyads/nj6;->e:I

    new-instance p2, Lyads/uz2;

    invoke-direct {p2}, Lyads/uz2;-><init>()V

    iput-object p4, p2, Lyads/uz2;->k:Ljava/lang/String;

    iput v0, p2, Lyads/uz2;->f:I

    iput v0, p2, Lyads/uz2;->g:I

    iput p1, p2, Lyads/uz2;->l:I

    iget p1, p3, Lyads/pj6;->a:I

    iput p1, p2, Lyads/uz2;->x:I

    iget p1, p3, Lyads/pj6;->b:I

    iput p1, p2, Lyads/uz2;->y:I

    iput p5, p2, Lyads/uz2;->z:I

    new-instance p1, Lyads/vz2;

    invoke-direct {p1, p2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object p1, p0, Lyads/nj6;->d:Lyads/vz2;

    return-void

    :cond_0
    const-string p0, "Expected block size: "

    const-string p2, "; got: "

    invoke-static {p1, p0, p2}, Ln7;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p3, Lyads/pj6;->c:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lyads/xs4;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-direct {p1, p0, p2, p3, p3}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw p1
.end method


# virtual methods
.method public final a(IJ)V
    .locals 8

    .line 99
    iget-object v0, p0, Lyads/nj6;->a:Lyads/zs2;

    new-instance v1, Lyads/sj6;

    iget-object v2, p0, Lyads/nj6;->c:Lyads/pj6;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lyads/sj6;-><init>(Lyads/pj6;IJJ)V

    invoke-interface {v0, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    .line 100
    iget-object p1, p0, Lyads/nj6;->b:Lyads/k06;

    iget-object p0, p0, Lyads/nj6;->d:Lyads/vz2;

    invoke-interface {p1, p0}, Lyads/k06;->a(Lyads/vz2;)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lyads/nj6;->f:J

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lyads/nj6;->g:I

    const-wide/16 p1, 0x0

    .line 103
    iput-wide p1, p0, Lyads/nj6;->h:J

    return-void
.end method

.method public final a(Lyads/wk0;J)Z
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-lez v5, :cond_1

    iget v7, v0, Lyads/nj6;->g:I

    iget v8, v0, Lyads/nj6;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v7, v8

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v5, v7

    iget-object v7, v0, Lyads/nj6;->b:Lyads/k06;

    move-object/from16 v8, p1

    invoke-interface {v7, v8, v5, v6}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget v3, v0, Lyads/nj6;->g:I

    add-int/2addr v3, v5

    iput v3, v0, Lyads/nj6;->g:I

    int-to-long v3, v5

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lyads/nj6;->c:Lyads/pj6;

    iget v2, v1, Lyads/pj6;->c:I

    iget v3, v0, Lyads/nj6;->g:I

    div-int/2addr v3, v2

    if-lez v3, :cond_2

    iget-wide v7, v0, Lyads/nj6;->f:J

    iget-wide v9, v0, Lyads/nj6;->h:J

    iget v1, v1, Lyads/pj6;->b:I

    int-to-long v13, v1

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v14}, Lyads/u56;->a(JJJ)J

    move-result-wide v9

    add-long v12, v7, v9

    mul-int v15, v3, v2

    iget v1, v0, Lyads/nj6;->g:I

    sub-int v16, v1, v15

    iget-object v11, v0, Lyads/nj6;->b:Lyads/k06;

    const/4 v14, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lyads/k06;->a(JIIILyads/j06;)V

    move/from16 v1, v16

    iget-wide v7, v0, Lyads/nj6;->h:J

    int-to-long v2, v3

    add-long/2addr v7, v2

    iput-wide v7, v0, Lyads/nj6;->h:J

    iput v1, v0, Lyads/nj6;->g:I

    :cond_2
    if-gtz v5, :cond_3

    return v6

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
