.class public final synthetic Liq;
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

    iput p2, p0, Liq;->b:I

    iput-object p1, p0, Liq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Liq;->b:I

    iget-object p0, p0, Liq;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lwc6;

    invoke-virtual {p0}, Lwc6;->k()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lwc6;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lwc6;->d:Lfr;

    invoke-virtual {v2}, Lfr;->clear()V

    iget-object v2, p0, Lwc6;->d:Lfr;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v2, v0}, Lfr;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwc6;->m:Z

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0

    :pswitch_0
    check-cast p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->m(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/google/firebase/perf/metrics/AppStartTrace;

    invoke-static {p0}, Lcom/google/firebase/perf/metrics/AppStartTrace;->b(Lcom/google/firebase/perf/metrics/AppStartTrace;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
