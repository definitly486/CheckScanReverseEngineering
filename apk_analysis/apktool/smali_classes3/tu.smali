.class public final synthetic Ltu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Ltu;->b:I

    iput-object p1, p0, Ltu;->c:Ljava/lang/Object;

    iput-object p2, p0, Ltu;->d:Ljava/lang/Object;

    iput-object p3, p0, Ltu;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Ltu;->b:I

    iget-object v1, p0, Ltu;->e:Ljava/lang/Object;

    iget-object v2, p0, Ltu;->d:Ljava/lang/Object;

    iget-object p0, p0, Ltu;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/webkit/WebViewStartUpConfig;

    check-cast v2, Landroidx/webkit/WebViewOutcomeReceiver;

    check-cast v1, Landroid/content/Context;

    invoke-static {p0, v2, v1}, Landroidx/webkit/WebViewCompat;->d(Landroidx/webkit/WebViewStartUpConfig;Landroidx/webkit/WebViewOutcomeReceiver;Landroid/content/Context;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;

    check-cast v2, Lnr7;

    check-cast v1, Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-static {v2, v1, p0}, Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;->c(Lnr7;Landroidx/media3/exoplayer/drm/DrmSession;Landroidx/media3/exoplayer/drm/OfflineLicenseHelper;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/perf/session/gauges/GaugeManager;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Lcom/google/firebase/perf/v1/ApplicationProcessState;

    invoke-static {p0, v2, v1}, Lcom/google/firebase/perf/session/gauges/GaugeManager;->a(Lcom/google/firebase/perf/session/gauges/GaugeManager;Ljava/lang/String;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-void

    :pswitch_2
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource;

    check-cast v2, Ljava/util/concurrent/Executor;

    check-cast v1, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    invoke-static {p0, v2, v1}, Landroidx/camera/video/internal/audio/AudioSource;->b(Landroidx/camera/video/internal/audio/AudioSource;Ljava/util/concurrent/Executor;Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
