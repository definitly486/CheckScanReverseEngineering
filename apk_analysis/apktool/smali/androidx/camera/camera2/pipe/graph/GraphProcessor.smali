.class public interface abstract Landroidx/camera/camera2/pipe/graph/GraphProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract abort()V
.end method

.method public abstract close()V
.end method

.method public abstract getGraphState()Ly68;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly68<",
            "Landroidx/camera/camera2/pipe/GraphState;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRepeatingRequest()Landroidx/camera/camera2/pipe/Request;
.end method

.method public abstract invalidate()V
.end method

.method public abstract setRepeatingRequest(Landroidx/camera/camera2/pipe/Request;)V
.end method

.method public abstract submit(Landroidx/camera/camera2/pipe/Request;)Z
.end method

.method public abstract submit(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract trigger(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract update3AParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateGraphParameters(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateRequestListeners(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)V"
        }
    .end annotation
.end method
