.class public final Lyads/e03;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/k06;

.field public final b:Lyads/e06;

.field public final c:Lyads/os4;

.field public d:Lyads/l06;

.field public e:Lyads/cm0;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lyads/os4;

.field public final k:Lyads/os4;

.field public l:Z


# direct methods
.method public constructor <init>(Lyads/k06;Lyads/l06;Lyads/cm0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/e03;->a:Lyads/k06;

    iput-object p2, p0, Lyads/e03;->d:Lyads/l06;

    iput-object p3, p0, Lyads/e03;->e:Lyads/cm0;

    new-instance v0, Lyads/e06;

    invoke-direct {v0}, Lyads/e06;-><init>()V

    iput-object v0, p0, Lyads/e03;->b:Lyads/e06;

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/e03;->c:Lyads/os4;

    new-instance v0, Lyads/os4;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/e03;->j:Lyads/os4;

    new-instance v0, Lyads/os4;

    invoke-direct {v0}, Lyads/os4;-><init>()V

    iput-object v0, p0, Lyads/e03;->k:Lyads/os4;

    iput-object p2, p0, Lyads/e03;->d:Lyads/l06;

    iput-object p3, p0, Lyads/e03;->e:Lyads/cm0;

    iget-object p2, p2, Lyads/l06;->a:Lyads/c06;

    iget-object p2, p2, Lyads/c06;->f:Lyads/vz2;

    invoke-interface {p1, p2}, Lyads/k06;->a(Lyads/vz2;)V

    invoke-virtual {p0}, Lyads/e03;->b()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 10

    invoke-virtual {p0}, Lyads/e03;->a()Lyads/d06;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, v0, Lyads/d06;->d:I

    if-eqz v2, :cond_1

    iget-object v0, p0, Lyads/e03;->b:Lyads/e06;

    iget-object v0, v0, Lyads/e06;->n:Lyads/os4;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lyads/d06;->e:[B

    sget v2, Lyads/u56;->a:I

    iget-object v2, p0, Lyads/e03;->k:Lyads/os4;

    array-length v3, v0

    iput-object v0, v2, Lyads/os4;->a:[B

    iput v3, v2, Lyads/os4;->c:I

    iput v1, v2, Lyads/os4;->b:I

    array-length v0, v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_0
    iget-object v3, p0, Lyads/e03;->b:Lyads/e06;

    iget v4, p0, Lyads/e03;->f:I

    iget-boolean v5, v3, Lyads/e06;->k:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v3, v3, Lyads/e06;->l:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v6

    :goto_3
    iget-object v5, p0, Lyads/e03;->j:Lyads/os4;

    iget-object v7, v5, Lyads/os4;->a:[B

    if-eqz v4, :cond_5

    const/16 v8, 0x80

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    or-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v7, v1

    invoke-virtual {v5, v1}, Lyads/os4;->e(I)V

    iget-object v5, p0, Lyads/e03;->a:Lyads/k06;

    iget-object v7, p0, Lyads/e03;->j:Lyads/os4;

    invoke-interface {v5, v6, v7}, Lyads/k06;->a(ILyads/os4;)V

    iget-object v5, p0, Lyads/e03;->a:Lyads/k06;

    invoke-interface {v5, v2, v0}, Lyads/k06;->a(ILyads/os4;)V

    if-nez v4, :cond_6

    add-int/2addr v2, v6

    return v2

    :cond_6
    const/4 v0, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_7

    iget-object v3, p0, Lyads/e03;->c:Lyads/os4;

    invoke-virtual {v3, v7}, Lyads/os4;->c(I)V

    iget-object v3, p0, Lyads/e03;->c:Lyads/os4;

    iget-object v8, v3, Lyads/os4;->a:[B

    aput-byte v1, v8, v1

    aput-byte v6, v8, v6

    aput-byte v1, v8, v5

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v8, v4

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    aput-byte p2, v8, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    aput-byte p2, v8, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v8, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v8, p2

    iget-object p0, p0, Lyads/e03;->a:Lyads/k06;

    invoke-interface {p0, v7, v3}, Lyads/k06;->a(ILyads/os4;)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_7
    iget-object p1, p0, Lyads/e03;->b:Lyads/e06;

    iget-object p1, p1, Lyads/e06;->n:Lyads/os4;

    invoke-virtual {p1}, Lyads/os4;->p()I

    move-result v3

    iget v8, p1, Lyads/os4;->b:I

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p1, v8}, Lyads/os4;->e(I)V

    mul-int/2addr v3, v0

    add-int/2addr v3, v5

    if-eqz p2, :cond_8

    iget-object v0, p0, Lyads/e03;->c:Lyads/os4;

    invoke-virtual {v0, v3}, Lyads/os4;->c(I)V

    iget-object v0, p0, Lyads/e03;->c:Lyads/os4;

    iget-object v0, v0, Lyads/os4;->a:[B

    invoke-virtual {p1, v0, v1, v3}, Lyads/os4;->a([BII)V

    aget-byte p1, v0, v5

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v5

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v4

    iget-object p1, p0, Lyads/e03;->c:Lyads/os4;

    :cond_8
    iget-object p0, p0, Lyads/e03;->a:Lyads/k06;

    invoke-interface {p0, v3, p1}, Lyads/k06;->a(ILyads/os4;)V

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    return v2
.end method

.method public final a()Lyads/d06;
    .locals 4

    .line 221
    iget-boolean v0, p0, Lyads/e03;->l:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 222
    :cond_0
    iget-object v0, p0, Lyads/e03;->b:Lyads/e06;

    iget-object v2, v0, Lyads/e06;->a:Lyads/cm0;

    sget v3, Lyads/u56;->a:I

    iget v2, v2, Lyads/cm0;->a:I

    .line 223
    iget-object v0, v0, Lyads/e06;->m:Lyads/d06;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object p0, p0, Lyads/e03;->d:Lyads/l06;

    iget-object p0, p0, Lyads/l06;->a:Lyads/c06;

    .line 225
    iget-object p0, p0, Lyads/c06;->k:[Lyads/d06;

    .line 226
    aget-object v0, p0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 227
    iget-boolean p0, v0, Lyads/d06;->a:Z

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lyads/e03;->b:Lyads/e06;

    const/4 v1, 0x0

    iput v1, v0, Lyads/e06;->d:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lyads/e06;->p:J

    iput-boolean v1, v0, Lyads/e06;->q:Z

    iput-boolean v1, v0, Lyads/e06;->k:Z

    iput-boolean v1, v0, Lyads/e06;->o:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lyads/e06;->m:Lyads/d06;

    iput v1, p0, Lyads/e03;->f:I

    iput v1, p0, Lyads/e03;->h:I

    iput v1, p0, Lyads/e03;->g:I

    iput v1, p0, Lyads/e03;->i:I

    iput-boolean v1, p0, Lyads/e03;->l:Z

    return-void
.end method
