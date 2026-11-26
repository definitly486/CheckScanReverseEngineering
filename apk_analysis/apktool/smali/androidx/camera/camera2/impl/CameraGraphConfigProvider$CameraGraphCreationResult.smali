.class public final Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/impl/CameraGraphConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CameraGraphCreationResult"
.end annotation


# instance fields
.field private final config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

.field private final streamConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "+",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iput-object p2, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;Landroidx/camera/camera2/pipe/CameraGraph$Config;Ljava/util/Map;ILjava/lang/Object;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->copy(Landroidx/camera/camera2/pipe/CameraGraph$Config;Ljava/util/Map;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Landroidx/camera/camera2/pipe/CameraGraph$Config;Ljava/util/Map;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "+",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;)",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;-><init>(Landroidx/camera/camera2/pipe/CameraGraph$Config;Ljava/util/Map;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object v3, p1, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    return-object p0
.end method

.method public final getStreamConfigMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/camera/camera2/pipe/CameraStream$Config;",
            "Landroidx/camera/core/impl/DeferrableSurface;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CameraGraphCreationResult(config="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->config:Landroidx/camera/camera2/pipe/CameraGraph$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamConfigMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->streamConfigMap:Ljava/util/Map;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lg2;->c(Ljava/lang/StringBuilder;Ljava/util/Map;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
