.class public final Lgu8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J = -0x1L

.field public static final b:[B

.field public static final c:Ljava/security/SecureRandom;

.field public static final d:Ljava/util/concurrent/locks/ReentrantLock;

.field public static e:Lqb6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [B

    sput-object v0, Lgu8;->b:[B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lgu8;->c:Ljava/security/SecureRandom;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lgu8;->d:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static a()Ljava/util/UUID;
    .locals 10

    sget-object v0, Lgu8;->e:Lqb6;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lqb6;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    sget-object v2, Lgu8;->d:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-wide v3, Lgu8;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    sget-object v5, Lgu8;->b:[B

    const/4 v6, 0x1

    if-nez v3, :cond_5

    const/16 v3, 0x9

    move v7, v6

    :goto_1
    const/4 v8, -0x1

    if-ge v8, v3, :cond_3

    if-eqz v7, :cond_2

    :try_start_1
    aget-byte v7, v5, v3

    add-int/lit8 v9, v7, 0x1

    int-to-byte v9, v9

    if-ne v7, v8, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v4

    :goto_2
    aput-byte v9, v5, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    const-string v0, "overflow on same millisecond"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    sput-wide v0, Lgu8;->a:J

    sget-object v3, Lgu8;->c:Ljava/security/SecureRandom;

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextBytes([B)V

    :goto_4
    const/16 v3, 0x10

    shl-long/2addr v0, v3

    aget-byte v3, v5, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, v5, v6

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v0, v3

    const/4 v3, 0x2

    invoke-static {v3, v5}, Lgu8;->b(I[B)J

    move-result-wide v6

    const/4 v4, 0x6

    invoke-static {v4, v5}, Lgu8;->b(I[B)J

    move-result-wide v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    shl-long/2addr v4, v8

    ushr-long/2addr v4, v8

    add-long/2addr v6, v4

    const-wide/32 v4, -0xf001

    and-long/2addr v0, v4

    const-wide/16 v4, 0x7000

    or-long/2addr v0, v4

    shl-long v4, v6, v3

    ushr-long v3, v4, v3

    const-wide/high16 v5, -0x8000000000000000L

    or-long/2addr v3, v5

    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v0, v1, v3, v4}, Ljava/util/UUID;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v5

    :goto_5
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static b(I[B)J
    .locals 2

    aget-byte v0, p1, p0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p0, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p0, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    int-to-long p0, v0

    return-wide p0
.end method
