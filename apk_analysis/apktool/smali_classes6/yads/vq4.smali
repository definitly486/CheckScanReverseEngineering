.class public final Lyads/vq4;
.super Lyads/fs5;
.source "SourceFile"


# static fields
.field public static final o:[B

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lyads/vq4;->o:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lyads/vq4;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/fs5;-><init>()V

    return-void
.end method

.method public static a(Lyads/os4;[B)Z
    .locals 4

    .line 164
    iget v0, p0, Lyads/os4;->c:I

    .line 165
    iget v1, p0, Lyads/os4;->b:I

    sub-int/2addr v0, v1

    .line 166
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    .line 167
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 168
    array-length v2, p1

    invoke-virtual {p0, v0, v3, v2}, Lyads/os4;->a([BII)V

    .line 169
    invoke-virtual {p0, v1}, Lyads/os4;->e(I)V

    .line 170
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lyads/os4;)J
    .locals 6

    .line 171
    iget-object p1, p1, Lyads/os4;->a:[B

    const/4 v0, 0x0

    .line 172
    aget-byte v0, p1, v0

    and-int/lit16 v1, v0, 0xff

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x2

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    .line 173
    aget-byte p1, p1, v3

    and-int/lit8 v4, p1, 0x3f

    goto :goto_0

    :cond_0
    move v4, v3

    :cond_1
    :goto_0
    shr-int/lit8 p1, v1, 0x3

    and-int/lit8 v0, p1, 0x3

    const/16 v1, 0x10

    if-lt p1, v1, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xc

    const/16 v5, 0x2710

    if-lt p1, v1, :cond_3

    and-int/2addr p1, v3

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v0

    :goto_1
    int-to-long v0, v4

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 174
    iget p0, p0, Lyads/fs5;->i:I

    int-to-long p0, p0

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public final a(Z)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Lyads/fs5;->a(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lyads/vq4;->n:Z

    :cond_0
    return-void
.end method

.method public final a(Lyads/os4;JLyads/ds5;)Z
    .locals 1

    sget-object p2, Lyads/vq4;->o:[B

    invoke-static {p1, p2}, Lyads/vq4;->a(Lyads/os4;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    iget-object p0, p1, Lyads/os4;->a:[B

    iget p1, p1, Lyads/os4;->c:I

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/16 p1, 0x9

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0}, Lyads/wq4;->a([B)Ljava/util/ArrayList;

    move-result-object p0

    iget-object p2, p4, Lyads/ds5;->a:Lyads/vz2;

    if-eqz p2, :cond_0

    return p3

    :cond_0
    new-instance p2, Lyads/uz2;

    invoke-direct {p2}, Lyads/uz2;-><init>()V

    const-string v0, "audio/opus"

    iput-object v0, p2, Lyads/uz2;->k:Ljava/lang/String;

    iput p1, p2, Lyads/uz2;->x:I

    const p1, 0xbb80

    iput p1, p2, Lyads/uz2;->y:I

    iput-object p0, p2, Lyads/uz2;->m:Ljava/util/List;

    new-instance p0, Lyads/vz2;

    invoke-direct {p0, p2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object p0, p4, Lyads/ds5;->a:Lyads/vz2;

    return p3

    :cond_1
    sget-object p2, Lyads/vq4;->p:[B

    invoke-static {p1, p2}, Lyads/vq4;->a(Lyads/os4;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    iget-object p2, p4, Lyads/ds5;->a:Lyads/vz2;

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lyads/vq4;->n:Z

    if-eqz p2, :cond_2

    return p3

    :cond_2
    iput-boolean p3, p0, Lyads/vq4;->n:Z

    iget p0, p1, Lyads/os4;->b:I

    add-int/lit8 p0, p0, 0x8

    invoke-virtual {p1, p0}, Lyads/os4;->e(I)V

    invoke-static {p1, v0, v0}, Lyads/dj6;->a(Lyads/os4;ZZ)Lyads/aj6;

    move-result-object p0

    iget-object p0, p0, Lyads/aj6;->a:[Ljava/lang/String;

    invoke-static {p0}, Lyads/oe3;->b([Ljava/lang/Object;)Lyads/k55;

    move-result-object p0

    invoke-static {p0}, Lyads/dj6;->a(Ljava/util/List;)Lyads/h84;

    move-result-object p0

    if-nez p0, :cond_3

    return p3

    :cond_3
    iget-object p1, p4, Lyads/ds5;->a:Lyads/vz2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lyads/uz2;

    invoke-direct {p2, p1}, Lyads/uz2;-><init>(Lyads/vz2;)V

    iget-object p1, p4, Lyads/ds5;->a:Lyads/vz2;

    iget-object p1, p1, Lyads/vz2;->k:Lyads/h84;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lyads/h84;->b:[Lyads/g84;

    array-length v0, p1

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    new-instance v0, Lyads/h84;

    iget-object p0, p0, Lyads/h84;->b:[Lyads/g84;

    invoke-static {p0, p1}, Lyads/u56;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lyads/g84;

    invoke-direct {v0, p0}, Lyads/h84;-><init>([Lyads/g84;)V

    move-object p0, v0

    :goto_0
    iput-object p0, p2, Lyads/uz2;->i:Lyads/h84;

    new-instance p0, Lyads/vz2;

    invoke-direct {p0, p2}, Lyads/vz2;-><init>(Lyads/uz2;)V

    iput-object p0, p4, Lyads/ds5;->a:Lyads/vz2;

    return p3

    :cond_6
    invoke-static {}, Lud;->g()V

    return v0

    :cond_7
    iget-object p0, p4, Lyads/ds5;->a:Lyads/vz2;

    if-eqz p0, :cond_8

    return v0

    :cond_8
    invoke-static {}, Lud;->g()V

    return v0
.end method
