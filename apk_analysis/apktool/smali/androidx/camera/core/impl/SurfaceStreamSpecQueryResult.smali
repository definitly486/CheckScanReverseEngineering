.class public final Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final attachedSurfaceStreamSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSupportedFrameRate:I

.field private final useCaseStreamSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "+",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    iput-object p2, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    iput p3, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;Ljava/util/Map;Ljava/util/Map;IILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->copy(Ljava/util/Map;Ljava/util/Map;I)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    return p0
.end method

.method public final copy(Ljava/util/Map;Ljava/util/Map;I)Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;+",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "+",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;I)",
            "Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    invoke-direct {p0, p1, p2, p3}, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    iget p1, p1, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAttachedSurfaceStreamSpecs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/AttachedSurfaceInfo;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    return-object p0
.end method

.method public final getMaxSupportedFrameRate()I
    .locals 0

    iget p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    return p0
.end method

.method public final getUseCaseStreamSpecs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/UseCaseConfig<",
            "*>;",
            "Landroidx/camera/core/impl/StreamSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SurfaceStreamSpecQueryResult(useCaseStreamSpecs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->useCaseStreamSpecs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attachedSurfaceStreamSpecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->attachedSurfaceStreamSpecs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxSupportedFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/camera/core/impl/SurfaceStreamSpecQueryResult;->maxSupportedFrameRate:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
