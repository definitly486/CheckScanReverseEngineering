.class public final Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/config/UseCaseCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;->create$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    move-result-object p0

    return-object p0
.end method

.method private static final create$lambda$0(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;
    .locals 8

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getValidSessionConfigOrNull()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v2

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v0

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v0

    goto :goto_0

    :cond_3
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v2}, Landroidx/camera/core/impl/SessionConfig;->getSessionType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->custom-EP6OhB0(I)I

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroidx/camera/core/impl/SessionProcessor;->getImplementationType()Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    :cond_4
    move-object v5, v0

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSurfaceToStreamUseCaseMap()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/camera/camera2/adapter/SessionConfigAdapter;->getSurfaceToStreamUseHintMap()Ljava/util/Map;

    move-result-object v7

    const/4 v3, 0x0

    move-object v0, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->create-79VDu0o(ILandroidx/camera/core/impl/SessionConfig;ZLandroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/core/impl/SessionProcessor;Z)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider;",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "+",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;",
            "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;",
            "Landroidx/camera/core/impl/SessionProcessor;",
            "Z)",
            "Landroidx/camera/camera2/config/UseCaseCameraConfig;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ll99;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p4

    move-object v3, p5

    move v2, p6

    invoke-direct/range {v0 .. v5}, Ll99;-><init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)V

    move-object p4, v3

    move-object p2, v5

    new-instance p5, Lfh8;

    invoke-direct {p5, v0}, Lfh8;-><init>(Lll3;)V

    new-instance p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-object p1, p3

    move-object p3, v1

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/config/UseCaseCameraConfig;-><init>(Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lcl4;)V

    return-object p0
.end method
