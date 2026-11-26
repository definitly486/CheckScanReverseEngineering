.class public final Lyads/fe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# static fields
.field public static final n:[I

.field public static final o:[I

.field public static final p:[B

.field public static final q:[B

.field public static final r:I


# instance fields
.field public final a:[B

.field public b:Z

.field public c:J

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:J

.field public j:Lyads/zs2;

.field public k:Lyads/k06;

.field public l:Lyads/sh5;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lyads/fe;->n:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lyads/fe;->o:[I

    const-string v1, "#!AMR\n"

    invoke-static {v1}, Lyads/u56;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lyads/fe;->p:[B

    const-string v1, "#!AMR-WB\n"

    invoke-static {v1}, Lyads/u56;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lyads/fe;->q:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Lyads/fe;->r:I

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lyads/fe;->a:[B

    const/4 v0, -0x1

    iput v0, p0, Lyads/fe;->g:I

    return-void
.end method


# virtual methods
.method public final a(Lyads/wk0;)I
    .locals 4

    const/4 v0, 0x0

    .line 222
    iput v0, p1, Lyads/wk0;->f:I

    .line 223
    iget-object v1, p0, Lyads/fe;->a:[B

    const/4 v2, 0x1

    .line 224
    invoke-virtual {p1, v1, v0, v2, v0}, Lyads/wk0;->b([BIIZ)Z

    .line 225
    iget-object p1, p0, Lyads/fe;->a:[B

    aget-byte p1, p1, v0

    and-int/lit16 v1, p1, 0x83

    const/4 v3, 0x0

    if-gtz v1, :cond_5

    shr-int/lit8 p1, p1, 0x3

    const/16 v0, 0xf

    and-int/2addr p1, v0

    if-ltz p1, :cond_3

    if-gt p1, v0, :cond_3

    .line 226
    iget-boolean v0, p0, Lyads/fe;->b:Z

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    if-lt p1, v1, :cond_1

    const/16 v1, 0xd

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    const/16 v1, 0xc

    if-lt p1, v1, :cond_1

    const/16 v1, 0xe

    if-le p1, v1, :cond_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 227
    sget-object p0, Lyads/fe;->o:[I

    aget p0, p0, p1

    return p0

    :cond_2
    sget-object p0, Lyads/fe;->n:[I

    aget p0, p0, p1

    return p0

    .line 228
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal AMR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    iget-boolean p0, p0, Lyads/fe;->b:Z

    if-eqz p0, :cond_4

    const-string p0, "WB"

    goto :goto_1

    :cond_4
    const-string p0, "NB"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 230
    new-instance p1, Lyads/xs4;

    invoke-direct {p1, p0, v3, v2, v2}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    .line 231
    throw p1

    .line 232
    :cond_5
    const-string p0, "Invalid padding bits for frame header "

    invoke-static {p1, p0}, Lyads/vx4;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    invoke-static {p0, v3}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 12

    iget-object p2, p0, Lyads/fe;->k:Lyads/k06;

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    sget p2, Lyads/u56;->a:I

    move-object p2, p1

    check-cast p2, Lyads/wk0;

    iget-wide v1, p2, Lyads/wk0;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x1

    if-nez v1, :cond_2

    sget-object v1, Lyads/fe;->p:[B

    iput v0, p2, Lyads/wk0;->f:I

    array-length v5, v1

    new-array v5, v5, [B

    array-length v6, v1

    invoke-virtual {p2, v5, v0, v6, v0}, Lyads/wk0;->b([BIIZ)Z

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v0, p0, Lyads/fe;->b:Z

    array-length v1, v1

    invoke-virtual {p2, v1}, Lyads/wk0;->a(I)V

    goto :goto_0

    :cond_0
    sget-object v1, Lyads/fe;->q:[B

    iput v0, p2, Lyads/wk0;->f:I

    array-length v5, v1

    new-array v5, v5, [B

    array-length v6, v1

    invoke-virtual {p2, v5, v0, v6, v0}, Lyads/wk0;->b([BIIZ)Z

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v2, p0, Lyads/fe;->b:Z

    array-length v1, v1

    invoke-virtual {p2, v1}, Lyads/wk0;->a(I)V

    goto :goto_0

    :cond_1
    const-string p0, "Could not find AMR header."

    const/4 p1, 0x0

    invoke-static {p0, p1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0

    :cond_2
    :goto_0
    iget-boolean v1, p0, Lyads/fe;->m:Z

    if-nez v1, :cond_5

    iput-boolean v2, p0, Lyads/fe;->m:Z

    iget-boolean v1, p0, Lyads/fe;->b:Z

    if-eqz v1, :cond_3

    const-string v5, "audio/amr-wb"

    goto :goto_1

    :cond_3
    const-string v5, "audio/3gpp"

    :goto_1
    if-eqz v1, :cond_4

    const/16 v1, 0x3e80

    goto :goto_2

    :cond_4
    const/16 v1, 0x1f40

    :goto_2
    iget-object v6, p0, Lyads/fe;->k:Lyads/k06;

    new-instance v7, Lyads/uz2;

    invoke-direct {v7}, Lyads/uz2;-><init>()V

    iput-object v5, v7, Lyads/uz2;->k:Ljava/lang/String;

    sget v5, Lyads/fe;->r:I

    iput v5, v7, Lyads/uz2;->l:I

    iput v2, v7, Lyads/uz2;->x:I

    iput v1, v7, Lyads/uz2;->y:I

    new-instance v1, Lyads/vz2;

    invoke-direct {v1, v7}, Lyads/vz2;-><init>(Lyads/uz2;)V

    invoke-interface {v6, v1}, Lyads/k06;->a(Lyads/vz2;)V

    :cond_5
    iget v1, p0, Lyads/fe;->e:I

    const/4 v5, -0x1

    if-nez v1, :cond_7

    :try_start_0
    move-object v1, p1

    check-cast v1, Lyads/wk0;

    invoke-virtual {p0, v1}, Lyads/fe;->a(Lyads/wk0;)I

    move-result v1

    iput v1, p0, Lyads/fe;->d:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, p0, Lyads/fe;->e:I

    iget v6, p0, Lyads/fe;->g:I

    if-ne v6, v5, :cond_6

    iget-wide v6, p2, Lyads/wk0;->d:J

    iput v1, p0, Lyads/fe;->g:I

    move v6, v1

    :cond_6
    if-ne v6, v1, :cond_7

    iget p2, p0, Lyads/fe;->h:I

    add-int/2addr p2, v2

    iput p2, p0, Lyads/fe;->h:I

    :cond_7
    iget-object p2, p0, Lyads/fe;->k:Lyads/k06;

    invoke-interface {p2, p1, v1, v2}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result p1

    if-ne p1, v5, :cond_8

    :catch_0
    move v0, v5

    goto :goto_3

    :cond_8
    iget p2, p0, Lyads/fe;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lyads/fe;->e:I

    if-lez p2, :cond_9

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lyads/fe;->k:Lyads/k06;

    iget-wide p1, p0, Lyads/fe;->i:J

    iget-wide v6, p0, Lyads/fe;->c:J

    add-long/2addr v6, p1

    iget v9, p0, Lyads/fe;->d:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lyads/k06;->a(JIIILyads/j06;)V

    iget-wide p1, p0, Lyads/fe;->c:J

    const-wide/16 v5, 0x4e20

    add-long/2addr p1, v5

    iput-wide p1, p0, Lyads/fe;->c:J

    :goto_3
    iget-boolean p1, p0, Lyads/fe;->f:Z

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    new-instance p1, Lyads/rh5;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v5, v6, v3, v4}, Lyads/rh5;-><init>(JJ)V

    iput-object p1, p0, Lyads/fe;->l:Lyads/sh5;

    iget-object p2, p0, Lyads/fe;->j:Lyads/zs2;

    invoke-interface {p2, p1}, Lyads/zs2;->a(Lyads/sh5;)V

    iput-boolean v2, p0, Lyads/fe;->f:Z

    :goto_4
    return v0

    :cond_b
    invoke-static {}, Lud;->g()V

    return v0
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    .line 237
    iput-wide p3, p0, Lyads/fe;->c:J

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lyads/fe;->d:I

    .line 239
    iput v0, p0, Lyads/fe;->e:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lyads/fe;->l:Lyads/sh5;

    instance-of v1, v0, Lyads/x50;

    if-eqz v1, :cond_0

    .line 241
    check-cast v0, Lyads/x50;

    .line 242
    iget-wide p3, v0, Lyads/x50;->b:J

    .line 243
    iget v0, v0, Lyads/x50;->e:I

    invoke-static {v0, p1, p2, p3, p4}, Lyads/x50;->a(IJJ)J

    move-result-wide p1

    .line 244
    iput-wide p1, p0, Lyads/fe;->i:J

    return-void

    .line 245
    :cond_0
    iput-wide p3, p0, Lyads/fe;->i:J

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 2

    .line 234
    iput-object p1, p0, Lyads/fe;->j:Lyads/zs2;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 235
    invoke-interface {p1, v0, v1}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v0

    iput-object v0, p0, Lyads/fe;->k:Lyads/k06;

    .line 236
    invoke-interface {p1}, Lyads/zs2;->a()V

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 5

    .line 246
    check-cast p1, Lyads/wk0;

    .line 247
    sget-object v0, Lyads/fe;->p:[B

    const/4 v1, 0x0

    .line 248
    iput v1, p1, Lyads/wk0;->f:I

    .line 249
    array-length v2, v0

    new-array v2, v2, [B

    .line 250
    array-length v3, v0

    .line 251
    invoke-virtual {p1, v2, v1, v3, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 252
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 253
    iput-boolean v1, p0, Lyads/fe;->b:Z

    .line 254
    array-length p0, v0

    invoke-virtual {p1, p0}, Lyads/wk0;->a(I)V

    return v3

    .line 255
    :cond_0
    sget-object v0, Lyads/fe;->q:[B

    .line 256
    iput v1, p1, Lyads/wk0;->f:I

    .line 257
    array-length v2, v0

    new-array v2, v2, [B

    .line 258
    array-length v4, v0

    .line 259
    invoke-virtual {p1, v2, v1, v4, v1}, Lyads/wk0;->b([BIIZ)Z

    .line 260
    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    iput-boolean v3, p0, Lyads/fe;->b:Z

    .line 262
    array-length p0, v0

    invoke-virtual {p1, p0}, Lyads/wk0;->a(I)V

    return v3

    :cond_1
    return v1
.end method

.method public final release()V
    .locals 0

    return-void
.end method
