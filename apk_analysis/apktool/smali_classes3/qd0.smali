.class public final synthetic Lqd0;
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

    iput p4, p0, Lqd0;->b:I

    iput-object p1, p0, Lqd0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lqd0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lqd0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lqd0;->b:I

    iget-object v1, p0, Lqd0;->e:Ljava/lang/Object;

    iget-object v2, p0, Lqd0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lqd0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast v2, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    check-cast v1, Lll3;

    invoke-static {p0, v2, v1}, Landroidx/work/WorkerKt;->a(Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Lll3;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/lifecycle/LiveData;

    check-cast v2, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;

    check-cast v1, Landroidx/lifecycle/LiveData;

    invoke-static {p0, v2, v1}, Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;->a(Landroidx/lifecycle/LiveData;Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;Landroidx/lifecycle/LiveData;)V

    return-void

    :pswitch_1
    check-cast p0, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource;

    check-cast v1, Lbf6;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/source/preload/BasePreloadManager;->a(Landroidx/media3/exoplayer/source/preload/BasePreloadManager;Landroidx/media3/exoplayer/source/MediaSource;Lbf6;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
