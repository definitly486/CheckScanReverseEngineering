.class public abstract Lyads/x74;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;JJ)J
    .locals 9

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    move-wide p1, p3

    :cond_0
    :try_start_0
    const-string v0, ""

    invoke-static {p0, v0}, Lyads/pp0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, p0

    mul-long/2addr v1, v3

    goto :goto_0

    :catch_0
    move-wide v1, p1

    :goto_0
    const-wide/16 v3, 0x2

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x64

    div-long/2addr v3, v5

    const-wide/16 v7, 0x32

    mul-long/2addr v1, v7

    div-long/2addr v1, v5

    cmp-long p0, p1, v1

    if-lez p0, :cond_1

    move-wide p1, v1

    :cond_1
    cmp-long p0, v3, p3

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move-wide p3, v3

    :goto_1
    cmp-long p0, p3, p1

    if-gez p0, :cond_3

    goto :goto_2

    :cond_3
    move-wide p1, p3

    :goto_2
    return-wide p1
.end method
