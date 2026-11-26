.class public final Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final height:I

.field private final implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

.field private final requestId:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .line 21
    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;-><init>(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(IILandroidx/camera/viewfinder/core/ImplementationMode;)V
    .locals 7

    .line 15
    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;-><init>(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;ILjh2;)V

    return-void
.end method

.method public constructor <init>(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->width:I

    .line 18
    iput p2, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->height:I

    .line 19
    iput-object p3, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

    .line 20
    iput-object p4, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->requestId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;ILjh2;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;-><init>(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;ILjava/lang/Object;)Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->width:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->height:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->requestId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->copy(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;)Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic copy(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;)Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;
    .locals 0

    new-instance p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;-><init>(IILandroidx/camera/viewfinder/core/ImplementationMode;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->width:I

    check-cast p1, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;

    iget v3, p1, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->width:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->height:I

    iget v3, p1, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->height:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

    iget-object v3, p1, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->requestId:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->requestId:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->height:I

    return p0
.end method

.method public final getImplementationMode()Landroidx/camera/viewfinder/core/ImplementationMode;
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

    return-object p0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->requestId:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->width:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->height:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->requestId:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewfinderSurfaceRequest(width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", implementationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->implementationMode:Landroidx/camera/viewfinder/core/ImplementationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/viewfinder/core/ViewfinderSurfaceRequest;->requestId:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
