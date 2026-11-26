.class final Lorg/conscrypt/AddressUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ASCII_CASE_DIFF:I = 0x20

.field private static final IPV4_OCTET_COUNT:I = 0x4

.field private static final IPV6_GROUPS_PER_IPV4:I = 0x2

.field private static final IPV6_TOTAL_GROUPS:I = 0x8

.field private static final MAX_HEX_DIGITS_PER_GROUP:I = 0x4

.field private static final MAX_IPV4_ADDRESS_LENGTH:I = 0xf

.field private static final MAX_IPV4_DOTS:I = 0x3

.field private static final MAX_IPV4_OCTET_DIGITS:I = 0x3

.field private static final MAX_IPV4_OCTET_VALUE:I = 0xff

.field private static final MIN_IPV4_ADDRESS_LENGTH:I = 0x7


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static asciiEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Lorg/conscrypt/AddressUtils;->toLowerCaseAscii(C)C

    move-result v3

    invoke-static {v4}, Lorg/conscrypt/AddressUtils;->toLowerCaseAscii(C)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static isLiteralIpAddress(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Lorg/conscrypt/AddressUtils;->isValidIPv4(Ljava/lang/String;IIZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lorg/conscrypt/AddressUtils;->isValidIPv6(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method private static isValidIPv4(Ljava/lang/String;IIZ)Z
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-lt v0, v1, :cond_8

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    goto :goto_4

    :cond_0
    move v0, v2

    move v1, v0

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge p1, p2, :cond_7

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    const/4 v7, 0x3

    if-ne v5, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_2

    if-le v0, v7, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    move v3, v1

    goto :goto_2

    :cond_2
    :goto_1
    return v2

    :cond_3
    invoke-static {v5}, Lorg/conscrypt/AddressUtils;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez p3, :cond_4

    if-ne v1, v4, :cond_4

    if-nez v3, :cond_4

    return v2

    :cond_4
    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v5, v3

    add-int/lit8 v1, v1, 0x1

    if-gt v1, v7, :cond_6

    const/16 v3, 0xff

    if-le v5, v3, :cond_5

    goto :goto_3

    :cond_5
    move v3, v5

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return v2

    :cond_7
    add-int/2addr v0, v4

    const/4 p0, 0x4

    if-ne v0, p0, :cond_8

    if-lez v1, :cond_8

    return v4

    :cond_8
    :goto_4
    return v2
.end method

.method private static isValidIPv6(Ljava/lang/String;)Z
    .locals 13

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x8

    const/4 v9, 0x1

    if-ge v2, v1, :cond_12

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x25

    if-ne v10, v0, :cond_8

    add-int/lit8 v7, v2, 0x1

    if-ge v7, v1, :cond_4

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v0, :cond_4

    if-eqz v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x2

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v0, :cond_2

    return v3

    :cond_2
    if-lez v4, :cond_3

    add-int/lit8 v6, v6, 0x1

    if-lt v6, v8, :cond_3

    return v3

    :cond_3
    move v5, v7

    move v7, v2

    move v2, v5

    move v5, v9

    goto :goto_1

    :cond_4
    add-int/lit8 v10, v1, -0x1

    if-eq v2, v10, :cond_7

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v11, :cond_7

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    if-gt v6, v8, :cond_7

    if-eqz v5, :cond_6

    if-lt v6, v8, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    move v4, v3

    goto :goto_5

    :cond_7
    :goto_2
    return v3

    :cond_8
    const/16 v12, 0x2e

    if-ne v10, v12, :cond_d

    :goto_3
    if-ge v2, v1, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v11, :cond_9

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    if-ge v2, v1, :cond_a

    add-int/lit8 v0, v2, 0x1

    invoke-static {p0, v0}, Lorg/conscrypt/AddressUtils;->isValidZoneId(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a

    return v3

    :cond_a
    invoke-static {p0, v7, v2, v3}, Lorg/conscrypt/AddressUtils;->isValidIPv4(Ljava/lang/String;IIZ)Z

    move-result p0

    if-nez p0, :cond_b

    return v3

    :cond_b
    add-int/lit8 v6, v6, 0x2

    :cond_c
    :goto_4
    move v4, v3

    goto :goto_6

    :cond_d
    if-ne v10, v11, :cond_f

    add-int/2addr v2, v9

    invoke-static {p0, v2}, Lorg/conscrypt/AddressUtils;->isValidZoneId(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_e

    return v3

    :cond_e
    if-lez v4, :cond_c

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_f
    invoke-static {v10}, Lorg/conscrypt/AddressUtils;->isHexDigit(C)Z

    move-result v8

    if-nez v8, :cond_10

    return v3

    :cond_10
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x4

    if-le v4, v8, :cond_11

    return v3

    :cond_11
    :goto_5
    add-int/2addr v2, v9

    goto/16 :goto_0

    :cond_12
    :goto_6
    if-lez v4, :cond_13

    add-int/lit8 v6, v6, 0x1

    :cond_13
    if-eqz v5, :cond_15

    if-ge v6, v8, :cond_14

    return v9

    :cond_14
    return v3

    :cond_15
    if-ne v6, v8, :cond_16

    return v9

    :cond_16
    return v3
.end method

.method public static isValidSniHostname(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "localhost"

    invoke-static {p0, v1}, Lorg/conscrypt/AddressUtils;->asciiEqualsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    :cond_1
    invoke-static {p0}, Lorg/conscrypt/AddressUtils;->isLiteralIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static isValidZoneId(Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    :goto_0
    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x85

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2028

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2029

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static toLowerCaseAscii(C)C
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    :cond_0
    return p0
.end method
