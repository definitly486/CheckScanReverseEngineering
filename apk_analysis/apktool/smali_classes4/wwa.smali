.class public final Lwwa;
.super Lcom/google/android/gms/internal/play_billing/zzbq;
.source "SourceFile"


# virtual methods
.method public final zza()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method
