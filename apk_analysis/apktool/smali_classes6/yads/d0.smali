.class public final Lyads/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# instance fields
.field public final a:Lyads/e0;

.field public final b:Lyads/os4;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/e0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyads/e0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lyads/d0;->a:Lyads/e0;

    new-instance v0, Lyads/os4;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Lyads/os4;-><init>(I)V

    iput-object v0, p0, Lyads/d0;->b:Lyads/os4;

    return-void
.end method

.method public static synthetic a()[Lyads/ws2;
    .locals 3

    .line 145
    new-instance v0, Lyads/d0;

    invoke-direct {v0}, Lyads/d0;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lyads/ws2;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 4

    .line 156
    iget-object p2, p0, Lyads/d0;->b:Lyads/os4;

    .line 157
    iget-object p2, p2, Lyads/os4;->a:[B

    .line 158
    check-cast p1, Lyads/wk0;

    const/16 v0, 0xae2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lyads/wk0;->c([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 159
    :cond_0
    iget-object p2, p0, Lyads/d0;->b:Lyads/os4;

    invoke-virtual {p2, v1}, Lyads/os4;->e(I)V

    .line 160
    iget-object p2, p0, Lyads/d0;->b:Lyads/os4;

    invoke-virtual {p2, p1}, Lyads/os4;->d(I)V

    .line 161
    iget-boolean p1, p0, Lyads/d0;->c:Z

    if-nez p1, :cond_1

    .line 162
    iget-object p1, p0, Lyads/d0;->a:Lyads/e0;

    const/4 p2, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {p1, p2, v2, v3}, Lyads/e0;->a(IJ)V

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lyads/d0;->c:Z

    .line 164
    :cond_1
    iget-object p1, p0, Lyads/d0;->a:Lyads/e0;

    iget-object p0, p0, Lyads/d0;->b:Lyads/os4;

    invoke-virtual {p1, p0}, Lyads/e0;->a(Lyads/os4;)V

    return v1
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 154
    iput-boolean p1, p0, Lyads/d0;->c:Z

    .line 155
    iget-object p0, p0, Lyads/d0;->a:Lyads/e0;

    invoke-virtual {p0}, Lyads/e0;->a()V

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 4

    .line 146
    iget-object p0, p0, Lyads/d0;->a:Lyads/e0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    const-string v0, "0"

    .line 148
    iput-object v0, p0, Lyads/e0;->d:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-interface {p1, v1, v0}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/e0;->e:Lyads/k06;

    .line 150
    invoke-interface {p1}, Lyads/zs2;->a()V

    .line 151
    new-instance p0, Lyads/rh5;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v2, 0x0

    .line 152
    invoke-direct {p0, v0, v1, v2, v3}, Lyads/rh5;-><init>(JJ)V

    .line 153
    invoke-interface {p1, p0}, Lyads/zs2;->a(Lyads/sh5;)V

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 12

    new-instance p0, Lyads/os4;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lyads/os4;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lyads/os4;->a:[B

    move-object v4, p1

    check-cast v4, Lyads/wk0;

    invoke-virtual {v4, v3, v1, v0, v1}, Lyads/wk0;->b([BIIZ)Z

    invoke-virtual {p0, v1}, Lyads/os4;->e(I)V

    invoke-virtual {p0}, Lyads/os4;->m()I

    move-result v3

    const v5, 0x494433

    const/4 v6, 0x3

    if-eq v3, v5, :cond_6

    iput v1, v4, Lyads/wk0;->f:I

    invoke-virtual {v4, v2, v1}, Lyads/wk0;->a(IZ)Z

    move p1, v1

    move v3, v2

    :goto_1
    iget-object v5, p0, Lyads/os4;->a:[B

    const/4 v7, 0x6

    invoke-virtual {v4, v5, v1, v7, v1}, Lyads/wk0;->b([BIIZ)Z

    invoke-virtual {p0, v1}, Lyads/os4;->e(I)V

    invoke-virtual {p0}, Lyads/os4;->p()I

    move-result v5

    const/16 v8, 0xb77

    if-eq v5, v8, :cond_1

    iput v1, v4, Lyads/wk0;->f:I

    add-int/lit8 v3, v3, 0x1

    sub-int p1, v3, v2

    const/16 v5, 0x2000

    if-lt p1, v5, :cond_0

    return v1

    :cond_0
    invoke-virtual {v4, v3, v1}, Lyads/wk0;->a(IZ)Z

    move p1, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr p1, v5

    const/4 v8, 0x4

    if-lt p1, v8, :cond_2

    return v5

    :cond_2
    iget-object v9, p0, Lyads/os4;->a:[B

    array-length v10, v9

    const/4 v11, -0x1

    if-ge v10, v7, :cond_3

    move v8, v11

    goto :goto_2

    :cond_3
    const/4 v10, 0x5

    aget-byte v10, v9, v10

    and-int/lit16 v10, v10, 0xf8

    shr-int/2addr v10, v6

    if-le v10, v0, :cond_4

    const/4 v7, 0x2

    aget-byte v8, v9, v7

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x8

    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    add-int/2addr v8, v5

    mul-int/2addr v8, v7

    goto :goto_2

    :cond_4
    aget-byte v5, v9, v8

    and-int/lit16 v8, v5, 0xc0

    shr-int/lit8 v7, v8, 0x6

    and-int/lit8 v5, v5, 0x3f

    invoke-static {v7, v5}, Lyads/f0;->a(II)I

    move-result v8

    :goto_2
    if-ne v8, v11, :cond_5

    return v1

    :cond_5
    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v4, v8, v1}, Lyads/wk0;->a(IZ)Z

    goto :goto_1

    :cond_6
    iget v3, p0, Lyads/os4;->b:I

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lyads/os4;->e(I)V

    invoke-virtual {p0}, Lyads/os4;->j()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    add-int/2addr v2, v5

    invoke-virtual {v4, v3, v1}, Lyads/wk0;->a(IZ)Z

    goto/16 :goto_0
.end method

.method public final release()V
    .locals 0

    return-void
.end method
