.class public final Lyads/ph5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/u26;


# instance fields
.field public final a:Lyads/oh5;

.field public final b:Lyads/os4;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Lyads/oh5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ph5;->a:Lyads/oh5;

    new-instance p1, Lyads/os4;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/ph5;->b:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Lyads/ph5;->f:Z

    return-void
.end method

.method public final a(ILyads/os4;)V
    .locals 10

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v2, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lyads/os4;->k()I

    move-result v3

    iget v4, p2, Lyads/os4;->b:I

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget-boolean v3, p0, Lyads/ph5;->f:Z

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    goto/16 :goto_6

    :cond_2
    iput-boolean v1, p0, Lyads/ph5;->f:Z

    invoke-virtual {p2, v4}, Lyads/os4;->e(I)V

    iput v1, p0, Lyads/ph5;->d:I

    :cond_3
    :goto_2
    iget p1, p2, Lyads/os4;->c:I

    iget v3, p2, Lyads/os4;->b:I

    sub-int/2addr p1, v3

    if-lez p1, :cond_a

    iget v3, p0, Lyads/ph5;->d:I

    const/16 v4, 0xff

    const/4 v5, 0x3

    if-ge v3, v5, :cond_6

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lyads/os4;->k()I

    move-result p1

    iget v3, p2, Lyads/os4;->b:I

    sub-int/2addr v3, v0

    invoke-virtual {p2, v3}, Lyads/os4;->e(I)V

    if-ne p1, v4, :cond_4

    iput-boolean v0, p0, Lyads/ph5;->f:Z

    return-void

    :cond_4
    iget p1, p2, Lyads/os4;->c:I

    iget v3, p2, Lyads/os4;->b:I

    sub-int/2addr p1, v3

    iget v3, p0, Lyads/ph5;->d:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v3, p0, Lyads/ph5;->b:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    iget v4, p0, Lyads/ph5;->d:I

    invoke-virtual {p2, v3, v4, p1}, Lyads/os4;->a([BII)V

    iget v3, p0, Lyads/ph5;->d:I

    add-int/2addr v3, p1

    iput v3, p0, Lyads/ph5;->d:I

    if-ne v3, v5, :cond_3

    iget-object p1, p0, Lyads/ph5;->b:Lyads/os4;

    invoke-virtual {p1, v1}, Lyads/os4;->e(I)V

    iget-object p1, p0, Lyads/ph5;->b:Lyads/os4;

    invoke-virtual {p1, v5}, Lyads/os4;->d(I)V

    iget-object p1, p0, Lyads/ph5;->b:Lyads/os4;

    iget v3, p1, Lyads/os4;->b:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lyads/os4;->e(I)V

    iget-object p1, p0, Lyads/ph5;->b:Lyads/os4;

    invoke-virtual {p1}, Lyads/os4;->k()I

    move-result p1

    iget-object v3, p0, Lyads/ph5;->b:Lyads/os4;

    invoke-virtual {v3}, Lyads/os4;->k()I

    move-result v3

    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_5

    move v4, v0

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    iput-boolean v4, p0, Lyads/ph5;->e:Z

    and-int/lit8 p1, p1, 0xf

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v3

    add-int/2addr p1, v5

    iput p1, p0, Lyads/ph5;->c:I

    iget-object v3, p0, Lyads/ph5;->b:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    array-length v4, v3

    if-ge v4, p1, :cond_3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v3, 0x1002

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v3, p0, Lyads/ph5;->b:Lyads/os4;

    invoke-virtual {v3, p1}, Lyads/os4;->a(I)V

    goto/16 :goto_2

    :cond_6
    iget v5, p0, Lyads/ph5;->c:I

    sub-int/2addr v5, v3

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v3, p0, Lyads/ph5;->b:Lyads/os4;

    iget-object v3, v3, Lyads/os4;->a:[B

    iget v5, p0, Lyads/ph5;->d:I

    invoke-virtual {p2, v3, v5, p1}, Lyads/os4;->a([BII)V

    iget v3, p0, Lyads/ph5;->d:I

    add-int/2addr v3, p1

    iput v3, p0, Lyads/ph5;->d:I

    iget p1, p0, Lyads/ph5;->c:I

    if-ne v3, p1, :cond_3

    iget-boolean v3, p0, Lyads/ph5;->e:Z

    iget-object v5, p0, Lyads/ph5;->b:Lyads/os4;

    if-eqz v3, :cond_9

    iget-object v3, v5, Lyads/os4;->a:[B

    move v5, v1

    move v6, v2

    :goto_4
    if-ge v5, p1, :cond_7

    shl-int/lit8 v7, v6, 0x8

    sget-object v8, Lyads/u56;->n:[I

    ushr-int/lit8 v6, v6, 0x18

    aget-byte v9, v3, v5

    and-int/2addr v9, v4

    xor-int/2addr v6, v9

    and-int/2addr v6, v4

    aget v6, v8, v6

    xor-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    sget p1, Lyads/u56;->a:I

    if-eqz v6, :cond_8

    iput-boolean v0, p0, Lyads/ph5;->f:Z

    return-void

    :cond_8
    iget-object p1, p0, Lyads/ph5;->b:Lyads/os4;

    iget v3, p0, Lyads/ph5;->c:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {p1, v3}, Lyads/os4;->d(I)V

    goto :goto_5

    :cond_9
    invoke-virtual {v5, p1}, Lyads/os4;->d(I)V

    :goto_5
    iget-object p1, p0, Lyads/ph5;->b:Lyads/os4;

    invoke-virtual {p1, v1}, Lyads/os4;->e(I)V

    iget-object p1, p0, Lyads/ph5;->a:Lyads/oh5;

    iget-object v3, p0, Lyads/ph5;->b:Lyads/os4;

    invoke-interface {p1, v3}, Lyads/oh5;->a(Lyads/os4;)V

    iput v1, p0, Lyads/ph5;->d:I

    goto/16 :goto_2

    :cond_a
    :goto_6
    return-void
.end method

.method public final a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lyads/ph5;->a:Lyads/oh5;

    invoke-interface {v0, p1, p2, p3}, Lyads/oh5;->a(Lyads/vx5;Lyads/zs2;Lyads/t26;)V

    const/4 p1, 0x1

    .line 262
    iput-boolean p1, p0, Lyads/ph5;->f:Z

    return-void
.end method
