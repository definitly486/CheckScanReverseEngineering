.class final Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/OutputImage;
.implements Landroidx/camera/camera2/pipe/media/SharedOutputImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharedOutputImageImpl"
.end annotation


# instance fields
.field private final closed:Lht;

.field private final outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

.field private final sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/camera/camera2/pipe/media/SharedReference<",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/camera/camera2/pipe/media/SharedReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            "Landroidx/camera/camera2/pipe/media/SharedReference<",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lht;

    return-void
.end method


# virtual methods
.method public acquire()Landroidx/camera/camera2/pipe/media/SharedOutputImage;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->acquireOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Required value was null."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public acquireOrNull()Landroidx/camera/camera2/pipe/media/SharedOutputImage;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/media/SharedReference;->acquireOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/media/OutputImage;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    invoke-direct {v0, v1, p0}, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;-><init>(Landroidx/camera/camera2/pipe/media/OutputImage;Landroidx/camera/camera2/pipe/media/SharedReference;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/SharedReference;->decrement()V

    :cond_0
    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getFormat()I

    move-result p0

    return p0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOutputId-4LaLFng()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/OutputImage;->getOutputId-4LaLFng()I

    move-result p0

    return p0
.end method

.method public getPlanes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/media/ImagePlane;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getPlanes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStreamId-ptHMqGs()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/OutputImage;->getStreamId-ptHMqGs()I

    move-result p0

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getWidth()I

    move-result p0

    return p0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->setCropRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFinalizer(Landroidx/camera/camera2/pipe/media/Finalizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/media/Finalizer<",
            "-",
            "Landroidx/camera/camera2/pipe/media/OutputImage;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroidx/camera/camera2/pipe/media/Finalizer;->finalize(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->sharedReference:Landroidx/camera/camera2/pipe/media/SharedReference;

    invoke-virtual {p0, p1}, Landroidx/camera/camera2/pipe/media/SharedReference;->setFinalizer(Landroidx/camera/camera2/pipe/media/Finalizer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->closed:Lht;

    invoke-virtual {v0}, Lht;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class v0, Landroidx/camera/camera2/pipe/media/SharedOutputImage;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-class v0, Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-object p0

    :cond_3
    const-class v0, Landroid/media/Image;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/SharedOutputImage$Companion$SharedOutputImageImpl;->outputImage:Landroidx/camera/camera2/pipe/media/OutputImage;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot unwrap "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " as android.media.Image. Use setFinalizerinstead and close all outstanding references."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
