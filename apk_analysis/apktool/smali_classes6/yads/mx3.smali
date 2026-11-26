.class public final Lyads/mx3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ws2;


# static fields
.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:[B

.field public static final f0:[B

.field public static final g0:Ljava/util/UUID;

.field public static final h0:Ljava/util/Map;


# instance fields
.field public A:J

.field public B:J

.field public C:Lyads/vv3;

.field public D:Lyads/vv3;

.field public E:Z

.field public F:Z

.field public G:I

.field public H:J

.field public I:J

.field public J:I

.field public K:I

.field public L:[I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:J

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:B

.field public final a:Lyads/uk0;

.field public a0:Z

.field public final b:Lyads/o76;

.field public b0:Lyads/zs2;

.field public final c:Landroid/util/SparseArray;

.field public final d:Z

.field public final e:Lyads/os4;

.field public final f:Lyads/os4;

.field public final g:Lyads/os4;

.field public final h:Lyads/os4;

.field public final i:Lyads/os4;

.field public final j:Lyads/os4;

.field public final k:Lyads/os4;

.field public final l:Lyads/os4;

.field public final m:Lyads/os4;

.field public final n:Lyads/os4;

.field public o:Ljava/nio/ByteBuffer;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Lyads/lx3;

.field public v:Z

.field public w:I

.field public x:J

.field public y:Z

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lyads/mx3;->c0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-static {v1}, Lyads/u56;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lyads/mx3;->d0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lyads/mx3;->e0:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lyads/mx3;->f0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lyads/mx3;->g0:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x5a

    const-string v2, "htc_video_rotA-090"

    const/4 v3, 0x0

    const-string v4, "htc_video_rotA-000"

    invoke-static {v3, v0, v4, v1, v2}, Lyads/jx3;->a(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x10e

    const-string v2, "htc_video_rotA-270"

    const/16 v3, 0xb4

    const-string v4, "htc_video_rotA-180"

    invoke-static {v3, v0, v4, v1, v2}, Lyads/jx3;->a(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyads/mx3;->h0:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5

    new-instance v0, Lyads/uk0;

    invoke-direct {v0}, Lyads/uk0;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lyads/mx3;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v3, p0, Lyads/mx3;->r:J

    iput-wide v3, p0, Lyads/mx3;->s:J

    iput-wide v3, p0, Lyads/mx3;->t:J

    iput-wide v1, p0, Lyads/mx3;->z:J

    iput-wide v1, p0, Lyads/mx3;->A:J

    iput-wide v3, p0, Lyads/mx3;->B:J

    iput-object v0, p0, Lyads/mx3;->a:Lyads/uk0;

    new-instance v1, Lyads/kx3;

    invoke-direct {v1, p0}, Lyads/kx3;-><init>(Lyads/mx3;)V

    iput-object v1, v0, Lyads/uk0;->d:Lyads/kx3;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/mx3;->d:Z

    new-instance p1, Lyads/o76;

    invoke-direct {p1}, Lyads/o76;-><init>()V

    iput-object p1, p0, Lyads/mx3;->b:Lyads/o76;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lyads/mx3;->c:Landroid/util/SparseArray;

    new-instance p1, Lyads/os4;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/mx3;->g:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p1, v2}, Lyads/os4;-><init>([B)V

    iput-object p1, p0, Lyads/mx3;->h:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1, v1}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/mx3;->i:Lyads/os4;

    new-instance p1, Lyads/os4;

    sget-object v2, Lyads/qd4;->a:[B

    invoke-direct {p1, v2}, Lyads/os4;-><init>([B)V

    iput-object p1, p0, Lyads/mx3;->e:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1, v1}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/mx3;->f:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/mx3;->j:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/mx3;->k:Lyads/os4;

    new-instance p1, Lyads/os4;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Lyads/os4;-><init>(I)V

    iput-object p1, p0, Lyads/mx3;->l:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/mx3;->m:Lyads/os4;

    new-instance p1, Lyads/os4;

    invoke-direct {p1}, Lyads/os4;-><init>()V

    iput-object p1, p0, Lyads/mx3;->n:Lyads/os4;

    new-array p1, v0, [I

    iput-object p1, p0, Lyads/mx3;->L:[I

    return-void
.end method

.method public static a(Ljava/lang/String;JJ)[B
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide v0, 0xd693a400L

    .line 823
    div-long v2, p1, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p1, v3

    const-wide/32 v0, 0x3938700

    .line 824
    div-long v3, p1, v0

    long-to-int v3, v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p1, v4

    const-wide/32 v0, 0xf4240

    .line 825
    div-long v4, p1, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p1, v5

    .line 826
    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 827
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 828
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p3, p4, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 829
    invoke-static {p0}, Lyads/u56;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 830
    :cond_0
    invoke-static {}, Lmi2;->b()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/wk0;Lyads/lx3;IZ)I
    .locals 11

    iget-object v0, p2, Lyads/lx3;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lyads/mx3;->c0:[B

    invoke-virtual {p0, p1, p2, p3}, Lyads/mx3;->a(Lyads/wk0;[BI)V

    iget p1, p0, Lyads/mx3;->T:I

    invoke-virtual {p0}, Lyads/mx3;->b()V

    return p1

    :cond_0
    iget-object v0, p2, Lyads/lx3;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lyads/mx3;->e0:[B

    invoke-virtual {p0, p1, p2, p3}, Lyads/mx3;->a(Lyads/wk0;[BI)V

    iget p1, p0, Lyads/mx3;->T:I

    invoke-virtual {p0}, Lyads/mx3;->b()V

    return p1

    :cond_1
    iget-object v0, p2, Lyads/lx3;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lyads/mx3;->f0:[B

    invoke-virtual {p0, p1, p2, p3}, Lyads/mx3;->a(Lyads/wk0;[BI)V

    iget p1, p0, Lyads/mx3;->T:I

    invoke-virtual {p0}, Lyads/mx3;->b()V

    return p1

    :cond_2
    iget-object v0, p2, Lyads/lx3;->X:Lyads/k06;

    iget-boolean v1, p0, Lyads/mx3;->V:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_13

    iget-boolean v1, p2, Lyads/lx3;->h:Z

    if-eqz v1, :cond_e

    iget v1, p0, Lyads/mx3;->O:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lyads/mx3;->O:I

    iget-boolean v1, p0, Lyads/mx3;->W:Z

    const/16 v6, 0x80

    if-nez v1, :cond_4

    iget-object v1, p0, Lyads/mx3;->g:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {p1, v1, v5, v4, v5}, Lyads/wk0;->a([BIIZ)Z

    iget v1, p0, Lyads/mx3;->S:I

    add-int/2addr v1, v4

    iput v1, p0, Lyads/mx3;->S:I

    iget-object v1, p0, Lyads/mx3;->g:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    aget-byte v1, v1, v5

    and-int/lit16 v7, v1, 0x80

    if-eq v7, v6, :cond_3

    iput-byte v1, p0, Lyads/mx3;->Z:B

    iput-boolean v4, p0, Lyads/mx3;->W:Z

    goto :goto_0

    :cond_3
    const-string p0, "Extension bit is set in signal byte"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return v5

    :cond_4
    :goto_0
    iget-byte v1, p0, Lyads/mx3;->Z:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_f

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v5

    :goto_1
    iget v7, p0, Lyads/mx3;->O:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lyads/mx3;->O:I

    iget-boolean v7, p0, Lyads/mx3;->a0:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lyads/mx3;->l:Lyads/os4;

    iget-object v7, v7, Lyads/os4;->a:[B

    const/16 v8, 0x8

    invoke-virtual {p1, v7, v5, v8, v5}, Lyads/wk0;->a([BIIZ)Z

    iget v7, p0, Lyads/mx3;->S:I

    add-int/2addr v7, v8

    iput v7, p0, Lyads/mx3;->S:I

    iput-boolean v4, p0, Lyads/mx3;->a0:Z

    iget-object v7, p0, Lyads/mx3;->g:Lyads/os4;

    iget-object v9, v7, Lyads/os4;->a:[B

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v6, v5

    :goto_2
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v9, v5

    invoke-virtual {v7, v5}, Lyads/os4;->e(I)V

    iget-object v6, p0, Lyads/mx3;->g:Lyads/os4;

    invoke-interface {v0, v4, v6}, Lyads/k06;->a(ILyads/os4;)V

    iget v6, p0, Lyads/mx3;->T:I

    add-int/2addr v6, v4

    iput v6, p0, Lyads/mx3;->T:I

    iget-object v6, p0, Lyads/mx3;->l:Lyads/os4;

    invoke-virtual {v6, v5}, Lyads/os4;->e(I)V

    iget-object v6, p0, Lyads/mx3;->l:Lyads/os4;

    invoke-interface {v0, v8, v6}, Lyads/k06;->a(ILyads/os4;)V

    iget v6, p0, Lyads/mx3;->T:I

    add-int/2addr v6, v8

    iput v6, p0, Lyads/mx3;->T:I

    :cond_7
    if-eqz v1, :cond_f

    iget-boolean v1, p0, Lyads/mx3;->X:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lyads/mx3;->g:Lyads/os4;

    iget-object v1, v1, Lyads/os4;->a:[B

    invoke-virtual {p1, v1, v5, v4, v5}, Lyads/wk0;->a([BIIZ)Z

    iget v1, p0, Lyads/mx3;->S:I

    add-int/2addr v1, v4

    iput v1, p0, Lyads/mx3;->S:I

    iget-object v1, p0, Lyads/mx3;->g:Lyads/os4;

    invoke-virtual {v1, v5}, Lyads/os4;->e(I)V

    iget-object v1, p0, Lyads/mx3;->g:Lyads/os4;

    invoke-virtual {v1}, Lyads/os4;->k()I

    move-result v1

    iput v1, p0, Lyads/mx3;->Y:I

    iput-boolean v4, p0, Lyads/mx3;->X:Z

    :cond_8
    iget v1, p0, Lyads/mx3;->Y:I

    mul-int/2addr v1, v3

    iget-object v6, p0, Lyads/mx3;->g:Lyads/os4;

    invoke-virtual {v6, v1}, Lyads/os4;->c(I)V

    iget-object v6, p0, Lyads/mx3;->g:Lyads/os4;

    iget-object v6, v6, Lyads/os4;->a:[B

    invoke-virtual {p1, v6, v5, v1, v5}, Lyads/wk0;->a([BIIZ)Z

    iget v6, p0, Lyads/mx3;->S:I

    add-int/2addr v6, v1

    iput v6, p0, Lyads/mx3;->S:I

    iget v1, p0, Lyads/mx3;->Y:I

    div-int/2addr v1, v2

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v2

    iget-object v7, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    :cond_a
    iget-object v7, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v7, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v5

    move v7, v1

    :goto_3
    iget v8, p0, Lyads/mx3;->Y:I

    if-ge v1, v8, :cond_c

    iget-object v8, p0, Lyads/mx3;->g:Lyads/os4;

    invoke-virtual {v8}, Lyads/os4;->n()I

    move-result v8

    rem-int/lit8 v9, v1, 0x2

    iget-object v10, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    if-nez v9, :cond_b

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_b
    sub-int v7, v8, v7

    invoke-virtual {v10, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_3

    :cond_c
    iget v1, p0, Lyads/mx3;->S:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    rem-int/2addr v8, v2

    iget-object v7, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    if-ne v8, v4, :cond_d

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_d
    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    iget-object v1, p0, Lyads/mx3;->m:Lyads/os4;

    iget-object v7, p0, Lyads/mx3;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iput-object v7, v1, Lyads/os4;->a:[B

    iput v6, v1, Lyads/os4;->c:I

    iput v5, v1, Lyads/os4;->b:I

    iget-object v1, p0, Lyads/mx3;->m:Lyads/os4;

    invoke-interface {v0, v6, v1}, Lyads/k06;->a(ILyads/os4;)V

    iget v1, p0, Lyads/mx3;->T:I

    add-int/2addr v1, v6

    iput v1, p0, Lyads/mx3;->T:I

    goto :goto_6

    :cond_e
    iget-object v1, p2, Lyads/lx3;->i:[B

    if-eqz v1, :cond_f

    iget-object v6, p0, Lyads/mx3;->j:Lyads/os4;

    array-length v7, v1

    iput-object v1, v6, Lyads/os4;->a:[B

    iput v7, v6, Lyads/os4;->c:I

    iput v5, v6, Lyads/os4;->b:I

    :cond_f
    :goto_6
    iget-object v1, p2, Lyads/lx3;->b:Ljava/lang/String;

    const-string v6, "A_OPUS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_7

    :cond_10
    iget p4, p2, Lyads/lx3;->f:I

    if-lez p4, :cond_11

    move p4, v4

    goto :goto_7

    :cond_11
    move p4, v5

    :goto_7
    if-eqz p4, :cond_12

    iget p4, p0, Lyads/mx3;->O:I

    const/high16 v1, 0x10000000

    or-int/2addr p4, v1

    iput p4, p0, Lyads/mx3;->O:I

    iget-object p4, p0, Lyads/mx3;->n:Lyads/os4;

    invoke-virtual {p4, v5}, Lyads/os4;->c(I)V

    iget-object p4, p0, Lyads/mx3;->j:Lyads/os4;

    iget p4, p4, Lyads/os4;->c:I

    add-int/2addr p4, p3

    iget v1, p0, Lyads/mx3;->S:I

    sub-int/2addr p4, v1

    iget-object v1, p0, Lyads/mx3;->g:Lyads/os4;

    invoke-virtual {v1, v3}, Lyads/os4;->c(I)V

    iget-object v1, p0, Lyads/mx3;->g:Lyads/os4;

    iget-object v6, v1, Lyads/os4;->a:[B

    shr-int/lit8 v7, p4, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v5

    shr-int/lit8 v7, p4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    shr-int/lit8 v7, p4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    const/4 v7, 0x3

    aput-byte p4, v6, v7

    invoke-interface {v0, v3, v1}, Lyads/k06;->a(ILyads/os4;)V

    iget p4, p0, Lyads/mx3;->T:I

    add-int/2addr p4, v3

    iput p4, p0, Lyads/mx3;->T:I

    :cond_12
    iput-boolean v4, p0, Lyads/mx3;->V:Z

    :cond_13
    iget-object p4, p0, Lyads/mx3;->j:Lyads/os4;

    iget p4, p4, Lyads/os4;->c:I

    add-int/2addr p3, p4

    iget-object p4, p2, Lyads/lx3;->b:Ljava/lang/String;

    const-string v1, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_18

    iget-object p4, p2, Lyads/lx3;->b:Ljava/lang/String;

    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    goto :goto_a

    :cond_14
    iget-object p4, p2, Lyads/lx3;->T:Lyads/j26;

    if-eqz p4, :cond_16

    iget-object v1, p0, Lyads/mx3;->j:Lyads/os4;

    iget v1, v1, Lyads/os4;->c:I

    if-nez v1, :cond_15

    invoke-virtual {p4, p1}, Lyads/j26;->a(Lyads/xs2;)V

    goto :goto_8

    :cond_15
    invoke-static {}, Lud;->g()V

    return v5

    :cond_16
    :goto_8
    iget p4, p0, Lyads/mx3;->S:I

    if-ge p4, p3, :cond_1c

    sub-int p4, p3, p4

    iget-object v1, p0, Lyads/mx3;->j:Lyads/os4;

    iget v2, v1, Lyads/os4;->c:I

    iget v1, v1, Lyads/os4;->b:I

    sub-int/2addr v2, v1

    if-lez v2, :cond_17

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result p4

    iget-object v1, p0, Lyads/mx3;->j:Lyads/os4;

    invoke-interface {v0, p4, v1}, Lyads/k06;->a(ILyads/os4;)V

    goto :goto_9

    :cond_17
    invoke-interface {v0, p1, p4, v5}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result p4

    :goto_9
    iget v1, p0, Lyads/mx3;->S:I

    add-int/2addr v1, p4

    iput v1, p0, Lyads/mx3;->S:I

    iget v1, p0, Lyads/mx3;->T:I

    add-int/2addr v1, p4

    iput v1, p0, Lyads/mx3;->T:I

    goto :goto_8

    :cond_18
    :goto_a
    iget-object p4, p0, Lyads/mx3;->f:Lyads/os4;

    iget-object p4, p4, Lyads/os4;->a:[B

    aput-byte v5, p4, v5

    aput-byte v5, p4, v4

    aput-byte v5, p4, v2

    iget v1, p2, Lyads/lx3;->Y:I

    rsub-int/lit8 v2, v1, 0x4

    :goto_b
    iget v4, p0, Lyads/mx3;->S:I

    if-ge v4, p3, :cond_1c

    iget v4, p0, Lyads/mx3;->U:I

    iget-object v6, p0, Lyads/mx3;->j:Lyads/os4;

    if-nez v4, :cond_1a

    iget v4, v6, Lyads/os4;->c:I

    iget v6, v6, Lyads/os4;->b:I

    sub-int/2addr v4, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v6, v2, v4

    sub-int v7, v1, v4

    invoke-virtual {p1, p4, v6, v7, v5}, Lyads/wk0;->a([BIIZ)Z

    if-lez v4, :cond_19

    iget-object v6, p0, Lyads/mx3;->j:Lyads/os4;

    invoke-virtual {v6, p4, v2, v4}, Lyads/os4;->a([BII)V

    :cond_19
    iget v4, p0, Lyads/mx3;->S:I

    add-int/2addr v4, v1

    iput v4, p0, Lyads/mx3;->S:I

    iget-object v4, p0, Lyads/mx3;->f:Lyads/os4;

    invoke-virtual {v4, v5}, Lyads/os4;->e(I)V

    iget-object v4, p0, Lyads/mx3;->f:Lyads/os4;

    invoke-virtual {v4}, Lyads/os4;->n()I

    move-result v4

    iput v4, p0, Lyads/mx3;->U:I

    iget-object v4, p0, Lyads/mx3;->e:Lyads/os4;

    invoke-virtual {v4, v5}, Lyads/os4;->e(I)V

    iget-object v4, p0, Lyads/mx3;->e:Lyads/os4;

    invoke-interface {v0, v3, v4}, Lyads/k06;->a(ILyads/os4;)V

    iget v4, p0, Lyads/mx3;->T:I

    add-int/2addr v4, v3

    iput v4, p0, Lyads/mx3;->T:I

    goto :goto_b

    :cond_1a
    iget v7, v6, Lyads/os4;->c:I

    iget v6, v6, Lyads/os4;->b:I

    sub-int/2addr v7, v6

    if-lez v7, :cond_1b

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v6, p0, Lyads/mx3;->j:Lyads/os4;

    invoke-interface {v0, v4, v6}, Lyads/k06;->a(ILyads/os4;)V

    goto :goto_c

    :cond_1b
    invoke-interface {v0, p1, v4, v5}, Lyads/k06;->a(Lyads/tc0;IZ)I

    move-result v4

    :goto_c
    iget v6, p0, Lyads/mx3;->S:I

    add-int/2addr v6, v4

    iput v6, p0, Lyads/mx3;->S:I

    iget v6, p0, Lyads/mx3;->T:I

    add-int/2addr v6, v4

    iput v6, p0, Lyads/mx3;->T:I

    iget v6, p0, Lyads/mx3;->U:I

    sub-int/2addr v6, v4

    iput v6, p0, Lyads/mx3;->U:I

    goto :goto_b

    :cond_1c
    iget-object p1, p2, Lyads/lx3;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lyads/mx3;->h:Lyads/os4;

    invoke-virtual {p1, v5}, Lyads/os4;->e(I)V

    iget-object p1, p0, Lyads/mx3;->h:Lyads/os4;

    invoke-interface {v0, v3, p1}, Lyads/k06;->a(ILyads/os4;)V

    iget p1, p0, Lyads/mx3;->T:I

    add-int/2addr p1, v3

    iput p1, p0, Lyads/mx3;->T:I

    :cond_1d
    iget p1, p0, Lyads/mx3;->T:I

    invoke-virtual {p0}, Lyads/mx3;->b()V

    return p1
.end method

.method public final a(Lyads/xs2;Lyads/qx4;)I
    .locals 9

    const/4 v0, 0x0

    .line 718
    iput-boolean v0, p0, Lyads/mx3;->F:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_2

    .line 719
    iget-boolean v3, p0, Lyads/mx3;->F:Z

    if-nez v3, :cond_2

    .line 720
    iget-object v2, p0, Lyads/mx3;->a:Lyads/uk0;

    move-object v3, p1

    check-cast v3, Lyads/wk0;

    invoke-virtual {v2, v3}, Lyads/uk0;->a(Lyads/wk0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    iget-wide v3, v3, Lyads/wk0;->d:J

    .line 722
    iget-boolean v5, p0, Lyads/mx3;->y:Z

    if-eqz v5, :cond_1

    .line 723
    iput-wide v3, p0, Lyads/mx3;->A:J

    .line 724
    iget-wide v2, p0, Lyads/mx3;->z:J

    iput-wide v2, p2, Lyads/qx4;->a:J

    .line 725
    iput-boolean v0, p0, Lyads/mx3;->y:Z

    goto :goto_0

    .line 726
    :cond_1
    iget-boolean v3, p0, Lyads/mx3;->v:Z

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lyads/mx3;->A:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    .line 727
    iput-wide v3, p2, Lyads/qx4;->a:J

    .line 728
    iput-wide v5, p0, Lyads/mx3;->A:J

    :goto_0
    return v1

    :cond_2
    if-nez v2, :cond_5

    move p1, v0

    .line 729
    :goto_1
    iget-object p2, p0, Lyads/mx3;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 730
    iget-object p2, p0, Lyads/mx3;->c:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyads/lx3;

    .line 731
    iget-object v1, p2, Lyads/lx3;->X:Lyads/k06;

    .line 732
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 733
    iget-object v1, p2, Lyads/lx3;->T:Lyads/j26;

    if-eqz v1, :cond_3

    .line 734
    iget-object v2, p2, Lyads/lx3;->X:Lyads/k06;

    iget-object v8, p2, Lyads/lx3;->j:Lyads/j06;

    .line 735
    iget p2, v1, Lyads/j26;->c:I

    if-lez p2, :cond_3

    .line 736
    iget-wide v3, v1, Lyads/j26;->d:J

    iget v5, v1, Lyads/j26;->e:I

    iget v6, v1, Lyads/j26;->f:I

    iget v7, v1, Lyads/j26;->g:I

    invoke-interface/range {v2 .. v8}, Lyads/k06;->a(JIIILyads/j06;)V

    .line 737
    iput v0, v1, Lyads/j26;->c:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    return v0
.end method

.method public final a(J)J
    .locals 6

    .line 831
    iget-wide v2, p0, Lyads/mx3;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 832
    invoke-static/range {v0 .. v5}, Lyads/u56;->a(JJJ)J

    move-result-wide p0

    return-wide p0

    .line 833
    :cond_0
    const-string p0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p1, 0x0

    .line 834
    invoke-static {p0, p1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final a(I)V
    .locals 1

    .line 738
    iget-object p0, p0, Lyads/mx3;->u:Lyads/lx3;

    if-eqz p0, :cond_0

    return-void

    .line 739
    :cond_0
    const-string p0, "Element "

    const-string v0, " must be in a TrackEntry"

    .line 740
    invoke-static {p1, p0, v0}, Lkv2;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 741
    invoke-static {p0, p1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 706
    iput-wide p1, p0, Lyads/mx3;->B:J

    const/4 p1, 0x0

    .line 707
    iput p1, p0, Lyads/mx3;->G:I

    .line 708
    iget-object p2, p0, Lyads/mx3;->a:Lyads/uk0;

    invoke-virtual {p2}, Lyads/uk0;->a()V

    .line 709
    iget-object p2, p0, Lyads/mx3;->b:Lyads/o76;

    .line 710
    iput p1, p2, Lyads/o76;->b:I

    .line 711
    iput p1, p2, Lyads/o76;->c:I

    .line 712
    invoke-virtual {p0}, Lyads/mx3;->b()V

    move p2, p1

    .line 713
    :goto_0
    iget-object p3, p0, Lyads/mx3;->c:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 714
    iget-object p3, p0, Lyads/mx3;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lyads/lx3;

    .line 715
    iget-object p3, p3, Lyads/lx3;->T:Lyads/j26;

    if-eqz p3, :cond_0

    .line 716
    iput-boolean p1, p3, Lyads/j26;->b:Z

    .line 717
    iput p1, p3, Lyads/j26;->c:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lyads/lx3;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 742
    iget-object v2, v1, Lyads/lx3;->T:Lyads/j26;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    move-object v3, v2

    .line 743
    iget-object v2, v1, Lyads/lx3;->X:Lyads/k06;

    iget-object v8, v1, Lyads/lx3;->j:Lyads/j06;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lyads/j26;->a(Lyads/k06;JIIILyads/j06;)V

    goto/16 :goto_7

    .line 744
    :cond_0
    iget-object v2, v1, Lyads/lx3;->b:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "S_TEXT/WEBVTT"

    const-string v5, "S_TEXT/ASS"

    const/4 v6, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Lyads/lx3;->b:Ljava/lang/String;

    .line 745
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lyads/lx3;->b:Ljava/lang/String;

    .line 746
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 747
    :cond_1
    iget v2, v0, Lyads/mx3;->K:I

    const-string v7, "MatroskaExtractor"

    if-le v2, v9, :cond_2

    .line 748
    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v7, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 749
    :cond_2
    iget-wide v10, v0, Lyads/mx3;->I:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    .line 750
    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v7, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_5

    .line 751
    :cond_4
    iget-object v2, v1, Lyads/lx3;->b:Ljava/lang/String;

    iget-object v7, v0, Lyads/mx3;->k:Lyads/os4;

    .line 752
    iget-object v7, v7, Lyads/os4;->a:[B

    .line 753
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v12, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v12, v9

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v12, v6

    :goto_1
    const-wide/16 v2, 0x3e8

    packed-switch v12, :pswitch_data_0

    .line 754
    invoke-static {}, Lmi2;->b()V

    return-void

    .line 755
    :pswitch_0
    const-string v4, "%02d:%02d:%02d,%03d"

    invoke-static {v4, v10, v11, v2, v3}, Lyads/mx3;->a(Ljava/lang/String;JJ)[B

    move-result-object v2

    const/16 v3, 0x13

    goto :goto_2

    .line 756
    :pswitch_1
    const-string v4, "%02d:%02d:%02d.%03d"

    invoke-static {v4, v10, v11, v2, v3}, Lyads/mx3;->a(Ljava/lang/String;JJ)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_2

    .line 757
    :pswitch_2
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v3, 0x2710

    invoke-static {v2, v10, v11, v3, v4}, Lyads/mx3;->a(Ljava/lang/String;JJ)[B

    move-result-object v2

    const/16 v3, 0x15

    .line 758
    :goto_2
    array-length v4, v2

    invoke-static {v2, v6, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 759
    iget-object v2, v0, Lyads/mx3;->k:Lyads/os4;

    .line 760
    iget v2, v2, Lyads/os4;->b:I

    .line 761
    :goto_3
    iget-object v3, v0, Lyads/mx3;->k:Lyads/os4;

    .line 762
    iget v4, v3, Lyads/os4;->c:I

    if-ge v2, v4, :cond_9

    .line 763
    iget-object v4, v3, Lyads/os4;->a:[B

    .line 764
    aget-byte v4, v4, v2

    if-nez v4, :cond_8

    .line 765
    invoke-virtual {v3, v2}, Lyads/os4;->d(I)V

    goto :goto_4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 766
    :cond_9
    :goto_4
    iget-object v2, v1, Lyads/lx3;->X:Lyads/k06;

    iget-object v3, v0, Lyads/mx3;->k:Lyads/os4;

    .line 767
    iget v4, v3, Lyads/os4;->c:I

    .line 768
    invoke-interface {v2, v4, v3}, Lyads/k06;->a(ILyads/os4;)V

    .line 769
    iget-object v2, v0, Lyads/mx3;->k:Lyads/os4;

    .line 770
    iget v2, v2, Lyads/os4;->c:I

    add-int v2, p5, v2

    :goto_5
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_b

    .line 771
    iget v3, v0, Lyads/mx3;->K:I

    .line 772
    iget-object v4, v0, Lyads/mx3;->n:Lyads/os4;

    if-le v3, v9, :cond_a

    .line 773
    invoke-virtual {v4, v6}, Lyads/os4;->c(I)V

    goto :goto_6

    .line 774
    :cond_a
    iget v3, v4, Lyads/os4;->c:I

    .line 775
    iget-object v5, v1, Lyads/lx3;->X:Lyads/k06;

    invoke-interface {v5, v3, v4}, Lyads/k06;->a(ILyads/os4;)V

    add-int/2addr v2, v3

    :cond_b
    :goto_6
    move v14, v2

    .line 776
    iget-object v10, v1, Lyads/lx3;->X:Lyads/k06;

    iget-object v1, v1, Lyads/lx3;->j:Lyads/j06;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lyads/k06;->a(JIIILyads/j06;)V

    .line 777
    :goto_7
    iput-boolean v9, v0, Lyads/mx3;->F:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lyads/wk0;I)V
    .locals 4

    .line 778
    iget-object v0, p0, Lyads/mx3;->g:Lyads/os4;

    .line 779
    iget v1, v0, Lyads/os4;->c:I

    if-lt v1, p2, :cond_0

    return-void

    .line 780
    :cond_0
    iget-object v1, v0, Lyads/os4;->a:[B

    .line 781
    array-length v2, v1

    if-ge v2, p2, :cond_1

    .line 782
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 783
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lyads/os4;->a(I)V

    .line 784
    :cond_1
    iget-object v0, p0, Lyads/mx3;->g:Lyads/os4;

    .line 785
    iget-object v1, v0, Lyads/os4;->a:[B

    .line 786
    iget v0, v0, Lyads/os4;->c:I

    sub-int v2, p2, v0

    const/4 v3, 0x0

    .line 787
    invoke-virtual {p1, v1, v0, v2, v3}, Lyads/wk0;->a([BIIZ)Z

    .line 788
    iget-object p0, p0, Lyads/mx3;->g:Lyads/os4;

    invoke-virtual {p0, p2}, Lyads/os4;->d(I)V

    return-void
.end method

.method public final a(Lyads/wk0;[BI)V
    .locals 5

    .line 811
    array-length v0, p2

    add-int/2addr v0, p3

    .line 812
    iget-object v1, p0, Lyads/mx3;->k:Lyads/os4;

    .line 813
    iget-object v2, v1, Lyads/os4;->a:[B

    .line 814
    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    .line 815
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lyads/os4;->a([B)V

    goto :goto_0

    .line 816
    :cond_0
    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 817
    :goto_0
    iget-object v1, p0, Lyads/mx3;->k:Lyads/os4;

    .line 818
    iget-object v1, v1, Lyads/os4;->a:[B

    .line 819
    array-length p2, p2

    .line 820
    invoke-virtual {p1, v1, p2, p3, v4}, Lyads/wk0;->a([BIIZ)Z

    .line 821
    iget-object p1, p0, Lyads/mx3;->k:Lyads/os4;

    invoke-virtual {p1, v4}, Lyads/os4;->e(I)V

    .line 822
    iget-object p0, p0, Lyads/mx3;->k:Lyads/os4;

    invoke-virtual {p0, v0}, Lyads/os4;->d(I)V

    return-void
.end method

.method public final a(Lyads/zs2;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lyads/mx3;->b0:Lyads/zs2;

    return-void
.end method

.method public final a(Lyads/xs2;)Z
    .locals 13

    .line 789
    new-instance p0, Lyads/go5;

    invoke-direct {p0}, Lyads/go5;-><init>()V

    .line 790
    check-cast p1, Lyads/wk0;

    .line 791
    iget-wide v0, p1, Lyads/wk0;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :cond_1
    :goto_0
    long-to-int v3, v3

    .line 792
    iget-object v4, p0, Lyads/go5;->a:Lyads/os4;

    .line 793
    iget-object v4, v4, Lyads/os4;->a:[B

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 794
    invoke-virtual {p1, v4, v5, v6, v5}, Lyads/wk0;->b([BIIZ)Z

    .line 795
    iget-object v4, p0, Lyads/go5;->a:Lyads/os4;

    invoke-virtual {v4}, Lyads/os4;->l()J

    move-result-wide v7

    .line 796
    iput v6, p0, Lyads/go5;->b:I

    :goto_1
    const-wide/32 v9, 0x1a45dfa3

    cmp-long v4, v7, v9

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    .line 797
    iget v4, p0, Lyads/go5;->b:I

    add-int/2addr v4, v6

    iput v4, p0, Lyads/go5;->b:I

    if-ne v4, v3, :cond_2

    goto :goto_3

    .line 798
    :cond_2
    iget-object v4, p0, Lyads/go5;->a:Lyads/os4;

    .line 799
    iget-object v4, v4, Lyads/os4;->a:[B

    .line 800
    invoke-virtual {p1, v4, v5, v6, v5}, Lyads/wk0;->b([BIIZ)Z

    const/16 v4, 0x8

    shl-long v6, v7, v4

    const-wide/16 v8, -0x100

    and-long/2addr v6, v8

    .line 801
    iget-object v4, p0, Lyads/go5;->a:Lyads/os4;

    .line 802
    iget-object v4, v4, Lyads/os4;->a:[B

    .line 803
    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-long v8, v4

    or-long v7, v6, v8

    goto :goto_1

    .line 804
    :cond_3
    invoke-virtual {p0, p1}, Lyads/go5;->a(Lyads/wk0;)J

    move-result-wide v3

    .line 805
    iget v7, p0, Lyads/go5;->b:I

    int-to-long v7, v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v11, v3, v9

    if-eqz v11, :cond_8

    if-eqz v2, :cond_4

    add-long v11, v7, v3

    cmp-long v0, v11, v0

    if-ltz v0, :cond_4

    goto :goto_3

    .line 806
    :cond_4
    :goto_2
    iget v0, p0, Lyads/go5;->b:I

    int-to-long v0, v0

    add-long v11, v7, v3

    cmp-long v0, v0, v11

    if-gez v0, :cond_7

    .line 807
    invoke-virtual {p0, p1}, Lyads/go5;->a(Lyads/wk0;)J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-nez v0, :cond_5

    goto :goto_3

    .line 808
    :cond_5
    invoke-virtual {p0, p1}, Lyads/go5;->a(Lyads/wk0;)J

    move-result-wide v0

    const-wide/16 v11, 0x0

    cmp-long v2, v0, v11

    if-ltz v2, :cond_8

    const-wide/32 v11, 0x7fffffff

    cmp-long v11, v0, v11

    if-lez v11, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_4

    long-to-int v0, v0

    .line 809
    invoke-virtual {p1, v0, v5}, Lyads/wk0;->a(IZ)Z

    .line 810
    iget v1, p0, Lyads/go5;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lyads/go5;->b:I

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    return v6

    :cond_8
    :goto_3
    return v5
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 2848
    iput v0, p0, Lyads/mx3;->S:I

    .line 2849
    iput v0, p0, Lyads/mx3;->T:I

    .line 2850
    iput v0, p0, Lyads/mx3;->U:I

    .line 2851
    iput-boolean v0, p0, Lyads/mx3;->V:Z

    .line 2852
    iput-boolean v0, p0, Lyads/mx3;->W:Z

    .line 2853
    iput-boolean v0, p0, Lyads/mx3;->X:Z

    .line 2854
    iput v0, p0, Lyads/mx3;->Y:I

    .line 2855
    iput-byte v0, p0, Lyads/mx3;->Z:B

    .line 2856
    iput-boolean v0, p0, Lyads/mx3;->a0:Z

    .line 2857
    iget-object p0, p0, Lyads/mx3;->j:Lyads/os4;

    invoke-virtual {p0, v0}, Lyads/os4;->c(I)V

    return-void
.end method

.method public final b(I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "Error parsing vorbis codec private"

    iget-object v3, v0, Lyads/mx3;->b0:Lyads/zs2;

    if-eqz v3, :cond_86

    const/16 v4, 0xa0

    const-string v5, "A_OPUS"

    const/16 v8, 0x8

    const/4 v10, 0x0

    if-eq v1, v4, :cond_7f

    const/16 v4, 0xae

    const-string v11, "MatroskaExtractor"

    const/4 v12, -0x1

    if-eq v1, v4, :cond_11

    const/16 v2, 0x4dbb

    const-wide/16 v4, -0x1

    const v8, 0x1c53bb6b

    if-eq v1, v2, :cond_f

    const/16 v2, 0x6240

    if-eq v1, v2, :cond_d

    const/16 v2, 0x6d80

    if-eq v1, v2, :cond_b

    const v2, 0x1549a966

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v1, v2, :cond_9

    const v2, 0x1654ae6b

    if-eq v1, v2, :cond_7

    if-eq v1, v8, :cond_0

    goto/16 :goto_2a

    :cond_0
    iget-boolean v1, v0, Lyads/mx3;->v:Z

    if-nez v1, :cond_6

    iget-object v1, v0, Lyads/mx3;->C:Lyads/vv3;

    iget-object v2, v0, Lyads/mx3;->D:Lyads/vv3;

    iget-wide v8, v0, Lyads/mx3;->q:J

    cmp-long v4, v8, v4

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lyads/mx3;->t:J

    cmp-long v4, v4, v15

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    iget v4, v1, Lyads/vv3;->a:I

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    iget v5, v2, Lyads/vv3;->a:I

    if-eq v5, v4, :cond_2

    :cond_1
    const/16 v18, 0x1

    const-wide/16 v19, 0x0

    goto/16 :goto_2

    :cond_2
    new-array v5, v4, [I

    new-array v8, v4, [J

    new-array v9, v4, [J

    new-array v12, v4, [J

    move v15, v10

    :goto_0
    if-ge v15, v4, :cond_3

    invoke-virtual {v1, v15}, Lyads/vv3;->a(I)J

    move-result-wide v16

    aput-wide v16, v12, v15

    const/16 v18, 0x1

    iget-wide v13, v0, Lyads/mx3;->q:J

    invoke-virtual {v2, v15}, Lyads/vv3;->a(I)J

    move-result-wide v19

    add-long v19, v19, v13

    aput-wide v19, v8, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    const/16 v18, 0x1

    :goto_1
    add-int/lit8 v1, v4, -0x1

    if-ge v10, v1, :cond_4

    add-int/lit8 v1, v10, 0x1

    aget-wide v13, v8, v1

    aget-wide v15, v8, v10

    sub-long/2addr v13, v15

    long-to-int v2, v13

    aput v2, v5, v10

    aget-wide v13, v12, v1

    aget-wide v15, v12, v10

    sub-long/2addr v13, v15

    aput-wide v13, v9, v10

    move v10, v1

    goto :goto_1

    :cond_4
    iget-wide v13, v0, Lyads/mx3;->q:J

    const-wide/16 v19, 0x0

    iget-wide v6, v0, Lyads/mx3;->p:J

    add-long/2addr v13, v6

    aget-wide v6, v8, v1

    sub-long/2addr v13, v6

    long-to-int v2, v13

    aput v2, v5, v1

    iget-wide v6, v0, Lyads/mx3;->t:J

    aget-wide v13, v12, v1

    sub-long/2addr v6, v13

    aput-wide v6, v9, v1

    cmp-long v2, v6, v19

    if-gtz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Discarding last cue point with unexpected duration: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v8

    invoke-static {v9, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v12

    :cond_5
    new-instance v1, Lyads/gz;

    invoke-direct {v1, v5, v8, v9, v12}, Lyads/gz;-><init>([I[J[J[J)V

    goto :goto_3

    :goto_2
    new-instance v1, Lyads/rh5;

    iget-wide v4, v0, Lyads/mx3;->t:J

    move-wide/from16 v6, v19

    invoke-direct {v1, v4, v5, v6, v7}, Lyads/rh5;-><init>(JJ)V

    :goto_3
    invoke-interface {v3, v1}, Lyads/zs2;->a(Lyads/sh5;)V

    move/from16 v1, v18

    iput-boolean v1, v0, Lyads/mx3;->v:Z

    :cond_6
    const/4 v1, 0x0

    iput-object v1, v0, Lyads/mx3;->C:Lyads/vv3;

    iput-object v1, v0, Lyads/mx3;->D:Lyads/vv3;

    return-void

    :cond_7
    const/4 v1, 0x0

    iget-object v2, v0, Lyads/mx3;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, v0, Lyads/mx3;->b0:Lyads/zs2;

    invoke-interface {v0}, Lyads/zs2;->a()V

    return-void

    :cond_8
    const-string v0, "No valid tracks were found"

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_9
    iget-wide v1, v0, Lyads/mx3;->r:J

    cmp-long v1, v1, v15

    if-nez v1, :cond_a

    const-wide/32 v1, 0xf4240

    iput-wide v1, v0, Lyads/mx3;->r:J

    :cond_a
    iget-wide v1, v0, Lyads/mx3;->s:J

    cmp-long v3, v1, v15

    if-eqz v3, :cond_80

    invoke-virtual {v0, v1, v2}, Lyads/mx3;->a(J)J

    move-result-wide v1

    iput-wide v1, v0, Lyads/mx3;->t:J

    return-void

    :cond_b
    invoke-virtual/range {p0 .. p1}, Lyads/mx3;->a(I)V

    iget-object v0, v0, Lyads/mx3;->u:Lyads/lx3;

    iget-boolean v1, v0, Lyads/lx3;->h:Z

    if-eqz v1, :cond_80

    iget-object v0, v0, Lyads/lx3;->i:[B

    if-nez v0, :cond_c

    goto/16 :goto_2a

    :cond_c
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p1}, Lyads/mx3;->a(I)V

    iget-object v0, v0, Lyads/mx3;->u:Lyads/lx3;

    iget-boolean v1, v0, Lyads/lx3;->h:Z

    if-eqz v1, :cond_80

    iget-object v1, v0, Lyads/lx3;->j:Lyads/j06;

    if-eqz v1, :cond_e

    new-instance v2, Lyads/ql2;

    new-instance v3, Lyads/pl2;

    sget-object v4, Lyads/uv;->a:Ljava/util/UUID;

    const-string v5, "video/webm"

    iget-object v1, v1, Lyads/j06;->b:[B

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5, v1}, Lyads/pl2;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    filled-new-array {v3}, [Lyads/pl2;

    move-result-object v1

    const/4 v3, 0x1

    invoke-direct {v2, v6, v3, v1}, Lyads/ql2;-><init>(Ljava/lang/String;Z[Lyads/pl2;)V

    iput-object v2, v0, Lyads/lx3;->l:Lyads/ql2;

    return-void

    :cond_e
    const/4 v6, 0x0

    const-string v0, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v0, v6}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_f
    iget v1, v0, Lyads/mx3;->w:I

    if-eq v1, v12, :cond_10

    iget-wide v2, v0, Lyads/mx3;->x:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_10

    if-ne v1, v8, :cond_80

    iput-wide v2, v0, Lyads/mx3;->z:J

    return-void

    :cond_10
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_11
    iget-object v1, v0, Lyads/mx3;->u:Lyads/lx3;

    if-eqz v1, :cond_7e

    iget-object v4, v1, Lyads/lx3;->b:Ljava/lang/String;

    if-eqz v4, :cond_7d

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "A_MS/ACM"

    const-string v13, "V_MPEG4/ISO/SP"

    const-string v14, "V_MPEG4/ISO/AP"

    const/16 v15, 0x20

    const/16 v19, 0x13

    const/16 v20, 0x12

    const/16 v21, 0x11

    const/16 v22, 0x18

    const/16 v9, 0x10

    const/4 v12, 0x3

    sparse-switch v6, :sswitch_data_0

    :goto_4
    const/4 v6, -0x1

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto :goto_4

    :cond_12
    move v6, v15

    goto/16 :goto_5

    :sswitch_1
    const-string v6, "A_FLAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto :goto_4

    :cond_13
    const/16 v6, 0x1f

    goto/16 :goto_5

    :sswitch_2
    const-string v6, "A_EAC3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_4

    :cond_14
    const/16 v6, 0x1e

    goto/16 :goto_5

    :sswitch_3
    const-string v6, "V_MPEG2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto :goto_4

    :cond_15
    const/16 v6, 0x1d

    goto/16 :goto_5

    :sswitch_4
    const-string v6, "S_TEXT/UTF8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_4

    :cond_16
    const/16 v6, 0x1c

    goto/16 :goto_5

    :sswitch_5
    const-string v6, "S_TEXT/WEBVTT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_4

    :cond_17
    const/16 v6, 0x1b

    goto/16 :goto_5

    :sswitch_6
    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto :goto_4

    :cond_18
    const/16 v6, 0x1a

    goto/16 :goto_5

    :sswitch_7
    const-string v6, "S_TEXT/ASS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto :goto_4

    :cond_19
    const/16 v6, 0x19

    goto/16 :goto_5

    :sswitch_8
    const-string v6, "A_PCM/INT/LIT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto :goto_4

    :cond_1a
    move/from16 v6, v22

    goto/16 :goto_5

    :sswitch_9
    const-string v6, "A_PCM/INT/BIG"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto :goto_4

    :cond_1b
    const/16 v6, 0x17

    goto/16 :goto_5

    :sswitch_a
    const-string v6, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v6, 0x16

    goto/16 :goto_5

    :sswitch_b
    const-string v6, "A_DTS/EXPRESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v6, 0x15

    goto/16 :goto_5

    :sswitch_c
    const-string v6, "V_THEORA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto/16 :goto_4

    :cond_1e
    const/16 v6, 0x14

    goto/16 :goto_5

    :sswitch_d
    const-string v6, "S_HDMV/PGS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto/16 :goto_4

    :cond_1f
    move/from16 v6, v19

    goto/16 :goto_5

    :sswitch_e
    const-string v6, "V_VP9"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto/16 :goto_4

    :cond_20
    move/from16 v6, v20

    goto/16 :goto_5

    :sswitch_f
    const-string v6, "V_VP8"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_4

    :cond_21
    move/from16 v6, v21

    goto/16 :goto_5

    :sswitch_10
    const-string v6, "V_AV1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto/16 :goto_4

    :cond_22
    move v6, v9

    goto/16 :goto_5

    :sswitch_11
    const-string v6, "A_DTS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto/16 :goto_4

    :cond_23
    const/16 v6, 0xf

    goto/16 :goto_5

    :sswitch_12
    const-string v6, "A_AC3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    goto/16 :goto_4

    :cond_24
    const/16 v6, 0xe

    goto/16 :goto_5

    :sswitch_13
    const-string v6, "A_AAC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    goto/16 :goto_4

    :cond_25
    const/16 v6, 0xd

    goto/16 :goto_5

    :sswitch_14
    const-string v6, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto/16 :goto_4

    :cond_26
    const/16 v6, 0xc

    goto/16 :goto_5

    :sswitch_15
    const-string v6, "S_VOBSUB"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto/16 :goto_4

    :cond_27
    const/16 v6, 0xb

    goto/16 :goto_5

    :sswitch_16
    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto/16 :goto_4

    :cond_28
    const/16 v6, 0xa

    goto/16 :goto_5

    :sswitch_17
    const-string v6, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    goto/16 :goto_4

    :cond_29
    const/16 v6, 0x9

    goto/16 :goto_5

    :sswitch_18
    const-string v6, "S_DVBSUB"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    goto/16 :goto_4

    :cond_2a
    move v6, v8

    goto :goto_5

    :sswitch_19
    const-string v6, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2b

    goto/16 :goto_4

    :cond_2b
    const/4 v6, 0x7

    goto :goto_5

    :sswitch_1a
    const-string v6, "A_MPEG/L3"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2c

    goto/16 :goto_4

    :cond_2c
    const/4 v6, 0x6

    goto :goto_5

    :sswitch_1b
    const-string v6, "A_MPEG/L2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2d

    goto/16 :goto_4

    :cond_2d
    const/4 v6, 0x5

    goto :goto_5

    :sswitch_1c
    const-string v6, "A_VORBIS"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    goto/16 :goto_4

    :cond_2e
    const/4 v6, 0x4

    goto :goto_5

    :sswitch_1d
    const-string v6, "A_TRUEHD"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2f

    goto/16 :goto_4

    :cond_2f
    move v6, v12

    goto :goto_5

    :sswitch_1e
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    goto/16 :goto_4

    :cond_30
    const/4 v6, 0x2

    goto :goto_5

    :sswitch_1f
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    goto/16 :goto_4

    :cond_31
    const/4 v6, 0x1

    goto :goto_5

    :sswitch_20
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_32

    goto/16 :goto_4

    :cond_32
    move v6, v10

    :goto_5
    packed-switch v6, :pswitch_data_0

    :goto_6
    const/4 v1, 0x0

    goto/16 :goto_29

    :pswitch_0
    iget v6, v1, Lyads/lx3;->c:I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_1

    :goto_7
    const/4 v5, -0x1

    goto/16 :goto_8

    :sswitch_21
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_33

    goto :goto_7

    :cond_33
    move v5, v15

    goto/16 :goto_8

    :sswitch_22
    const-string v5, "A_FLAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    goto :goto_7

    :cond_34
    const/16 v5, 0x1f

    goto/16 :goto_8

    :sswitch_23
    const-string v5, "A_EAC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_7

    :cond_35
    const/16 v5, 0x1e

    goto/16 :goto_8

    :sswitch_24
    const-string v5, "V_MPEG2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_36

    goto :goto_7

    :cond_36
    const/16 v5, 0x1d

    goto/16 :goto_8

    :sswitch_25
    const-string v5, "S_TEXT/UTF8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_7

    :cond_37
    const/16 v5, 0x1c

    goto/16 :goto_8

    :sswitch_26
    const-string v5, "S_TEXT/WEBVTT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    goto :goto_7

    :cond_38
    const/16 v5, 0x1b

    goto/16 :goto_8

    :sswitch_27
    const-string v5, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_7

    :cond_39
    const/16 v5, 0x1a

    goto/16 :goto_8

    :sswitch_28
    const-string v5, "S_TEXT/ASS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    goto :goto_7

    :cond_3a
    const/16 v5, 0x19

    goto/16 :goto_8

    :sswitch_29
    const-string v5, "A_PCM/INT/LIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    goto :goto_7

    :cond_3b
    move/from16 v5, v22

    goto/16 :goto_8

    :sswitch_2a
    const-string v5, "A_PCM/INT/BIG"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3c

    goto :goto_7

    :cond_3c
    const/16 v5, 0x17

    goto/16 :goto_8

    :sswitch_2b
    const-string v5, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    goto/16 :goto_7

    :cond_3d
    const/16 v5, 0x16

    goto/16 :goto_8

    :sswitch_2c
    const-string v5, "A_DTS/EXPRESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    goto/16 :goto_7

    :cond_3e
    const/16 v5, 0x15

    goto/16 :goto_8

    :sswitch_2d
    const-string v5, "V_THEORA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    goto/16 :goto_7

    :cond_3f
    const/16 v5, 0x14

    goto/16 :goto_8

    :sswitch_2e
    const-string v5, "S_HDMV/PGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    goto/16 :goto_7

    :cond_40
    move/from16 v5, v19

    goto/16 :goto_8

    :sswitch_2f
    const-string v5, "V_VP9"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_41

    goto/16 :goto_7

    :cond_41
    move/from16 v5, v20

    goto/16 :goto_8

    :sswitch_30
    const-string v5, "V_VP8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    goto/16 :goto_7

    :cond_42
    move/from16 v5, v21

    goto/16 :goto_8

    :sswitch_31
    const-string v5, "V_AV1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    goto/16 :goto_7

    :cond_43
    move v5, v9

    goto/16 :goto_8

    :sswitch_32
    const-string v5, "A_DTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    goto/16 :goto_7

    :cond_44
    const/16 v5, 0xf

    goto/16 :goto_8

    :sswitch_33
    const-string v5, "A_AC3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    goto/16 :goto_7

    :cond_45
    const/16 v5, 0xe

    goto/16 :goto_8

    :sswitch_34
    const-string v5, "A_AAC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    goto/16 :goto_7

    :cond_46
    const/16 v5, 0xd

    goto/16 :goto_8

    :sswitch_35
    const-string v5, "A_DTS/LOSSLESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_47

    goto/16 :goto_7

    :cond_47
    const/16 v5, 0xc

    goto/16 :goto_8

    :sswitch_36
    const-string v5, "S_VOBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    goto/16 :goto_7

    :cond_48
    const/16 v5, 0xb

    goto/16 :goto_8

    :sswitch_37
    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto/16 :goto_7

    :cond_49
    const/16 v5, 0xa

    goto/16 :goto_8

    :sswitch_38
    const-string v5, "V_MPEG4/ISO/ASP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto/16 :goto_7

    :cond_4a
    const/16 v5, 0x9

    goto/16 :goto_8

    :sswitch_39
    const-string v5, "S_DVBSUB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    goto/16 :goto_7

    :cond_4b
    move v5, v8

    goto :goto_8

    :sswitch_3a
    const-string v5, "V_MS/VFW/FOURCC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    goto/16 :goto_7

    :cond_4c
    const/4 v5, 0x7

    goto :goto_8

    :sswitch_3b
    const-string v5, "A_MPEG/L3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    goto/16 :goto_7

    :cond_4d
    const/4 v5, 0x6

    goto :goto_8

    :sswitch_3c
    const-string v5, "A_MPEG/L2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    goto/16 :goto_7

    :cond_4e
    const/4 v5, 0x5

    goto :goto_8

    :sswitch_3d
    const-string v5, "A_VORBIS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    goto/16 :goto_7

    :cond_4f
    const/4 v5, 0x4

    goto :goto_8

    :sswitch_3e
    const-string v5, "A_TRUEHD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    goto/16 :goto_7

    :cond_50
    move v5, v12

    goto :goto_8

    :sswitch_3f
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    goto/16 :goto_7

    :cond_51
    const/4 v5, 0x2

    goto :goto_8

    :sswitch_40
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    goto/16 :goto_7

    :cond_52
    const/4 v5, 0x1

    goto :goto_8

    :sswitch_41
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    goto/16 :goto_7

    :cond_53
    move v5, v10

    :goto_8
    const-string v7, ". Setting mimeType to audio/x-unknown"

    const-string v13, "audio/raw"

    const-string v14, "audio/x-unknown"

    packed-switch v5, :pswitch_data_1

    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v12}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v1, Lyads/lx3;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v13, v1, Lyads/lx3;->R:J

    invoke-virtual {v4, v13, v14}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v7, v1, Lyads/lx3;->S:J

    invoke-virtual {v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v13, "audio/opus"

    const/16 v4, 0x1680

    :goto_9
    const/4 v5, 0x1

    :goto_a
    const/4 v7, -0x1

    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_1d

    :pswitch_2
    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v13, "audio/flac"

    :goto_c
    const/4 v4, -0x1

    goto :goto_9

    :pswitch_3
    const-string v13, "audio/eac3"

    :goto_d
    const/4 v2, 0x0

    goto :goto_c

    :pswitch_4
    const-string v13, "video/mpeg2"

    goto :goto_d

    :pswitch_5
    const-string v13, "application/x-subrip"

    goto :goto_d

    :pswitch_6
    const-string v13, "text/vtt"

    goto :goto_d

    :pswitch_7
    new-instance v2, Lyads/os4;

    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lyads/os4;-><init>([B)V

    invoke-static {v2}, Lyads/b93;->a(Lyads/os4;)Lyads/b93;

    move-result-object v2

    iget-object v4, v2, Lyads/b93;->a:Ljava/util/List;

    iget v5, v2, Lyads/b93;->b:I

    iput v5, v1, Lyads/lx3;->Y:I

    iget-object v2, v2, Lyads/b93;->d:Ljava/lang/String;

    const-string v13, "video/hevc"

    :goto_e
    move-object v8, v2

    move-object v2, v4

    :goto_f
    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v7, -0x1

    goto/16 :goto_1d

    :pswitch_8
    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v4, Lyads/mx3;->d0:[B

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v2

    const-string v13, "text/x-ssa"

    goto :goto_c

    :pswitch_9
    iget v2, v1, Lyads/lx3;->P:I

    invoke-static {v2}, Lyads/u56;->b(I)I

    move-result v2

    if-nez v2, :cond_54

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported little endian PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lyads/lx3;->P:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    move-object v13, v14

    goto :goto_d

    :cond_54
    :goto_11
    move v7, v2

    :goto_12
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    goto :goto_b

    :pswitch_a
    iget v2, v1, Lyads/lx3;->P:I

    if-ne v2, v8, :cond_55

    move v7, v12

    goto :goto_12

    :cond_55
    if-ne v2, v9, :cond_56

    const/high16 v2, 0x10000000

    goto :goto_11

    :cond_56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported big endian PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lyads/lx3;->P:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :pswitch_b
    iget v2, v1, Lyads/lx3;->P:I

    if-ne v2, v15, :cond_57

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v7, 0x4

    goto/16 :goto_b

    :cond_57
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported floating point PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lyads/lx3;->P:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    :pswitch_c
    const-string v13, "video/x-unknown"

    goto/16 :goto_d

    :pswitch_d
    const-string v13, "application/pgs"

    goto/16 :goto_d

    :pswitch_e
    const-string v13, "video/x-vnd.on2.vp9"

    goto/16 :goto_d

    :pswitch_f
    const-string v13, "video/x-vnd.on2.vp8"

    goto/16 :goto_d

    :pswitch_10
    const-string v13, "video/av01"

    goto/16 :goto_d

    :pswitch_11
    const-string v13, "audio/vnd.dts"

    goto/16 :goto_d

    :pswitch_12
    const-string v13, "audio/ac3"

    goto/16 :goto_d

    :pswitch_13
    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lyads/lx3;->k:[B

    new-instance v5, Lyads/ns4;

    invoke-direct {v5, v4}, Lyads/ns4;-><init>([B)V

    invoke-static {v5, v10}, Lyads/b;->a(Lyads/ns4;Z)Lyads/a;

    move-result-object v4

    iget v5, v4, Lyads/a;->a:I

    iput v5, v1, Lyads/lx3;->Q:I

    iget v5, v4, Lyads/a;->b:I

    iput v5, v1, Lyads/lx3;->O:I

    iget-object v4, v4, Lyads/a;->c:Ljava/lang/String;

    const-string v13, "audio/mp4a-latm"

    move-object v8, v4

    goto/16 :goto_f

    :pswitch_14
    const-string v13, "audio/vnd.dts.hd"

    goto/16 :goto_d

    :pswitch_15
    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v2

    const-string v13, "application/vobsub"

    goto/16 :goto_c

    :pswitch_16
    new-instance v2, Lyads/os4;

    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lyads/os4;-><init>([B)V

    invoke-static {v2}, Lyads/dn;->a(Lyads/os4;)Lyads/dn;

    move-result-object v2

    iget-object v4, v2, Lyads/dn;->a:Ljava/util/ArrayList;

    iget v5, v2, Lyads/dn;->b:I

    iput v5, v1, Lyads/lx3;->Y:I

    iget-object v2, v2, Lyads/dn;->f:Ljava/lang/String;

    const-string v13, "video/avc"

    goto/16 :goto_e

    :pswitch_17
    const/4 v2, 0x4

    new-array v5, v2, [B

    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4, v10, v5, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lyads/oe3;->a([Ljava/lang/Object;)Lyads/k55;

    move-result-object v2

    const-string v13, "application/dvbsubs"

    goto/16 :goto_c

    :pswitch_18
    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v2

    if-gt v9, v4, :cond_5e

    :try_start_0
    aget-byte v4, v2, v9

    int-to-long v4, v4

    const-wide/16 v13, 0xff

    and-long/2addr v4, v13

    aget-byte v7, v2, v21

    move/from16 v21, v8

    move v15, v9

    int-to-long v8, v7

    and-long v7, v8, v13

    shl-long v7, v7, v21

    or-long/2addr v4, v7

    aget-byte v7, v2, v20

    int-to-long v7, v7

    and-long/2addr v7, v13

    shl-long/2addr v7, v15

    or-long/2addr v4, v7

    aget-byte v7, v2, v19

    int-to-long v7, v7

    and-long/2addr v7, v13

    shl-long v7, v7, v22

    or-long/2addr v4, v7

    const-wide/32 v7, 0x58564944

    cmp-long v7, v4, v7

    if-nez v7, :cond_58

    new-instance v2, Landroid/util/Pair;

    const-string v4, "video/divx"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_58
    const-wide/32 v7, 0x33363248

    cmp-long v7, v4, v7

    if-nez v7, :cond_59

    new-instance v2, Landroid/util/Pair;

    const-string v4, "video/3gpp"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_59
    const-wide/32 v7, 0x31435657

    cmp-long v4, v4, v7

    if-nez v4, :cond_5d

    const/16 v4, 0x28

    :goto_13
    array-length v5, v2

    const/16 v23, 0x4

    add-int/lit8 v5, v5, -0x4

    if-ge v4, v5, :cond_5c

    aget-byte v5, v2, v4

    if-nez v5, :cond_5a

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v2, v5

    if-nez v5, :cond_5a

    add-int/lit8 v5, v4, 0x2

    aget-byte v5, v2, v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_5a

    add-int/lit8 v5, v4, 0x3

    aget-byte v5, v2, v5

    const/16 v7, 0xf

    if-ne v5, v7, :cond_5b

    array-length v5, v2

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    new-instance v4, Landroid/util/Pair;

    const-string v5, "video/wvc1"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    goto :goto_14

    :cond_5a
    const/16 v7, 0xf

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_5c
    const-string v0, "Failed to find FourCC VC1 initialization data"

    new-instance v1, Lyads/xs4;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, v3, v3}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5d
    const-string v2, "Unknown FourCC. Setting mimeType to video/x-unknown"

    invoke-static {v11, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/util/Pair;

    const-string v4, "video/x-unknown"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    goto/16 :goto_c

    :cond_5e
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const-string v0, "Error parsing FourCC private data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :pswitch_19
    const-string v13, "audio/mpeg"

    :goto_15
    const/16 v4, 0x1000

    const/4 v2, 0x0

    goto/16 :goto_9

    :pswitch_1a
    const-string v13, "audio/mpeg-L2"

    goto :goto_15

    :pswitch_1b
    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v4

    :try_start_2
    aget-byte v5, v4, v10

    const/4 v7, 0x2

    if-ne v5, v7, :cond_64

    move v7, v10

    const/4 v5, 0x1

    :goto_16
    aget-byte v8, v4, v5

    const/16 v9, 0xff

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_5f

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_5f
    const/16 v18, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v7, v8

    move v8, v10

    :goto_17
    aget-byte v11, v4, v5

    and-int/2addr v11, v9

    if-ne v11, v9, :cond_60

    add-int/lit16 v8, v8, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_60
    const/4 v13, 0x1

    add-int/2addr v5, v13

    add-int/2addr v8, v11

    aget-byte v9, v4, v5

    if-ne v9, v13, :cond_63

    new-array v9, v7, [B

    invoke-static {v4, v5, v9, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    aget-byte v7, v4, v5

    if-ne v7, v12, :cond_62

    add-int/2addr v5, v8

    aget-byte v7, v4, v5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_61

    array-length v7, v4

    sub-int/2addr v7, v5

    new-array v7, v7, [B

    array-length v8, v4

    sub-int/2addr v8, v5

    invoke-static {v4, v5, v7, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v13, "audio/vorbis"

    const/16 v2, 0x2000

    move-object v5, v4

    move v4, v2

    move-object v2, v5

    goto/16 :goto_9

    :catch_1
    const/4 v1, 0x0

    goto :goto_18

    :cond_61
    :try_start_3
    new-instance v0, Lyads/xs4;
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_4
    invoke-direct {v0, v2, v1, v3, v3}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_62
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v2, v1, v3, v3}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_63
    move v3, v13

    const/4 v1, 0x0

    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v2, v1, v3, v3}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0

    :cond_64
    const/4 v1, 0x0

    const/4 v3, 0x1

    new-instance v0, Lyads/xs4;

    invoke-direct {v0, v2, v1, v3, v3}, Lyads/xs4;-><init>(Ljava/lang/String;Ljava/lang/Exception;ZI)V

    throw v0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_18
    invoke-static {v2, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :pswitch_1c
    new-instance v2, Lyads/j26;

    invoke-direct {v2}, Lyads/j26;-><init>()V

    iput-object v2, v1, Lyads/lx3;->T:Lyads/j26;

    const-string v13, "audio/true-hd"

    goto/16 :goto_d

    :pswitch_1d
    new-instance v2, Lyads/os4;

    invoke-virtual {v1, v4}, Lyads/lx3;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Lyads/os4;-><init>([B)V

    :try_start_5
    invoke-virtual {v2}, Lyads/os4;->f()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_65

    goto :goto_19

    :cond_65
    const v8, 0xfffe

    if-ne v4, v8, :cond_67

    move/from16 v4, v22

    invoke-virtual {v2, v4}, Lyads/os4;->e(I)V

    invoke-virtual {v2}, Lyads/os4;->g()J

    move-result-wide v8

    sget-object v4, Lyads/mx3;->g0:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v18

    cmp-long v8, v8, v18

    if-nez v8, :cond_67

    invoke-virtual {v2}, Lyads/os4;->g()J

    move-result-wide v8

    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v18
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    cmp-long v2, v8, v18

    if-nez v2, :cond_67

    :goto_19
    iget v2, v1, Lyads/lx3;->P:I

    invoke-static {v2}, Lyads/u56;->b(I)I

    move-result v2

    if-nez v2, :cond_66

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported PCM bit depth: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lyads/lx3;->P:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    move-object v13, v14

    :goto_1b
    const/4 v2, 0x0

    :goto_1c
    const/4 v4, -0x1

    goto/16 :goto_a

    :cond_66
    move v7, v2

    const/4 v2, 0x0

    const/4 v4, -0x1

    goto/16 :goto_b

    :cond_67
    const-string v2, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    invoke-static {v11, v2}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :catch_3
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :pswitch_1e
    const/4 v5, 0x1

    iget-object v2, v1, Lyads/lx3;->k:[B

    const-string v13, "video/mp4v-es"

    if-nez v2, :cond_68

    goto :goto_1b

    :cond_68
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1c

    :goto_1d
    iget-object v9, v1, Lyads/lx3;->N:[B

    if-eqz v9, :cond_69

    new-instance v11, Lyads/os4;

    invoke-direct {v11, v9}, Lyads/os4;-><init>([B)V

    invoke-static {v11}, Lyads/rj2;->a(Lyads/os4;)Lyads/rj2;

    move-result-object v9

    if-eqz v9, :cond_69

    iget-object v8, v9, Lyads/rj2;->a:Ljava/lang/String;

    const-string v13, "video/dolby-vision"

    :cond_69
    iget-boolean v9, v1, Lyads/lx3;->V:Z

    iget-boolean v11, v1, Lyads/lx3;->U:Z

    if-eqz v11, :cond_6a

    const/4 v11, 0x2

    goto :goto_1e

    :cond_6a
    move v11, v10

    :goto_1e
    or-int/2addr v9, v11

    new-instance v11, Lyads/uz2;

    invoke-direct {v11}, Lyads/uz2;-><init>()V

    invoke-static {v13}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "audio"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6b

    iget v10, v1, Lyads/lx3;->O:I

    iput v10, v11, Lyads/uz2;->x:I

    iget v10, v1, Lyads/lx3;->Q:I

    iput v10, v11, Lyads/uz2;->y:I

    iput v7, v11, Lyads/uz2;->z:I

    goto/16 :goto_28

    :cond_6b
    invoke-static {v13}, Lyads/z84;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "video"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    iget v5, v1, Lyads/lx3;->q:I

    if-nez v5, :cond_6e

    iget v5, v1, Lyads/lx3;->o:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_6c

    iget v5, v1, Lyads/lx3;->m:I

    :cond_6c
    iput v5, v1, Lyads/lx3;->o:I

    iget v5, v1, Lyads/lx3;->p:I

    if-ne v5, v7, :cond_6d

    iget v5, v1, Lyads/lx3;->n:I

    :cond_6d
    iput v5, v1, Lyads/lx3;->p:I

    goto :goto_1f

    :cond_6e
    const/4 v7, -0x1

    :goto_1f
    iget v5, v1, Lyads/lx3;->o:I

    const/high16 v12, -0x40800000    # -1.0f

    if-eq v5, v7, :cond_6f

    iget v14, v1, Lyads/lx3;->p:I

    if-eq v14, v7, :cond_6f

    iget v15, v1, Lyads/lx3;->n:I

    mul-int/2addr v15, v5

    int-to-float v5, v15

    iget v15, v1, Lyads/lx3;->m:I

    mul-int/2addr v15, v14

    int-to-float v14, v15

    div-float/2addr v5, v14

    goto :goto_20

    :cond_6f
    move v5, v12

    :goto_20
    iget-boolean v14, v1, Lyads/lx3;->x:Z

    if-eqz v14, :cond_72

    iget v14, v1, Lyads/lx3;->D:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->E:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->F:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->G:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->H:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->I:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->J:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->K:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->L:F

    cmpl-float v14, v14, v12

    if-eqz v14, :cond_71

    iget v14, v1, Lyads/lx3;->M:F

    cmpl-float v12, v14, v12

    if-nez v12, :cond_70

    goto/16 :goto_21

    :cond_70
    const/16 v12, 0x19

    new-array v12, v12, [B

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v14

    sget-object v15, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->D:F

    const v16, 0x47435000    # 50000.0f

    mul-float v15, v15, v16

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->E:F

    mul-float v15, v15, v16

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->F:F

    mul-float v15, v15, v16

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->G:F

    mul-float v15, v15, v16

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->H:F

    mul-float v15, v15, v16

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->I:F

    mul-float v15, v15, v16

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->J:F

    mul-float v15, v15, v16

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->K:F

    mul-float v15, v15, v16

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->L:F

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->M:F

    add-float v15, v15, v18

    float-to-int v15, v15

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->B:I

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v15, v1, Lyads/lx3;->C:I

    int-to-short v15, v15

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_22

    :cond_71
    :goto_21
    const/4 v12, 0x0

    :goto_22
    new-instance v14, Lyads/x20;

    iget v15, v1, Lyads/lx3;->y:I

    iget v7, v1, Lyads/lx3;->A:I

    iget v10, v1, Lyads/lx3;->z:I

    invoke-direct {v14, v15, v7, v10, v12}, Lyads/x20;-><init>(III[B)V

    goto :goto_23

    :cond_72
    const/4 v14, 0x0

    :goto_23
    iget-object v7, v1, Lyads/lx3;->a:Ljava/lang/String;

    if-eqz v7, :cond_73

    sget-object v10, Lyads/mx3;->h0:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    iget-object v7, v1, Lyads/lx3;->a:Ljava/lang/String;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_24

    :cond_73
    const/4 v12, -0x1

    :goto_24
    iget v7, v1, Lyads/lx3;->r:I

    if-nez v7, :cond_78

    iget v7, v1, Lyads/lx3;->s:F

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_78

    iget v7, v1, Lyads/lx3;->t:F

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_78

    iget v7, v1, Lyads/lx3;->u:F

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_74

    const/4 v10, 0x0

    goto :goto_26

    :cond_74
    iget v7, v1, Lyads/lx3;->t:F

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_75

    const/16 v10, 0x5a

    goto :goto_26

    :cond_75
    iget v7, v1, Lyads/lx3;->t:F

    const/high16 v10, -0x3ccc0000    # -180.0f

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_77

    iget v7, v1, Lyads/lx3;->t:F

    const/high16 v10, 0x43340000    # 180.0f

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_76

    goto :goto_25

    :cond_76
    iget v7, v1, Lyads/lx3;->t:F

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-static {v7, v10}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-nez v7, :cond_78

    const/16 v10, 0x10e

    goto :goto_26

    :cond_77
    :goto_25
    const/16 v10, 0xb4

    goto :goto_26

    :cond_78
    move v10, v12

    :goto_26
    iget v7, v1, Lyads/lx3;->m:I

    iput v7, v11, Lyads/uz2;->p:I

    iget v7, v1, Lyads/lx3;->n:I

    iput v7, v11, Lyads/uz2;->q:I

    iput v5, v11, Lyads/uz2;->t:F

    iput v10, v11, Lyads/uz2;->s:I

    iget-object v5, v1, Lyads/lx3;->v:[B

    iput-object v5, v11, Lyads/uz2;->u:[B

    iget v5, v1, Lyads/lx3;->w:I

    iput v5, v11, Lyads/uz2;->v:I

    iput-object v14, v11, Lyads/uz2;->w:Lyads/x20;

    const/4 v5, 0x2

    goto :goto_28

    :cond_79
    const-string v5, "application/x-subrip"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "text/x-ssa"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "text/vtt"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "application/vobsub"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "application/pgs"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7b

    const-string v5, "application/dvbsubs"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7a

    goto :goto_27

    :cond_7a
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_7b
    :goto_27
    move v5, v12

    :goto_28
    iget-object v7, v1, Lyads/lx3;->a:Ljava/lang/String;

    if-eqz v7, :cond_7c

    sget-object v10, Lyads/mx3;->h0:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7c

    iget-object v7, v1, Lyads/lx3;->a:Ljava/lang/String;

    iput-object v7, v11, Lyads/uz2;->b:Ljava/lang/String;

    :cond_7c
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v11, Lyads/uz2;->a:Ljava/lang/String;

    iput-object v13, v11, Lyads/uz2;->k:Ljava/lang/String;

    iput v4, v11, Lyads/uz2;->l:I

    iget-object v4, v1, Lyads/lx3;->W:Ljava/lang/String;

    iput-object v4, v11, Lyads/uz2;->c:Ljava/lang/String;

    iput v9, v11, Lyads/uz2;->d:I

    iput-object v2, v11, Lyads/uz2;->m:Ljava/util/List;

    iput-object v8, v11, Lyads/uz2;->h:Ljava/lang/String;

    iget-object v2, v1, Lyads/lx3;->l:Lyads/ql2;

    iput-object v2, v11, Lyads/uz2;->n:Lyads/ql2;

    new-instance v2, Lyads/vz2;

    invoke-direct {v2, v11}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iget v4, v1, Lyads/lx3;->c:I

    invoke-interface {v3, v4, v5}, Lyads/zs2;->a(II)Lyads/k06;

    move-result-object v3

    iput-object v3, v1, Lyads/lx3;->X:Lyads/k06;

    invoke-interface {v3, v2}, Lyads/k06;->a(Lyads/vz2;)V

    iget-object v2, v0, Lyads/mx3;->c:Landroid/util/SparseArray;

    iget v3, v1, Lyads/lx3;->c:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_6

    :goto_29
    iput-object v1, v0, Lyads/mx3;->u:Lyads/lx3;

    return-void

    :cond_7d
    const/4 v1, 0x0

    const-string v0, "CodecId is missing in TrackEntry element"

    invoke-static {v0, v1}, Le2;->h(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_7e
    invoke-static {}, Lud;->g()V

    return-void

    :cond_7f
    move/from16 v21, v8

    iget v1, v0, Lyads/mx3;->G:I

    const/4 v7, 0x2

    if-eq v1, v7, :cond_81

    :cond_80
    :goto_2a
    return-void

    :cond_81
    iget-object v1, v0, Lyads/mx3;->c:Landroid/util/SparseArray;

    iget v2, v0, Lyads/mx3;->M:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyads/lx3;

    iget-object v2, v1, Lyads/lx3;->X:Lyads/k06;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v0, Lyads/mx3;->R:J

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-lez v2, :cond_82

    iget-object v2, v1, Lyads/lx3;->b:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    iget-object v2, v0, Lyads/mx3;->n:Lyads/os4;

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v0, Lyads/mx3;->R:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lyads/os4;->a([B)V

    :cond_82
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2b
    iget v4, v0, Lyads/mx3;->K:I

    if-ge v2, v4, :cond_83

    iget-object v4, v0, Lyads/mx3;->L:[I

    aget v4, v4, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_83
    const/4 v7, 0x0

    :goto_2c
    iget v2, v0, Lyads/mx3;->K:I

    if-ge v7, v2, :cond_85

    iget-wide v4, v0, Lyads/mx3;->H:J

    iget v2, v1, Lyads/lx3;->e:I

    mul-int/2addr v2, v7

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v8, v2

    add-long/2addr v4, v8

    iget v2, v0, Lyads/mx3;->O:I

    if-nez v7, :cond_84

    iget-boolean v6, v0, Lyads/mx3;->Q:Z

    if-nez v6, :cond_84

    or-int/lit8 v2, v2, 0x1

    :cond_84
    iget-object v6, v0, Lyads/mx3;->L:[I

    aget v6, v6, v7

    sub-int/2addr v3, v6

    move-wide/from16 v25, v4

    move v4, v2

    move v5, v6

    move v6, v3

    move-wide/from16 v2, v25

    invoke-virtual/range {v0 .. v6}, Lyads/mx3;->a(Lyads/lx3;JIII)V

    add-int/lit8 v7, v7, 0x1

    move v3, v6

    goto :goto_2c

    :cond_85
    const/4 v2, 0x0

    iput v2, v0, Lyads/mx3;->G:I

    return-void

    :cond_86
    invoke-static {}, Lud;->g()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_41
        -0x7ce7f3b0 -> :sswitch_40
        -0x76567dc0 -> :sswitch_3f
        -0x6a615338 -> :sswitch_3e
        -0x672350af -> :sswitch_3d
        -0x585f4fce -> :sswitch_3c
        -0x585f4fcd -> :sswitch_3b
        -0x51dc40b2 -> :sswitch_3a
        -0x37a9c464 -> :sswitch_39
        -0x2016c535 -> :sswitch_38
        -0x2016c4e5 -> :sswitch_37
        -0x19552dbd -> :sswitch_36
        -0x1538b2ba -> :sswitch_35
        0x3c02325 -> :sswitch_34
        0x3c02353 -> :sswitch_33
        0x3c030c5 -> :sswitch_32
        0x4e81333 -> :sswitch_31
        0x4e86155 -> :sswitch_30
        0x4e86156 -> :sswitch_2f
        0x5e8da3e -> :sswitch_2e
        0x1a8350d6 -> :sswitch_2d
        0x2056f406 -> :sswitch_2c
        0x25e26ee2 -> :sswitch_2b
        0x2b45174d -> :sswitch_2a
        0x2b453ce4 -> :sswitch_29
        0x2c0618eb -> :sswitch_28
        0x32fdf009 -> :sswitch_27
        0x3e4ca2d8 -> :sswitch_26
        0x54c61e47 -> :sswitch_25
        0x6bd6c624 -> :sswitch_24
        0x7446132a -> :sswitch_23
        0x7446b0a6 -> :sswitch_22
        0x744ad97d -> :sswitch_21
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    return-void
.end method
