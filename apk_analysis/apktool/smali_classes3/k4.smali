.class public final synthetic Lk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Landroidx/media3/exoplayer/scheduler/RequirementsWatcher$Listener;
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lk4;->b:I

    iput-object p1, p0, Lk4;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lk4;->b:I

    iget-object p0, p0, Lk4;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    check-cast p0, Lm4;

    invoke-virtual {p0, p1}, Lm4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public get()J
    .locals 2

    iget-object p0, p0, Lk4;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lk4;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ne;

    check-cast p1, Lyads/pe;

    invoke-static {p0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/pe;)V

    return-void
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lk4;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/core/ImageProxy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->close()V

    return-void
.end method

.method public onRequirementsStateChanged(Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;I)V
    .locals 0

    iget-object p0, p0, Lk4;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/offline/DownloadManager;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager;->a(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/RequirementsWatcher;I)V

    return-void
.end method
