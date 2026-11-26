.class public final synthetic Lzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver$Listener;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/arch/core/util/Function;
.implements Lgv9;
.implements Lcom/my/target/m1$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lzu;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object p0, p0, Lzu;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/m2;

    iget-object v0, p0, Lcom/my/target/r;->a:Lz94$b;

    iget-object p0, p0, Lcom/my/target/m2;->m:Lxda;

    iget-object p0, p0, Lao9;->B:Ljava/lang/String;

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lzu;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/arch/core/util/Function;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Landroidx/paging/DataSource$Factory;->a(Landroidx/arch/core/util/Function;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 4

    iget-object p0, p0, Lzu;->b:Ljava/lang/Object;

    check-cast p0, Lcom/my/target/f1;

    iget-object v0, p0, Lcom/my/target/f1;->k:Lv2a;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/my/target/f1;->l:Lkn9;

    iget-object v0, v0, Lv2a;->a:Lxda;

    check-cast p0, Lcom/my/target/w1$a;

    iget-object p0, p0, Lcom/my/target/w1$a;->b:Lcom/my/target/w1;

    iget-object v1, p0, Lcom/my/target/w1;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2a;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lv2a;->e:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/my/target/w1;->g:Lcom/my/target/p0$a;

    iget-object p0, p0, Lcom/my/target/p0$a;->a:Lcom/my/target/p0;

    invoke-virtual {p0, v0}, Lcom/my/target/p0;->b(Lao9;)V

    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lzu;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/source/preload/PreloadException;

    check-cast p1, Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->b(Landroidx/media3/exoplayer/source/preload/PreloadException;Landroidx/media3/exoplayer/source/preload/PreloadManagerListener;)V

    return-void
.end method

.method public onAudioCapabilitiesChanged(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V
    .locals 0

    iget-object p0, p0, Lzu;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/AudioTrackAudioOutputProvider;->onAudioCapabilitiesChanged(Landroidx/media3/exoplayer/audio/AudioCapabilities;)V

    return-void
.end method
