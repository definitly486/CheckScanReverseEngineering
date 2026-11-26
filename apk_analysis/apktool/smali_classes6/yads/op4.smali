.class public final Lyads/op4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pp4;

.field public final b:Lyads/os4;

.field public c:I

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/pp4;

    invoke-direct {v0}, Lyads/pp4;-><init>()V

    iput-object v0, p0, Lyads/op4;->a:Lyads/pp4;

    new-instance v0, Lyads/os4;

    const v1, 0xfe01

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lyads/os4;-><init>([BI)V

    iput-object v0, p0, Lyads/op4;->b:Lyads/os4;

    const/4 v0, -0x1

    iput v0, p0, Lyads/op4;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 177
    iget-object v0, p0, Lyads/op4;->b:Lyads/os4;

    .line 178
    iget-object v1, v0, Lyads/os4;->a:[B

    .line 179
    array-length v2, v1

    const v3, 0xfe01

    if-ne v2, v3, :cond_0

    return-void

    .line 180
    :cond_0
    iget v2, v0, Lyads/os4;->c:I

    .line 181
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 182
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object p0, p0, Lyads/op4;->b:Lyads/os4;

    .line 183
    iget p0, p0, Lyads/os4;->c:I

    .line 184
    iput-object v1, v0, Lyads/os4;->a:[B

    .line 185
    iput p0, v0, Lyads/os4;->c:I

    const/4 p0, 0x0

    .line 186
    iput p0, v0, Lyads/os4;->b:I

    return-void
.end method

.method public final a(Lyads/wk0;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    iget-boolean v1, p0, Lyads/op4;->e:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lyads/op4;->e:Z

    iget-object v1, p0, Lyads/op4;->b:Lyads/os4;

    invoke-virtual {v1, v0}, Lyads/os4;->c(I)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lyads/op4;->e:Z

    const/4 v2, 0x1

    if-nez v1, :cond_c

    iget v1, p0, Lyads/op4;->c:I

    const/16 v3, 0xff

    if-gez v1, :cond_6

    iget-object v1, p0, Lyads/op4;->a:Lyads/pp4;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, p1, v4, v5}, Lyads/pp4;->a(Lyads/wk0;J)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lyads/op4;->a:Lyads/pp4;

    invoke-virtual {v1, p1, v2}, Lyads/pp4;->a(Lyads/wk0;Z)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lyads/op4;->a:Lyads/pp4;

    iget v4, v1, Lyads/pp4;->d:I

    iget v1, v1, Lyads/pp4;->a:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lyads/op4;->b:Lyads/os4;

    iget v1, v1, Lyads/os4;->c:I

    if-nez v1, :cond_4

    iput v0, p0, Lyads/op4;->d:I

    move v1, v0

    :cond_2
    iget v5, p0, Lyads/op4;->d:I

    iget-object v6, p0, Lyads/op4;->a:Lyads/pp4;

    iget v7, v6, Lyads/pp4;->c:I

    if-ge v5, v7, :cond_3

    iget-object v6, v6, Lyads/pp4;->f:[I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lyads/op4;->d:I

    aget v5, v6, v5

    add-int/2addr v1, v5

    if-eq v5, v3, :cond_2

    move v5, v7

    :cond_3
    add-int/2addr v4, v1

    move v1, v5

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    :try_start_0
    invoke-virtual {p1, v4}, Lyads/wk0;->a(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lyads/op4;->c:I

    goto :goto_3

    :catch_0
    :cond_5
    :goto_2
    return v0

    :cond_6
    :goto_3
    iput v0, p0, Lyads/op4;->d:I

    move v4, v0

    :cond_7
    iget v5, p0, Lyads/op4;->d:I

    add-int v6, v1, v5

    iget-object v7, p0, Lyads/op4;->a:Lyads/pp4;

    iget v8, v7, Lyads/pp4;->c:I

    if-ge v6, v8, :cond_8

    iget-object v8, v7, Lyads/pp4;->f:[I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lyads/op4;->d:I

    aget v6, v8, v6

    add-int/2addr v4, v6

    if-eq v6, v3, :cond_7

    :cond_8
    iget v1, p0, Lyads/op4;->c:I

    add-int/2addr v1, v5

    if-lez v4, :cond_a

    iget-object v5, p0, Lyads/op4;->b:Lyads/os4;

    iget v6, v5, Lyads/os4;->c:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lyads/os4;->a(I)V

    iget-object v5, p0, Lyads/op4;->b:Lyads/os4;

    iget-object v6, v5, Lyads/os4;->a:[B

    iget v5, v5, Lyads/os4;->c:I

    :try_start_1
    invoke-virtual {p1, v6, v5, v4, v0}, Lyads/wk0;->a([BIIZ)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v5, p0, Lyads/op4;->b:Lyads/os4;

    iget v6, v5, Lyads/os4;->c:I

    add-int/2addr v6, v4

    invoke-virtual {v5, v6}, Lyads/os4;->d(I)V

    iget-object v7, p0, Lyads/op4;->a:Lyads/pp4;

    iget-object v4, v7, Lyads/pp4;->f:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    if-eq v4, v3, :cond_9

    goto :goto_4

    :cond_9
    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lyads/op4;->e:Z

    goto :goto_5

    :catch_1
    return v0

    :cond_a
    :goto_5
    iget v2, v7, Lyads/pp4;->c:I

    if-ne v1, v2, :cond_b

    const/4 v1, -0x1

    :cond_b
    iput v1, p0, Lyads/op4;->c:I

    goto/16 :goto_0

    :cond_c
    return v2

    :cond_d
    invoke-static {}, Lud;->g()V

    return v0
.end method
