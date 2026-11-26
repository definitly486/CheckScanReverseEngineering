.class public interface abstract Landroidx/camera/camera2/pipe/CaptureSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TCaptureRequest:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCameraId-Dz_R5H8()Ljava/lang/String;
.end method

.method public abstract getCaptureMetadataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/RequestMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaptureRequestList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TTCaptureRequest;>;"
        }
    .end annotation
.end method

.method public abstract getListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/Request$Listener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRepeating()Z
.end method

.method public abstract getSequenceListener()Landroidx/camera/camera2/pipe/CaptureSequence$CaptureSequenceListener;
.end method

.method public abstract getSequenceNumber()I
.end method

.method public abstract setSequenceNumber(I)V
.end method
