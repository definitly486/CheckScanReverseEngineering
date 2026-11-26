.class public final Lyads/pp4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public final f:[I

.field public final g:Lyads/os4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lyads/pp4;->f:[I

    new-instance v1, Lyads/os4;

    invoke-direct {v1, v0}, Lyads/os4;-><init>(I)V

    iput-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/wk0;J)Z
    .locals 10

    .line 164
    iget-wide v0, p1, Lyads/wk0;->d:J

    .line 165
    iget v2, p1, Lyads/wk0;->f:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 166
    iget-object v0, p0, Lyads/pp4;->g:Lyads/os4;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lyads/os4;->c(I)V

    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v0, p2, v3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 167
    iget-wide v4, p1, Lyads/wk0;->d:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-gez v4, :cond_2

    .line 168
    :cond_0
    iget-object v4, p0, Lyads/pp4;->g:Lyads/os4;

    .line 169
    iget-object v4, v4, Lyads/os4;->a:[B

    .line 170
    :try_start_0
    invoke-virtual {p1, v4, v1, v2, v3}, Lyads/wk0;->b([BIIZ)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_2

    .line 171
    iget-object v0, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v0, v1}, Lyads/os4;->e(I)V

    .line 172
    iget-object v0, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v0}, Lyads/os4;->l()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 173
    iput v1, p1, Lyads/wk0;->f:I

    return v3

    .line 174
    :cond_1
    invoke-virtual {p1, v3}, Lyads/wk0;->a(I)V

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 175
    iget-wide v4, p1, Lyads/wk0;->d:J

    cmp-long p0, v4, p2

    if-gez p0, :cond_6

    .line 176
    :cond_3
    iget p0, p1, Lyads/wk0;->g:I

    .line 177
    invoke-static {p0, v3}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 178
    invoke-virtual {p1, p0}, Lyads/wk0;->c(I)V

    if-nez p0, :cond_4

    .line 179
    iget-object v5, p1, Lyads/wk0;->a:[B

    array-length p0, v5

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lyads/wk0;->a([BIIIZ)I

    move-result p0

    goto :goto_3

    :cond_4
    move-object v4, p1

    :goto_3
    const/4 p1, -0x1

    if-eq p0, p1, :cond_5

    .line 180
    iget-wide v5, v4, Lyads/wk0;->d:J

    int-to-long v7, p0

    add-long/2addr v5, v7

    iput-wide v5, v4, Lyads/wk0;->d:J

    :cond_5
    if-eq p0, p1, :cond_6

    move-object p1, v4

    goto :goto_2

    :cond_6
    return v1

    .line 181
    :cond_7
    invoke-static {}, Lmi2;->b()V

    return v1
.end method

.method public final a(Lyads/wk0;Z)Z
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lyads/pp4;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lyads/pp4;->b:J

    iput v0, p0, Lyads/pp4;->c:I

    iput v0, p0, Lyads/pp4;->d:I

    iput v0, p0, Lyads/pp4;->e:I

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lyads/os4;->c(I)V

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    :try_start_0
    invoke-virtual {p1, v1, v0, v2, p2}, Lyads/wk0;->b([BIIZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    if-eqz p2, :cond_7

    move v1, v0

    :goto_0
    if-eqz v1, :cond_6

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->l()J

    move-result-wide v1

    const-wide/32 v3, 0x4f676753

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const-string p0, "unsupported bit stream revision"

    invoke-static {p0}, Lyads/xs4;->a(Ljava/lang/String;)Lyads/xs4;

    move-result-object p0

    throw p0

    :cond_2
    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    iput v1, p0, Lyads/pp4;->a:I

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->d()J

    move-result-wide v1

    iput-wide v1, p0, Lyads/pp4;->b:J

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->e()J

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->e()J

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->e()J

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    iput v1, p0, Lyads/pp4;->c:I

    add-int/lit8 v2, v1, 0x1b

    iput v2, p0, Lyads/pp4;->d:I

    iget-object v2, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {v2, v1}, Lyads/os4;->c(I)V

    iget-object v1, p0, Lyads/pp4;->g:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    iget v2, p0, Lyads/pp4;->c:I

    :try_start_1
    invoke-virtual {p1, v1, v0, v2, p2}, Lyads/wk0;->b([BIIZ)Z

    move-result p1
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    if-eqz p2, :cond_5

    move p1, v0

    :goto_1
    if-nez p1, :cond_3

    return v0

    :cond_3
    :goto_2
    iget p1, p0, Lyads/pp4;->c:I

    if-ge v0, p1, :cond_4

    iget-object p1, p0, Lyads/pp4;->f:[I

    iget-object p2, p0, Lyads/pp4;->g:Lyads/os4;

    invoke-virtual {p2}, Lyads/os4;->k()I

    move-result p2

    aput p2, p1, v0

    iget p1, p0, Lyads/pp4;->e:I

    iget-object p2, p0, Lyads/pp4;->f:[I

    aget p2, p2, v0

    add-int/2addr p1, p2

    iput p1, p0, Lyads/pp4;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    throw p1

    :cond_6
    :goto_3
    return v0

    :cond_7
    throw v1
.end method
