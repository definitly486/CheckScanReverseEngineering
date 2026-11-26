.class final Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;
.super Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;
.source "SourceFile"


# instance fields
.field private final outConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/concurrent/DualOutConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

.field private final secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;


# direct methods
.method public constructor <init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Landroidx/camera/core/processing/SurfaceEdge;",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/concurrent/DualOutConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iput-object p1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz p2, :cond_1

    iput-object p2, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    if-eqz p3, :cond_0

    iput-object p3, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    return-void

    :cond_0
    const-string p0, "Null outConfigs"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "Null secondarySurfaceEdge"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "Null primarySurfaceEdge"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getPrimarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getSecondarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    invoke-virtual {p1}, Landroidx/camera/core/processing/concurrent/DualSurfaceProcessorNode$In;->getOutConfigs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getOutConfigs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/core/processing/concurrent/DualOutConfig;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    return-object p0
.end method

.method public getPrimarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    return-object p0
.end method

.method public getSecondarySurfaceEdge()Landroidx/camera/core/processing/SurfaceEdge;
    .locals 0

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "In{primarySurfaceEdge="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->primarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", secondarySurfaceEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->secondarySurfaceEdge:Landroidx/camera/core/processing/SurfaceEdge;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/core/processing/concurrent/AutoValue_DualSurfaceProcessorNode_In;->outConfigs:Ljava/util/List;

    const-string v1, "}"

    invoke-static {v1, p0, v0}, Lbg;->e(Ljava/lang/String;Ljava/util/List;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
