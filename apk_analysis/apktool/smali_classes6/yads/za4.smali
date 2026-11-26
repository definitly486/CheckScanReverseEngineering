.class public final Lyads/za4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/zm2;


# instance fields
.field public final a:Lyads/os4;

.field public final b:Lyads/ab4;

.field public final c:Ljava/lang/String;

.field public d:Lyads/k06;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyads/za4;->f:I

    new-instance v1, Lyads/os4;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lyads/os4;-><init>(I)V

    iput-object v1, p0, Lyads/za4;->a:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Lyads/ab4;

    invoke-direct {v0}, Lyads/ab4;-><init>()V

    iput-object v0, p0, Lyads/za4;->b:Lyads/ab4;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lyads/za4;->l:J

    iput-object p1, p0, Lyads/za4;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lyads/za4;->f:I

    .line 285
    iput v0, p0, Lyads/za4;->g:I

    .line 286
    iput-boolean v0, p0, Lyads/za4;->i:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 287
    iput-wide v0, p0, Lyads/za4;->l:J

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 283
    iput-wide p2, p0, Lyads/za4;->l:J

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;)V
    .locals 13

    iget-object v0, p0, Lyads/za4;->d:Lyads/k06;

    if-eqz v0, :cond_d

    :goto_0
    iget v0, p1, Lyads/os4;->c:I

    iget v1, p1, Lyads/os4;->b:I

    sub-int v2, v0, v1

    if-lez v2, :cond_c

    iget v3, p0, Lyads/za4;->f:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v6, :cond_3

    if-ne v3, v4, :cond_2

    iget v0, p0, Lyads/za4;->k:I

    iget v1, p0, Lyads/za4;->g:I

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lyads/za4;->d:Lyads/k06;

    invoke-interface {v1, v0, p1}, Lyads/k06;->a(ILyads/os4;)V

    iget v1, p0, Lyads/za4;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lyads/za4;->g:I

    iget v10, p0, Lyads/za4;->k:I

    if-ge v1, v10, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v7, p0, Lyads/za4;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v7, v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lyads/za4;->d:Lyads/k06;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide v0, p0, Lyads/za4;->l:J

    iget-wide v2, p0, Lyads/za4;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lyads/za4;->l:J

    :cond_1
    iput v5, p0, Lyads/za4;->g:I

    iput v5, p0, Lyads/za4;->f:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lud;->g()V

    return-void

    :cond_3
    iget v0, p0, Lyads/za4;->g:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lyads/za4;->a:Lyads/os4;

    iget-object v2, v2, Lyads/os4;->a:[B

    iget v3, p0, Lyads/za4;->g:I

    invoke-virtual {p1, v2, v3, v0}, Lyads/os4;->a([BII)V

    iget v2, p0, Lyads/za4;->g:I

    add-int/2addr v2, v0

    iput v2, p0, Lyads/za4;->g:I

    if-ge v2, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lyads/za4;->a:Lyads/os4;

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    iget-object v0, p0, Lyads/za4;->b:Lyads/ab4;

    iget-object v2, p0, Lyads/za4;->a:Lyads/os4;

    invoke-virtual {v2}, Lyads/os4;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lyads/ab4;->a(I)Z

    move-result v0

    if-nez v0, :cond_5

    iput v5, p0, Lyads/za4;->g:I

    iput v6, p0, Lyads/za4;->f:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lyads/za4;->b:Lyads/ab4;

    iget v2, v0, Lyads/ab4;->c:I

    iput v2, p0, Lyads/za4;->k:I

    iget-boolean v2, p0, Lyads/za4;->h:Z

    if-nez v2, :cond_6

    iget v2, v0, Lyads/ab4;->g:I

    int-to-long v2, v2

    const-wide/32 v7, 0xf4240

    mul-long/2addr v2, v7

    iget v7, v0, Lyads/ab4;->d:I

    int-to-long v8, v7

    div-long/2addr v2, v8

    iput-wide v2, p0, Lyads/za4;->j:J

    new-instance v2, Lyads/uz2;

    invoke-direct {v2}, Lyads/uz2;-><init>()V

    iget-object v3, p0, Lyads/za4;->e:Ljava/lang/String;

    iput-object v3, v2, Lyads/uz2;->a:Ljava/lang/String;

    iget-object v3, v0, Lyads/ab4;->b:Ljava/lang/String;

    iput-object v3, v2, Lyads/uz2;->k:Ljava/lang/String;

    const/16 v3, 0x1000

    iput v3, v2, Lyads/uz2;->l:I

    iget v0, v0, Lyads/ab4;->e:I

    iput v0, v2, Lyads/uz2;->x:I

    iput v7, v2, Lyads/uz2;->y:I

    iget-object v0, p0, Lyads/za4;->c:Ljava/lang/String;

    iput-object v0, v2, Lyads/uz2;->c:Ljava/lang/String;

    new-instance v0, Lyads/vz2;

    invoke-direct {v0, v2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget-object v2, p0, Lyads/za4;->d:Lyads/k06;

    invoke-interface {v2, v0}, Lyads/k06;->a(Lyads/vz2;)V

    iput-boolean v6, p0, Lyads/za4;->h:Z

    :cond_6
    iget-object v0, p0, Lyads/za4;->a:Lyads/os4;

    invoke-virtual {v0, v5}, Lyads/os4;->e(I)V

    iget-object v0, p0, Lyads/za4;->d:Lyads/k06;

    iget-object v2, p0, Lyads/za4;->a:Lyads/os4;

    invoke-interface {v0, v1, v2}, Lyads/k06;->a(ILyads/os4;)V

    iput v4, p0, Lyads/za4;->f:I

    goto/16 :goto_0

    :cond_7
    iget-object v2, p1, Lyads/os4;->a:[B

    :goto_1
    if-ge v1, v0, :cond_b

    aget-byte v3, v2, v1

    and-int/lit16 v7, v3, 0xff

    const/16 v8, 0xff

    if-ne v7, v8, :cond_8

    move v7, v6

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    iget-boolean v8, p0, Lyads/za4;->i:Z

    if-eqz v8, :cond_9

    and-int/lit16 v3, v3, 0xe0

    const/16 v8, 0xe0

    if-ne v3, v8, :cond_9

    move v3, v6

    goto :goto_3

    :cond_9
    move v3, v5

    :goto_3
    iput-boolean v7, p0, Lyads/za4;->i:Z

    if-eqz v3, :cond_a

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    iput-boolean v5, p0, Lyads/za4;->i:Z

    iget-object v0, p0, Lyads/za4;->a:Lyads/os4;

    iget-object v0, v0, Lyads/os4;->a:[B

    aget-byte v1, v2, v1

    aput-byte v1, v0, v6

    iput v4, p0, Lyads/za4;->g:I

    iput v6, p0, Lyads/za4;->f:I

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p1, v0}, Lyads/os4;->e(I)V

    goto/16 :goto_0

    :cond_c
    return-void

    :cond_d
    invoke-static {}, Lud;->g()V

    return-void
.end method

.method public final a(Lyads/zs2;Lyads/t26;)V
    .locals 1

    .line 276
    invoke-virtual {p2}, Lyads/t26;->a()V

    .line 277
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 278
    iget-object v0, p2, Lyads/t26;->e:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Lyads/za4;->e:Ljava/lang/String;

    .line 280
    invoke-virtual {p2}, Lyads/t26;->b()V

    .line 281
    iget p2, p2, Lyads/t26;->d:I

    const/4 v0, 0x1

    .line 282
    invoke-interface {p1, p2, v0}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object p1

    iput-object p1, p0, Lyads/za4;->d:Lyads/k06;

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
