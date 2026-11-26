.class public interface abstract Landroidx/camera/camera2/pipe/CaptureSequenceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TCaptureRequest:",
        "Ljava/lang/Object;",
        "TCaptureSequence::",
        "Landroidx/camera/camera2/pipe/CaptureSequence<",
        "+TTCaptureRequest;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract abortCaptures()V
.end method

.method public abstract build(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;Ljava/util/List;)Landroidx/camera/camera2/pipe/CaptureSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request;",
            ">;",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "*+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;)TTCaptureSequence;"
        }
    .end annotation
.end method

.method public abstract shutdown(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lj59;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract stopRepeating()V
.end method

.method public abstract submit(Landroidx/camera/camera2/pipe/CaptureSequence;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTCaptureSequence;)",
            "Ljava/lang/Integer;"
        }
    .end annotation
.end method
