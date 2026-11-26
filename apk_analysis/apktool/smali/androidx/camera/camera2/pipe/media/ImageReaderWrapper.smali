.class public interface abstract Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;,
        Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;
    }
.end annotation


# virtual methods
.method public abstract flush()V
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getOnExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;
.end method

.method public abstract getOnImageListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract setOnExpectedOutputsListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;)V
.end method

.method public abstract setOnImageListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;)V
.end method
