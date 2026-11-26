.class public final Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;-><init>(Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
    .locals 0

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;->this$0:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureSequenceComplete(Landroidx/camera/camera2/pipe/CaptureSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CaptureSequence<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/camera/camera2/pipe/CaptureSequence;->getRepeating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;->this$0:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    invoke-static {v0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->access$getActiveCaptureSequences$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor$activeBurstListener$1;->this$0:Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;->access$getActiveCaptureSequences$p(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    return-void
.end method
