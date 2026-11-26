.class public final Ljhc;
.super Ldu8;
.source "SourceFile"


# virtual methods
.method public final a()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method
