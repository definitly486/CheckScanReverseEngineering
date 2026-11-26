.class public final Lwmb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lpmb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lqlb;->e:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lqlb;->d:Z

    if-eqz v0, :cond_0

    sget v0, Lx1b;->a:I

    :cond_0
    new-instance v0, Lpmb;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lwmb;->a:Lpmb;

    return-void
.end method

.method public static a([BII)I
    .locals 5

    sub-int/2addr p2, p1

    add-int/lit8 v0, p1, -0x1

    aget-byte v0, p0, v0

    const/16 v1, -0xc

    const/4 v2, -0x1

    if-eqz p2, :cond_4

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v4, 0x2

    if-ne p2, v4, :cond_2

    aget-byte p2, p0, p1

    add-int/2addr p1, v3

    aget-byte p0, p0, p1

    if-gt v0, v1, :cond_1

    const/16 p1, -0x41

    if-gt p2, p1, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p2, 0x8

    shl-int/lit8 p0, p0, 0x10

    xor-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-static {}, Lxp;->g()V

    const/4 p0, 0x0

    return p0

    :cond_3
    aget-byte p0, p0, p1

    invoke-static {v0, p0}, Lwmb;->d(II)I

    move-result p0

    return p0

    :cond_4
    if-le v0, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public static b(Ljava/lang/String;[BII)I
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int v3, p2, p3

    const/16 v4, 0x80

    if-ge v2, v0, :cond_0

    add-int v5, v2, p2

    if-ge v5, v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ge v6, v4, :cond_0

    int-to-byte v3, v6

    aput-byte v3, p1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v0, :cond_1

    add-int/2addr p2, v0

    return p2

    :cond_1
    add-int/2addr p2, v2

    :goto_1
    if-ge v2, v0, :cond_b

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ge p3, v4, :cond_2

    if-ge p2, v3, :cond_2

    add-int/lit8 v5, p2, 0x1

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    move p2, v5

    goto/16 :goto_2

    :cond_2
    const/16 v5, 0x800

    if-ge p3, v5, :cond_3

    add-int/lit8 v5, v3, -0x2

    if-gt p2, v5, :cond_3

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p2, 0x2

    ushr-int/lit8 v7, p3, 0x6

    or-int/lit16 v7, v7, 0x3c0

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p1, v5

    move p2, v6

    goto :goto_2

    :cond_3
    const v5, 0xdfff

    const v6, 0xd800

    if-lt p3, v6, :cond_4

    if-le p3, v5, :cond_5

    :cond_4
    add-int/lit8 v7, v3, -0x3

    if-gt p2, v7, :cond_5

    add-int/lit8 v5, p2, 0x1

    add-int/lit8 v6, p2, 0x2

    add-int/lit8 v7, p2, 0x3

    ushr-int/lit8 v8, p3, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    aput-byte v8, p1, p2

    ushr-int/lit8 p2, p3, 0x6

    and-int/lit8 p2, p2, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p1, v5

    and-int/lit8 p2, p3, 0x3f

    or-int/2addr p2, v4

    int-to-byte p2, p2

    aput-byte p2, p1, v6

    move p2, v7

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v3, -0x4

    if-gt p2, v7, :cond_8

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v6, p2, 0x1

    add-int/lit8 v7, p2, 0x2

    add-int/lit8 v8, p2, 0x3

    invoke-static {p3, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    ushr-int/lit8 v2, p3, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    ushr-int/lit8 v2, p3, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, v6

    ushr-int/lit8 v2, p3, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p1, v7

    add-int/lit8 p2, p2, 0x4

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, v4

    int-to-byte p3, p3

    aput-byte p3, p1, v8

    move v2, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move v2, v5

    :cond_7
    new-instance p0, Ltmb;

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2, v0}, Ltmb;-><init>(II)V

    throw p0

    :cond_8
    if-lt p3, v6, :cond_a

    if-gt p3, v5, :cond_a

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq p1, v3, :cond_9

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ltmb;

    invoke-direct {p0, v2, v0}, Ltmb;-><init>(II)V

    throw p0

    :cond_a
    :goto_3
    invoke-static {p3, p2}, Le2;->e(II)V

    return v1

    :cond_b
    return p2
.end method

.method public static c(Ljava/lang/String;)I
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-ge v2, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x800

    if-ge v4, v5, :cond_1

    rsub-int/lit8 v4, v4, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v6, v1

    :goto_2
    if-ge v2, v4, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ge v7, v5, :cond_2

    rsub-int/lit8 v7, v7, 0x7f

    ushr-int/lit8 v7, v7, 0x1f

    add-int/2addr v6, v7

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x2

    const v8, 0xd800

    if-lt v7, v8, :cond_4

    const v8, 0xdfff

    if-gt v7, v8, :cond_4

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    const/high16 v8, 0x10000

    if-lt v7, v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Ltmb;

    invoke-direct {p0, v2, v4}, Ltmb;-><init>(II)V

    throw p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v6

    :cond_6
    if-lt v3, v0, :cond_7

    return v3

    :cond_7
    int-to-long v2, v3

    const-wide v4, 0x100000000L

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lh8;->e(J)V

    return v1
.end method

.method public static d(II)I
    .locals 1

    const/16 v0, -0xc

    if-gt p0, v0, :cond_1

    const/16 v0, -0x41

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, p1, 0x8

    xor-int/2addr p0, p1

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method
