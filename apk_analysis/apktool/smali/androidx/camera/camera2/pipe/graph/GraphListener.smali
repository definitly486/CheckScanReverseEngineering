.class public interface abstract Landroidx/camera/camera2/pipe/graph/GraphListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/graph/GraphListener$DefaultImpls;
    }
.end annotation


# direct methods
.method public static synthetic access$onGraphStarting$jd(Landroidx/camera/camera2/pipe/graph/GraphListener;)V
    .locals 0

    invoke-super {p0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStarting()V

    return-void
.end method

.method public static synthetic access$onGraphStopping$jd(Landroidx/camera/camera2/pipe/graph/GraphListener;)V
    .locals 0

    invoke-super {p0}, Landroidx/camera/camera2/pipe/graph/GraphListener;->onGraphStopping()V

    return-void
.end method


# virtual methods
.method public abstract onGraphError(Landroidx/camera/camera2/pipe/GraphState$GraphStateError;)V
.end method

.method public abstract onGraphModified(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
.end method

.method public abstract onGraphStarted(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
.end method

.method public onGraphStarting()V
    .locals 0

    return-void
.end method

.method public abstract onGraphStopped(Landroidx/camera/camera2/pipe/graph/GraphRequestProcessor;)V
.end method

.method public onGraphStopping()V
    .locals 0

    return-void
.end method
