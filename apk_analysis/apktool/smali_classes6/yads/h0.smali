.class public final Lyads/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Lyads/ns4;

.field public final b:Lyads/os4;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lyads/k06;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Lyads/vz2;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/ns4;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lyads/ns4;-><init>([B)V

    iput-object v0, p0, Lyads/h0;->a:Lyads/ns4;

    new-instance v1, Lyads/os4;

    iget-object v0, v0, Lyads/ns4;->a:[B

    invoke-direct {v1, v0}, Lyads/os4;-><init>([B)V

    iput-object v1, p0, Lyads/h0;->b:Lyads/os4;

    const/4 v0, 0x0

    iput v0, p0, Lyads/h0;->f:I

    iput v0, p0, Lyads/h0;->g:I

    iput-boolean v0, p0, Lyads/h0;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/h0;->l:J

    iput-object p1, p0, Lyads/h0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 286
    iput v0, p0, Lyads/h0;->f:I

    .line 287
    iput v0, p0, Lyads/h0;->g:I

    .line 288
    iput-boolean v0, p0, Lyads/h0;->h:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 289
    iput-wide v0, p0, Lyads/h0;->l:J

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 285
    iput-wide p2, p0, Lyads/h0;->l:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 12

    iget-object v0, p0, Lyads/h0;->e:Lyads/k06;

    if-eqz v0, :cond_e

    :cond_0
    :goto_0
    iget v0, p1, Lyads/os4;->c:I

    iget v1, p1, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_d

    iget v1, p0, Lyads/h0;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lyads/h0;->k:I

    iget v2, p0, Lyads/h0;->g:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lyads/h0;->e:Lyads/k06;

    invoke-interface {v1, v0, p1}, Lyads/k06;->a(ILyads/os4;)V

    iget v1, p0, Lyads/h0;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lyads/h0;->g:I

    iget v9, p0, Lyads/h0;->k:I

    if-ne v1, v9, :cond_0

    iget-wide v6, p0, Lyads/h0;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v6, v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lyads/h0;->e:Lyads/k06;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v0, p0, Lyads/h0;->l:J

    iget-wide v2, p0, Lyads/h0;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lyads/h0;->l:J

    :cond_2
    iput v4, p0, Lyads/h0;->f:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lyads/h0;->b:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    iget v3, p0, Lyads/h0;->g:I

    const/16 v5, 0x10

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lyads/h0;->g:I

    invoke-virtual {p1, v1, v3, v0}, Lyads/os4;->a([BII)V

    iget v1, p0, Lyads/h0;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lyads/h0;->g:I

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lyads/h0;->a:Lyads/ns4;

    invoke-virtual {v0, v4}, Lyads/ns4;->b(I)V

    iget-object v0, p0, Lyads/h0;->a:Lyads/ns4;

    invoke-static {v0}, Lyads/j0;->a(Lyads/ns4;)Lyads/i0;

    move-result-object v0

    iget-object v1, p0, Lyads/h0;->j:Lyads/vz2;

    const-string v3, "audio/ac4"

    if-eqz v1, :cond_4

    iget v6, v1, Lyads/vz2;->z:I

    if-ne v2, v6, :cond_4

    iget v6, v0, Lyads/i0;->a:I

    iget v7, v1, Lyads/vz2;->A:I

    if-ne v6, v7, :cond_4

    iget-object v1, v1, Lyads/vz2;->m:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    new-instance v1, Lyads/uz2;

    invoke-direct {v1}, Lyads/uz2;-><init>()V

    iget-object v6, p0, Lyads/h0;->d:Ljava/lang/String;

    iput-object v6, v1, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v3, v1, Lyads/uz2;->k:Ljava/lang/String;

    iput v2, v1, Lyads/uz2;->x:I

    iget v3, v0, Lyads/i0;->a:I

    iput v3, v1, Lyads/uz2;->y:I

    iget-object v3, p0, Lyads/h0;->c:Ljava/lang/String;

    iput-object v3, v1, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v3, Lyads/vz2;

    invoke-direct {v3, v1}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object v3, p0, Lyads/h0;->j:Lyads/vz2;

    iget-object v1, p0, Lyads/h0;->e:Lyads/k06;

    invoke-interface {v1, v3}, Lyads/k06;->a(Lyads/vz2;)V

    :cond_5
    iget v1, v0, Lyads/i0;->b:I

    iput v1, p0, Lyads/h0;->k:I

    iget v0, v0, Lyads/i0;->c:I

    int-to-long v0, v0

    const-wide/32 v6, 0xf4240

    mul-long/2addr v0, v6

    iget-object v3, p0, Lyads/h0;->j:Lyads/vz2;

    iget v3, v3, Lyads/vz2;->A:I

    int-to-long v6, v3

    div-long/2addr v0, v6

    iput-wide v0, p0, Lyads/h0;->i:J

    iget-object v0, p0, Lyads/h0;->b:Lyads/os4;

    invoke-virtual {v0, v4}, Lyads/os4;->e(I)V

    iget-object v0, p0, Lyads/h0;->e:Lyads/k06;

    iget-object v1, p0, Lyads/h0;->b:Lyads/os4;

    invoke-interface {v0, v5, v1}, Lyads/k06;->a(ILyads/os4;)V

    iput v2, p0, Lyads/h0;->f:I

    goto/16 :goto_0

    :cond_6
    :goto_1
    iget v0, p1, Lyads/os4;->c:I

    iget v1, p1, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lyads/h0;->h:Z

    const/16 v1, 0xac

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lyads/h0;->h:Z

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result v0

    if-ne v0, v1, :cond_9

    move v1, v3

    goto :goto_3

    :cond_9
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lyads/h0;->h:Z

    const/16 v1, 0x40

    const/16 v5, 0x41

    if-eq v0, v1, :cond_a

    if-ne v0, v5, :cond_6

    :cond_a
    if-ne v0, v5, :cond_b

    move v0, v3

    goto :goto_4

    :cond_b
    move v0, v4

    :goto_4
    iput v3, p0, Lyads/h0;->f:I

    iget-object v6, p0, Lyads/h0;->b:Lyads/os4;

    iget-object v6, v6, Lyads/os4;->a:[B

    const/16 v7, -0x54

    aput-byte v7, v6, v4

    if-eqz v0, :cond_c

    move v1, v5

    :cond_c
    int-to-byte v0, v1

    aput-byte v0, v6, v3

    iput v2, p0, Lyads/h0;->g:I

    goto/16 :goto_0

    :cond_d
    return-void

    :cond_e
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 1

    .line 278
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 279
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 280
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lyads/h0;->d:Ljava/lang/String;

    .line 282
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 283
    iget p2, p2, Lyads/t26;->d:I

    const/4 v0, 0x1

    .line 284
    invoke-interface {p1, p2, v0}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/h0;->e:Lyads/k06;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
