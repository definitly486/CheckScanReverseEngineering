.class public final Landroidx/camera/camera2/pipe/compat/OutputConfigurations;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final all:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final deferred:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final outputSurfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private final postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "+",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/pipe/compat/OutputConfigurations;Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;ILjava/lang/Object;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->copy(Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    return-object p0
.end method

.method public final component3()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    return-object p0
.end method

.method public final component4()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/OutputConfigurations;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "+",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "+",
            "Landroid/view/Surface;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurations;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;-><init>(Ljava/util/List;Ljava/util/Map;Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    iget-object v3, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAll()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    return-object p0
.end method

.method public final getDeferred()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/StreamId;",
            "Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    return-object p0
.end method

.method public final getOutputSurfaceMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/OutputId;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    return-object p0
.end method

.method public final getPostviewOutput()Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lk;->c(Ljava/util/Map;II)I

    move-result v0

    iget-object v2, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputConfigurations(all="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->all:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deferred="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->deferred:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postviewOutput="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->postviewOutput:Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputSurfaceMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/OutputConfigurations;->outputSurfaceMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
