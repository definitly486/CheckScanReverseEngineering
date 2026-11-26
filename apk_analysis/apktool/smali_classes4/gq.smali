.class public final synthetic Lgq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lgq;->b:I

    iput-object p1, p0, Lgq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lgq;->b:I

    iget-object p0, p0, Lgq;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/material/search/SearchBar;

    invoke-static {p0}, Lcom/google/android/material/search/SearchBar;->a(Lcom/google/android/material/search/SearchBar;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;->a(Landroidx/camera/camera2/pipe/internal/CameraBackendsImpl;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-static {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->c(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
