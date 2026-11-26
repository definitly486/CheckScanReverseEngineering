.class public interface abstract Landroidx/camera/camera2/pipe/media/ImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract getExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;
.end method

.method public abstract getImageListener()Landroidx/camera/camera2/pipe/media/ImageListener;
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract setExpectedOutputsListener(Landroidx/camera/camera2/pipe/media/ExpectedOutputsListener;)V
.end method

.method public abstract setImageListener(Landroidx/camera/camera2/pipe/media/ImageListener;)V
.end method
