.class public final Lp44;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp44$a;
    }
.end annotation


# static fields
.field public static final a:Ly91$f;

.field public static final b:Ly91$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly91$f;

    const/16 v1, 0x2e

    invoke-direct {v0, v1}, Ly91$f;-><init>(C)V

    sput-object v0, Lp44;->a:Ly91$f;

    new-instance v0, Ly91$f;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Ly91$f;-><init>(C)V

    sput-object v0, Lp44;->b:Ly91$f;

    new-instance v0, Lp44$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "127.0.0.1"

    invoke-static {v1, v0}, Lp44;->b(Ljava/lang/String;Lp44$a;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lp44$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lp44;->a(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    new-instance v0, Lp44$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v1, "0.0.0.0"

    invoke-static {v1, v0}, Lp44;->b(Ljava/lang/String;Lp44$a;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lp44$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lp44;->a(Ljava/lang/String;[B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "\'0.0.0.0\' is not an IP string literal."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "\'127.0.0.1\' is not an IP string literal."

    invoke-static {v0}, Lfg;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .locals 6

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    const-string v1, "Unexpected state, scope should only appear for ipv6"

    invoke-static {v0, v1}, Lo8;->f(ZLjava/lang/Object;)V

    check-cast p1, Ljava/net/Inet6Address;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v1, v0, :cond_3

    const v4, 0xccccccc

    if-le v2, v4, :cond_1

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_1
    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    invoke-static {p0, p1, v2}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    return-object p0

    :cond_4
    :try_start_1
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object p1

    invoke-static {v1, p1, v0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such interface: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p0

    invoke-static {p0}, Lxg;->d(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Lp44$a;)[B
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    const/16 v6, 0x3a

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-ge v1, v4, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v10, 0x2e

    if-ne v4, v10, :cond_0

    move v2, v7

    goto :goto_1

    :cond_0
    if-ne v4, v6, :cond_2

    if-eqz v2, :cond_1

    goto/16 :goto_8

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    const/16 v10, 0x25

    if-ne v4, v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ne v4, v9, :cond_4

    goto/16 :goto_8

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v9

    :goto_2
    if-eqz v3, :cond_1b

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eqz v2, :cond_7

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp44;->d(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_6

    move-object p0, v8

    goto :goto_3

    :cond_6
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v4

    aget-byte v11, p0, v7

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    aget-byte v11, p0, v3

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v4

    const/4 v12, 0x3

    aget-byte p0, p0, v12

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v11

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const-string v11, ":"

    invoke-static {v10, v2, v11, p0}, Lpg;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    if-nez p0, :cond_7

    goto/16 :goto_8

    :cond_7
    if-eq v1, v9, :cond_9

    if-eqz p1, :cond_8

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lp44$a;->a:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_9
    sget-object p1, Lp44;->b:Ly91$f;

    invoke-virtual {p1, p0}, Ly91;->b(Ljava/lang/CharSequence;)I

    move-result p1

    if-lt p1, v3, :cond_1d

    if-le p1, v4, :cond_a

    goto/16 :goto_8

    :cond_a
    add-int/2addr p1, v7

    rsub-int/lit8 v1, p1, 0x8

    move v2, v0

    move v10, v2

    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v7

    if-ge v2, v11, :cond_f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_e

    add-int/lit8 v11, v2, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v6, :cond_e

    if-eqz v10, :cond_b

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v10, v1, 0x1

    if-nez v2, :cond_c

    add-int/lit8 v10, v1, 0x2

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne v2, v1, :cond_d

    add-int/lit8 v10, v10, 0x1

    :cond_d
    move v1, v10

    move v10, v7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_10

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_10

    goto/16 :goto_8

    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_11

    goto/16 :goto_8

    :cond_11
    if-eqz v10, :cond_12

    if-gtz v1, :cond_12

    goto/16 :goto_8

    :cond_12
    if-nez v10, :cond_13

    if-eq p1, v4, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_14

    goto :goto_5

    :cond_14
    move v7, v0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v7, v2, :cond_1a

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v9, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_15
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_16

    move v3, v0

    :goto_6
    if-ge v3, v1, :cond_18

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_16
    sub-int v3, v2, v7

    if-lez v3, :cond_19

    const/4 v4, 0x4

    if-gt v3, v4, :cond_19

    move v3, v0

    :goto_7
    if-ge v7, v2, :cond_17

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_17
    int-to-short v3, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :cond_18
    add-int/lit8 v7, v2, 0x1

    goto :goto_5

    :cond_19
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1a
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_1b
    if-eqz v2, :cond_1d

    if-eq v1, v9, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-static {p0}, Lp44;->d(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :catch_0
    :cond_1d
    :goto_8
    return-object v8
.end method

.method public static c(IILjava/lang/String;)B
    .locals 3

    sub-int v0, p1, p0

    if-lez v0, :cond_5

    const/4 v1, 0x3

    if-gt v0, v1, :cond_5

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge p0, p1, :cond_3

    mul-int/lit8 v0, v0, 0xa

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_3
    const/16 p0, 0xff

    if-gt v0, p0, :cond_4

    int-to-byte p0, v0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 6

    sget-object v0, Lp44;->a:Ly91$f;

    invoke-virtual {v0, p0}, Ly91;->b(Ljava/lang/CharSequence;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-array v0, v1, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :cond_1
    :try_start_0
    invoke-static {v3, v4, p0}, Lp44;->c(IILjava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v0
.end method
