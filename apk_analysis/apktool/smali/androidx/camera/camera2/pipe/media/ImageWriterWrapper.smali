.class public interface abstract Landroidx/camera/camera2/pipe/media/ImageWriterWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/UnsafeWrapper;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/ImageWriterWrapper$Builder;,
        Landroidx/camera/camera2/pipe/media/ImageWriterWrapper$OnImageReleasedListener;
    }
.end annotation


# virtual methods
.method public abstract dequeueInputImage()Landroidx/camera/camera2/pipe/media/ImageWrapper;
.end method

.method public abstract getFormat()I
.end method

.method public abstract getMaxImages()I
.end method

.method public abstract queueInputImage(Landroidx/camera/camera2/pipe/media/ImageWrapper;)Z
.end method

.method public abstract setOnImageReleasedListener(Landroidx/camera/camera2/pipe/media/ImageWriterWrapper$OnImageReleasedListener;)V
.end method
