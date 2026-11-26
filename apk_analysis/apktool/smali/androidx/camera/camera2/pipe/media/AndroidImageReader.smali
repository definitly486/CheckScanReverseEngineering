.class public final Landroidx/camera/camera2/pipe/media/AndroidImageReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/AndroidImageReader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/media/AndroidImageReader$Companion;

.field public static final IMAGEREADER_MAX_CAPACITY:I = 0x36


# instance fields
.field private final capacity:I

.field private final imageReader:Landroid/media/ImageReader;

.field private final onExpectedOutputsListener$delegate:Lot;

.field private final onImageListener$delegate:Lot;

.field private final outputId:I

.field private final outputIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;"
        }
    .end annotation
.end field

.field private final streamId:I

.field private final surface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/media/AndroidImageReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/media/AndroidImageReader$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->Companion:Landroidx/camera/camera2/pipe/media/AndroidImageReader$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/media/ImageReader;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    iput p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->capacity:I

    iput p3, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->streamId:I

    iput p4, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->outputId:I

    invoke-static {p4}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object p2

    invoke-static {p2}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->outputIdSet:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->surface:Landroid/view/Surface;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->onImageListener$delegate:Lot;

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->onExpectedOutputsListener$delegate:Lot;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/ImageReader;IIILjh2;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/media/AndroidImageReader;-><init>(Landroid/media/ImageReader;III)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method public flush()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/Api28Compat;->discardFreeBuffers(Landroid/media/ImageReader;)V

    :cond_1
    return-void
.end method

.method public getCapacity()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->capacity:I

    return p0
.end method

.method public getOnExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->onExpectedOutputsListener$delegate:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;

    return-object p0
.end method

.method public getOnImageListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->onImageListener$delegate:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->getOnImageListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->getOnExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->outputIdSet:Ljava/util/Set;

    invoke-interface {v1, v2, v3, v4}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;->onExpectedOutputs(JLjava/util/Set;)V

    :cond_2
    iget v1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->streamId:I

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->outputId:I

    new-instance v2, Landroidx/camera/camera2/pipe/media/AndroidImage;

    invoke-direct {v2, p1}, Landroidx/camera/camera2/pipe/media/AndroidImage;-><init>(Landroid/media/Image;)V

    invoke-interface {v0, v1, p0, v2}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;->onImage-AQuxepk(IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V

    :cond_3
    return-void
.end method

.method public setOnExpectedOutputsListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->onExpectedOutputsListener$delegate:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnImageListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->onImageListener$delegate:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImageReader@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lga1;->b(I)V

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->constructor-impl(I)I

    move-result v1

    invoke-static {v1}, Landroidx/camera/camera2/pipe/StreamFormat;->getName-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unwrapAs(Lne4;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lne4<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Landroid/media/ImageReader;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImageReader;->imageReader:Landroid/media/ImageReader;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
