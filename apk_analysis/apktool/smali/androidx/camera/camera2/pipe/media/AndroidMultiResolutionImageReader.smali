.class public final Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImageReaderWrapper;
.implements Landroid/media/ImageReader$OnImageAvailableListener;
.implements Landroidx/camera/camera2/pipe/CameraOnActiveOutputSurfacesListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;


# instance fields
.field private final capacity:I

.field private final concurrentOutputsEnabled:Z

.field private final multiResolutionImageReader:Landroid/hardware/camera2/MultiResolutionImageReader;

.field private final onExpectedOutputsListener$delegate:Lot;

.field private final onImageListener$delegate:Lot;

.field private final outputConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final singleOutputIdSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Ljava/util/Set<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;>;"
        }
    .end annotation
.end field

.field private final streamFormat:I

.field private final streamId:I

.field private final streamInfoToOutputIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;"
        }
    .end annotation
.end field

.field private final surfaceToOutputIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->Companion:Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/MultiResolutionImageReader;IIILjava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/MultiResolutionImageReader;",
            "III",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/view/Surface;",
            "Landroidx/camera/camera2/pipe/OutputId;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->multiResolutionImageReader:Landroid/hardware/camera2/MultiResolutionImageReader;

    iput p2, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamFormat:I

    iput p3, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->capacity:I

    iput p4, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamId:I

    iput-object p5, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->outputConfigurations:Ljava/util/List;

    iput-object p6, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamInfoToOutputIdMap:Ljava/util/Map;

    iput-object p7, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->surfaceToOutputIdMap:Ljava/util/Map;

    iput-boolean p8, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->concurrentOutputsEnabled:Z

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result p2

    invoke-static {p2}, Lm05;->b(I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p1, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->singleOutputIdSets:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p2

    iput-object p2, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->onImageListener$delegate:Lot;

    invoke-static {p1}, Lkt;->d(Ljava/lang/Object;)Lot;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->onExpectedOutputsListener$delegate:Lot;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/MultiResolutionImageReader;IIILjava/util/List;Ljava/util/Map;Ljava/util/Map;ZLjh2;)V
    .locals 0

    .line 98
    invoke-direct/range {p0 .. p8}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;-><init>(Landroid/hardware/camera2/MultiResolutionImageReader;IIILjava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic a(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->toString$lambda$0(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static final toString$lambda$0(Landroid/hardware/camera2/params/MultiResolutionStreamInfo;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->multiResolutionImageReader:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->multiResolutionImageReader:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flush()V

    return-void
.end method

.method public getCapacity()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->capacity:I

    return p0
.end method

.method public getOnExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->onExpectedOutputsListener$delegate:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;

    return-object p0
.end method

.method public getOnImageListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->onImageListener$delegate:Lot;

    iget-object p0, p0, Lot;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;

    return-object p0
.end method

.method public final getOutputConfigurations$camera_camera2_pipe()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->outputConfigurations:Ljava/util/List;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->multiResolutionImageReader:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public onActiveOutputSurfaces(Ljava/util/List;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/Surface;",
            ">;JJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    const/4 p5, 0x1

    const-string v0, ": "

    const-string v1, "Unrecognized active surface in "

    if-ne p4, p5, :cond_1

    const/4 p4, 0x0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    iget-object p4, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->singleOutputIdSets:Ljava/util/Map;

    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_0

    check-cast p4, Ljava/util/Set;

    goto :goto_1

    :cond_0
    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamId:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0, p1}, Lfg;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance p4, Ljava/util/ArrayList;

    const/16 p5, 0xa

    invoke-static {p1, p5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result p5

    invoke-direct {p4, p5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/Surface;

    iget-object v2, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->surfaceToOutputIdMap:Ljava/util/Map;

    invoke-interface {v2, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    check-cast v2, Landroidx/camera/camera2/pipe/OutputId;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/OutputId;->unbox-impl()I

    move-result p5

    invoke-static {p5}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamId:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/StreamId;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0, p5}, Lfg;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {p4}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p4

    :goto_1
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->getOnExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0, p2, p3, p4}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;->onExpectedOutputs(JLjava/util/Set;)V

    :cond_4
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->getOnImageListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->multiResolutionImageReader:Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/MultiResolutionImageReader;->getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamInfoToOutputIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    check-cast v3, Landroidx/camera/camera2/pipe/OutputId;

    invoke-virtual {v3}, Landroidx/camera/camera2/pipe/OutputId;->unbox-impl()I

    move-result p1

    iget-boolean v2, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->concurrentOutputsEnabled:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->getOnExpectedOutputsListener()Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    invoke-static {p1}, Landroidx/camera/camera2/pipe/OutputId;->box-impl(I)Landroidx/camera/camera2/pipe/OutputId;

    move-result-object v5

    invoke-static {v5}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;->onExpectedOutputs(JLjava/util/Set;)V

    :cond_2
    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamId:I

    new-instance v2, Landroidx/camera/camera2/pipe/media/AndroidImage;

    invoke-direct {v2, v0}, Landroidx/camera/camera2/pipe/media/AndroidImage;-><init>(Landroid/media/Image;)V

    invoke-interface {v1, p0, p1, v2}, Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;->onImage-AQuxepk(IILandroidx/camera/camera2/pipe/media/ImageWrapper;)V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": Failed to find OutputId for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " based on streamInfo "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x21

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public setOnExpectedOutputsListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnExpectedOutputsListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->onExpectedOutputsListener$delegate:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public setOnImageListener(Landroidx/camera/camera2/pipe/media/ImageReaderWrapper$OnImageListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->onImageListener$delegate:Lot;

    invoke-virtual {p0, p1}, Lot;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamInfoToOutputIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    new-instance v6, Lcj;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    const/16 v7, 0x19

    const/4 v2, 0x0

    const-string v3, "["

    const-string v4, "]"

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lqn1;->a0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ILnl3;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MultiResolutionImageReader@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/16 v3, 0x10

    invoke-static {v3}, Lga1;->b(I)V

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->streamFormat:I

    invoke-static {p0}, Landroidx/camera/camera2/pipe/StreamFormat;->getName-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    const-class v0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-class v0, Landroid/hardware/camera2/MultiResolutionImageReader;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidMultiResolutionImageReader;->multiResolutionImageReader:Landroid/hardware/camera2/MultiResolutionImageReader;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
