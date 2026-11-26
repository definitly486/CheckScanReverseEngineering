.class public final Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/featuregroup/impl/FeatureCombinationQuery;


# instance fields
.field private final cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

.field private final cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

.field private final cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;


# direct methods
.method public constructor <init>(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraPipe;Landroidx/camera/camera2/compat/quirk/CameraQuirks;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    iput-object p2, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    iput-object p3, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    return-void
.end method

.method public static final synthetic access$getCameraPipe$p(Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;)Landroidx/camera/camera2/pipe/CameraPipe;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraPipe:Landroidx/camera/camera2/pipe/CameraPipe;

    return-object p0
.end method


# virtual methods
.method public isSupported(Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    new-instance v1, Landroidx/camera/camera2/impl/CameraCallbackMap;

    invoke-direct {v1}, Landroidx/camera/camera2/impl/CameraCallbackMap;-><init>()V

    new-instance v2, Landroidx/camera/camera2/impl/ComboRequestListener;

    invoke-direct {v2}, Landroidx/camera/camera2/impl/ComboRequestListener;-><init>()V

    new-instance v3, Landroidx/camera/camera2/config/CameraConfig;

    iget-object v4, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    invoke-interface {v4}, Landroidx/camera/camera2/pipe/CameraMetadata;->getCamera-Dz_R5H8()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    invoke-direct {v3, v4, v12}, Landroidx/camera/camera2/config/CameraConfig;-><init>(Ljava/lang/String;Ljh2;)V

    iget-object v4, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    new-instance v5, Landroidx/camera/camera2/adapter/ZslControlNoOpImpl;

    invoke-direct {v5}, Landroidx/camera/camera2/adapter/ZslControlNoOpImpl;-><init>()V

    new-instance v6, Landroidx/camera/camera2/compat/workaround/TemplateParamsQuirkOverride;

    iget-object v7, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraQuirks:Landroidx/camera/camera2/compat/quirk/CameraQuirks;

    invoke-virtual {v7}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/camera/camera2/compat/workaround/TemplateParamsQuirkOverride;-><init>(Landroidx/camera/core/impl/Quirks;)V

    iget-object v7, p0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;->cameraMetadata:Landroidx/camera/camera2/pipe/CameraMetadata;

    const/16 v10, 0x180

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v11}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;-><init>(Landroidx/camera/camera2/impl/CameraCallbackMap;Landroidx/camera/camera2/impl/ComboRequestListener;Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/camera2/compat/quirk/CameraQuirks;Landroidx/camera/camera2/adapter/ZslControl;Landroidx/camera/camera2/compat/workaround/TemplateParamsOverride;Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/core/CameraXConfig;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;ILjh2;)V

    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v1

    const/16 v8, 0x78

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v9}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider;->create-79VDu0o$default(Landroidx/camera/camera2/impl/CameraGraphConfigProvider;ILandroidx/camera/core/impl/SessionConfig;ZLandroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Ljava/lang/Integer;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    move-result-object p1

    new-instance v0, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;

    invoke-direct {v0, p0, p1, v12}, Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl$isSupported$1;-><init>(Landroidx/camera/camera2/impl/FeatureCombinationQueryImpl;Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;Le02;)V

    sget-object p0, Lgx2;->b:Lgx2;

    invoke-static {p0, v0}, Lbv0;->a(Lo22;Lbm3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
