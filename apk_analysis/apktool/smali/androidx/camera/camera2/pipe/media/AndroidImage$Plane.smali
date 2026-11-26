.class public final Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/media/ImagePlane;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/media/AndroidImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plane"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final imagePlane:Landroid/media/Image$Plane;

.field private final pixelStride:I

.field private final rowStride:I


# direct methods
.method public constructor <init>(Landroid/media/Image$Plane;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->imagePlane:Landroid/media/Image$Plane;

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->pixelStride:I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v0

    iput v0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->rowStride:I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->buffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getPixelStride()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->pixelStride:I

    return p0
.end method

.method public getRowStride()I
    .locals 0

    iget p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->rowStride:I

    return p0
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

    const-class v0, Landroid/media/Image$Plane;

    invoke-static {p1, v0}, Lvh;->g(Lne4;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/media/AndroidImage$Plane;->imagePlane:Landroid/media/Image$Plane;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
