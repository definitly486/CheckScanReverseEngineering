.class public final Lg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/stats/zze;


# direct methods
.method public static final a()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [B

    sget-object v1, Lbl7;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x6

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    aget-byte v2, v0, v1

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lea6;->d(I[B)J

    move-result-wide v2

    invoke-static {v1, v0}, Lea6;->d(I[B)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    sget-object v0, Ltb9;->d:Ltb9;

    goto :goto_0

    :cond_0
    new-instance v4, Ltb9;

    invoke-direct {v4, v2, v3, v0, v1}, Ltb9;-><init>(JJ)V

    move-object v0, v4

    :goto_0
    invoke-virtual {v0}, Ltb9;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final b(Lul7;I)I
    .locals 4

    iget-object v0, p0, Lul7;->g:[I

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lul7;->f:[[B

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v1, p0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, v0, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    return v2

    :cond_3
    not-int p0, v2

    return p0
.end method
