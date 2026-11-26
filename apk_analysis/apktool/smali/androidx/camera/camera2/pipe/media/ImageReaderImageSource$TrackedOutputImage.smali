.class final Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageWrapper;
.implements Landroidx/camera/camera2/pipe/media/OutputImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TrackedOutputImage"
.end annotation


# instance fields
.field private final closed:Lht;

.field private final image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

.field private final outputId:I

.field private final streamId:I

.field final synthetic this$0:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;Landroidx/camera/camera2/pipe/media/ImageWrapper;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/media/ImageWrapper;",
            "II)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->this$0:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    iput p3, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->streamId:I

    iput p4, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->outputId:I

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->a(Z)Lht;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->closed:Lht;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;Landroidx/camera/camera2/pipe/media/ImageWrapper;IILjh2;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;-><init>(Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;Landroidx/camera/camera2/pipe/media/ImageWrapper;II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->closed:Lht;

    invoke-virtual {v0}, Lht;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->this$0:Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource;->closeAndDecrementImageCount$camera_camera2_pipe(Landroidx/camera/camera2/pipe/media/ImageWrapper;)V

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->close()V

    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getFormat()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getFormat()I

    move-result p0

    return p0
.end method

.method public getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOutputId-4LaLFng()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->outputId:I

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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getPlanes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStreamId-ptHMqGs()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->streamId:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getWidth()I

    move-result p0

    return p0
.end method

.method public setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->setCropRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputImage-s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/OutputImage;->getStreamId-ptHMqGs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/OutputImage;->getOutputId-4LaLFng()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroidx/camera/camera2/pipe/media/ImageWrapper;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 0
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

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/ImageReaderImageSource$TrackedOutputImage;->image:Landroidx/camera/camera2/pipe/media/ImageWrapper;

    invoke-interface {p0, p1}, Landroidx/camera/camera2/pipe/UnsafeWrapper;->unwrapAs(Lne4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
