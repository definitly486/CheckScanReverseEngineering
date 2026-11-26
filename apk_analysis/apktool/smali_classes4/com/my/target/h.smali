.class public final Lcom/my/target/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player$Listener;
.implements Lcom/my/target/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/h$a;
    }
.end annotation


# instance fields
.field public final b:Ld9a;

.field public final c:Landroidx/media3/exoplayer/ExoPlayer;

.field public final d:Lcom/my/target/h$a;

.field public final e:Landroid/media/AudioManager;

.field public final f:Ld9a;

.field public final g:Lcom/my/target/a1;

.field public h:Lcom/my/target/n$a;

.field public i:Landroidx/media3/exoplayer/source/BaseMediaSource;

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    invoke-static {v0}, Ld9a;->a(I)Ld9a;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/h;->b:Ld9a;

    const/16 v0, 0x1e

    invoke-static {v0}, Ld9a;->a(I)Ld9a;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/h;->f:Ld9a;

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->build()Landroidx/media3/exoplayer/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p0}, Landroidx/media3/common/Player;->addListener(Landroidx/media3/common/Player$Listener;)V

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/my/target/h;->e:Landroid/media/AudioManager;

    new-instance p1, Lcom/my/target/h$a;

    invoke-direct {p1, v0}, Lcom/my/target/h$a;-><init>(Landroidx/media3/exoplayer/ExoPlayer;)V

    iput-object p1, p0, Lcom/my/target/h;->d:Lcom/my/target/h$a;

    new-instance p1, Lcom/my/target/a1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/my/target/a1;->b:Lcom/my/target/n;

    iput-object p1, p0, Lcom/my/target/h;->g:Lcom/my/target/a1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0}, Landroidx/media3/common/Player;->getVolume()F

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/my/target/h;->setVolume(F)V

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoVideoPlayer: error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/my/target/n$a;)V
    .locals 1

    .line 34
    iput-object p1, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    .line 35
    iget-object v0, p0, Lcom/my/target/h;->d:Lcom/my/target/h$a;

    .line 36
    iput-object p1, v0, Lcom/my/target/h$a;->c:Lcom/my/target/n$a;

    .line 37
    iget-object p0, p0, Lcom/my/target/h;->g:Lcom/my/target/a1;

    .line 38
    iput-object p1, p0, Lcom/my/target/a1;->c:Lcom/my/target/n$a;

    return-void
.end method

.method public final b(Lcom/my/target/f0;)V
    .locals 1

    iget-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/my/target/f0;->setExoPlayer(Landroidx/media3/exoplayer/ExoPlayer;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p0, p1}, Lcom/my/target/h;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/my/target/h;->j:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/my/target/h;->k:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    const-string v2, "ExoVideoPlayer: prepare to play video in ExoPlayer"

    invoke-static {v1, v2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/my/target/h;->k:Z

    iget-object v2, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/my/target/n$a;->g()V

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/my/target/h;->b:Ld9a;

    iget-object v3, p0, Lcom/my/target/h;->d:Lcom/my/target/h$a;

    invoke-virtual {v2, v3}, Ld9a;->b(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/my/target/h;->f:Ld9a;

    iget-object v3, p0, Lcom/my/target/h;->g:Lcom/my/target/a1;

    invoke-virtual {v2, v3}, Ld9a;->b(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    iget-boolean v2, p0, Lcom/my/target/h;->j:Z

    if-nez v2, :cond_1

    invoke-static {p1, p2}, Lbx9;->a(Landroid/content/Context;Landroid/net/Uri;)Landroidx/media3/exoplayer/source/BaseMediaSource;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/h;->i:Landroidx/media3/exoplayer/source/BaseMediaSource;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    invoke-interface {v0}, Landroidx/media3/common/Player;->prepare()V

    const-string p1, "ExoVideoPlayer: Play new video in ExoPlayer"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    const-string p1, "ExoVideoPlayer: New source url not set! Will play previous video! started = true"

    invoke-static {v1, p1}, Ly14;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ExoVideoPlayer: Error - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/my/target/n$a;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final c()Z
    .locals 3

    const/4 v0, 0x0

    .line 95
    :try_start_0
    iget-object p0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getVolume()F

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catchall_0
    move-exception p0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExoVideoPlayer: Error - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 97
    invoke-static {v2, v1, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final d()V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExoVideoPlayer: Error - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 32
    invoke-static {v3, v2, v1}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0, v0}, Lcom/my/target/n$a;->a(F)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoVideoPlayer: Error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/my/target/n$a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 4

    iget-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/my/target/h;->j:Z

    iput-boolean v1, p0, Lcom/my/target/h;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    iget-object v2, p0, Lcom/my/target/h;->b:Ld9a;

    iget-object v3, p0, Lcom/my/target/h;->d:Lcom/my/target/h$a;

    invoke-virtual {v2, v3}, Ld9a;->e(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/my/target/h;->f:Ld9a;

    iget-object v3, p0, Lcom/my/target/h;->g:Lcom/my/target/a1;

    invoke-virtual {v2, v3}, Ld9a;->e(Ljava/lang/Runnable;)V

    iput-object v1, v3, Lcom/my/target/a1;->b:Lcom/my/target/n;

    iput-object v1, v3, Lcom/my/target/a1;->c:Lcom/my/target/n$a;

    :try_start_0
    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    invoke-interface {v0}, Landroidx/media3/exoplayer/ExoPlayer;->release()V

    invoke-interface {v0, p0}, Landroidx/media3/common/Player;->removeListener(Landroidx/media3/common/Player$Listener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoVideoPlayer: Error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v1, v0}, Landroidx/media3/common/Player;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ExoVideoPlayer: Error - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3, v2, v1}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Lcom/my/target/n$a;->a(F)V

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lcom/my/target/h;->j:Z

    return p0
.end method

.method public final getDuration()F
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getDuration()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-float p0, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    return p0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoVideoPlayer: Error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getPosition()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoVideoPlayer: Error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getVolume()F
    .locals 4

    iget-object v0, p0, Lcom/my/target/h;->e:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    new-instance v1, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getVolume()F

    move-result p0

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, p0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v0, 0x2

    invoke-virtual {v1, v0, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0
.end method

.method public final isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/my/target/h;->j:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/my/target/h;->k:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/my/target/h;->k:Z

    iput-boolean v0, p0, Lcom/my/target/h;->j:Z

    iget-object v0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExoVideoPlayer: Error - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "unknown video error"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    invoke-interface {p0, p1}, Lcom/my/target/n$a;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/my/target/h;->g:Lcom/my/target/a1;

    iget-object v3, p0, Lcom/my/target/h;->f:Ld9a;

    iget-object v4, p0, Lcom/my/target/h;->d:Lcom/my/target/h$a;

    iget-object v5, p0, Lcom/my/target/h;->b:Ld9a;

    const/4 v6, 0x1

    if-eq p2, v6, :cond_b

    const/4 v7, 0x2

    if-eq p2, v7, :cond_9

    const/4 v7, 0x3

    if-eq p2, v7, :cond_3

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "ExoVideoPlayer: Player state is changed to ENDED"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/my/target/h;->k:Z

    iput-boolean v0, p0, Lcom/my/target/h;->j:Z

    invoke-virtual {p0}, Lcom/my/target/h;->getDuration()F

    move-result p1

    iget-object p2, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, p1}, Lcom/my/target/n$a;->d(FF)V

    :cond_1
    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/my/target/n$a;->c()V

    :cond_2
    invoke-virtual {v5, v4}, Ld9a;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Ld9a;->e(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-string p2, "ExoVideoPlayer: Player state is changed to READY"

    invoke-static {v1, p2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/my/target/n$a;->k()V

    :cond_4
    iget-boolean p1, p0, Lcom/my/target/h;->j:Z

    if-nez p1, :cond_5

    iput-boolean v6, p0, Lcom/my/target/h;->j:Z

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/my/target/h;->k:Z

    if-eqz p1, :cond_6

    iput-boolean v0, p0, Lcom/my/target/h;->k:Z

    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_6

    invoke-interface {p0}, Lcom/my/target/n$a;->h()V

    :cond_6
    :goto_0
    invoke-virtual {v5, v4}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Ld9a;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/my/target/h;->k:Z

    if-nez p1, :cond_8

    iput-boolean v6, p0, Lcom/my/target/h;->k:Z

    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Lcom/my/target/n$a;->f()V

    :cond_8
    invoke-virtual {v5, v4}, Ld9a;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Ld9a;->e(Ljava/lang/Runnable;)V

    return-void

    :cond_9
    const-string p2, "ExoVideoPlayer: Player state is changed to BUFFERING"

    invoke-static {v1, p2}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    iget-boolean p0, p0, Lcom/my/target/h;->j:Z

    if-nez p0, :cond_a

    invoke-virtual {v5, v4}, Ld9a;->b(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Ld9a;->b(Ljava/lang/Runnable;)V

    :cond_a
    :goto_1
    return-void

    :cond_b
    const-string p1, "ExoVideoPlayer: Player state is changed to IDLE"

    invoke-static {v1, p1}, Ly14;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/my/target/h;->j:Z

    if-eqz p1, :cond_c

    iput-boolean v0, p0, Lcom/my/target/h;->j:Z

    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/my/target/n$a;->o()V

    :cond_c
    invoke-virtual {v5, v4}, Ld9a;->e(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v2}, Ld9a;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    iget-boolean v0, p0, Lcom/my/target/h;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/my/target/h;->k:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/my/target/h;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final resume()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/my/target/h;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v2, v1}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/my/target/h;->i:Landroidx/media3/exoplayer/source/BaseMediaSource;

    if-eqz v0, :cond_1

    invoke-interface {v2, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    invoke-interface {v2}, Landroidx/media3/common/Player;->prepare()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void

    :goto_0
    invoke-virtual {p0, v0}, Lcom/my/target/h;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    invoke-interface {v0, p1}, Landroidx/media3/common/Player;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ExoVideoPlayer: Error - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lfg;->e(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/my/target/h;->h:Lcom/my/target/n$a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/my/target/n$a;->a(F)V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    iget-object v0, p0, Lcom/my/target/h;->c:Landroidx/media3/exoplayer/ExoPlayer;

    :try_start_0
    invoke-interface {v0}, Landroidx/media3/common/Player;->stop()V

    invoke-interface {v0}, Landroidx/media3/common/Player;->clearMediaItems()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/my/target/h;->d(Ljava/lang/Throwable;)V

    return-void
.end method
