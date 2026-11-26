.class public abstract Lyads/aq2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lyads/eq2;Z)Lyads/rw4;
    .locals 2

    const-string v0, "media_metrics"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lln;->b(Ljava/lang/Object;)Landroid/media/metrics/MediaMetricsManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lyads/w04;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lyads/w04;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lyads/sv3;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lyads/rw4;

    invoke-static {}, Lej0;->e()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-direct {p0, p1}, Lyads/rw4;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lyads/eq2;->p:Lyads/ge;

    check-cast p1, Lyads/cj0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lyads/cj0;->f:Lyads/wt3;

    iget-boolean p2, p1, Lyads/wt3;->g:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lyads/wt3;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p2, Lyads/vt3;

    invoke-direct {p2, p0}, Lyads/vt3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    new-instance p1, Lyads/rw4;

    iget-object p0, p0, Lyads/w04;->c:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Lyads/rw4;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
