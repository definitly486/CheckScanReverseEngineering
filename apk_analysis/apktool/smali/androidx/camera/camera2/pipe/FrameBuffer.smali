.class public interface abstract Landroidx/camera/camera2/pipe/FrameBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getFrameFlow()Lys7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lys7<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStreams()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            ">;"
        }
    .end annotation
.end method

.method public abstract peekAllReferences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract peekFirstReference()Landroidx/camera/camera2/pipe/FrameReference;
.end method

.method public abstract peekLastReference()Landroidx/camera/camera2/pipe/FrameReference;
.end method

.method public abstract removeAllFrameReferencesAndAcquire(Lnl3;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Frame;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAllReferences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeFirstFrameReferenceAndAcquire(Lnl3;)Landroidx/camera/camera2/pipe/Frame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Frame;"
        }
    .end annotation
.end method

.method public abstract removeFirstReference()Landroidx/camera/camera2/pipe/FrameReference;
.end method

.method public abstract removeLastFrameReferenceAndAcquire(Lnl3;)Landroidx/camera/camera2/pipe/Frame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/FrameReference;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroidx/camera/camera2/pipe/Frame;"
        }
    .end annotation
.end method

.method public abstract removeLastReference()Landroidx/camera/camera2/pipe/FrameReference;
.end method

.method public abstract setCapacity(I)V
.end method
