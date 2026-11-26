.class public final Landroidx/camera/camera2/config/UseCaseCameraConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;


# instance fields
.field private final cameraGraphFactory:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

.field private final lazyCreationResult:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

.field private final sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->Companion:Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;

    return-void
.end method

.method public constructor <init>(Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lcl4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "+",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;",
            "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            "Landroidx/camera/core/impl/SessionProcessor;",
            "Lcl4<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lnl3;

    iput-object p2, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    iput-object p3, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iput-object p4, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    iput-object p5, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lcl4;

    return-void
.end method

.method public static synthetic a(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->provideUseCaseGraphContext$lambda$1(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/pipe/CameraGraph;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->provideUseCaseGraphContext$lambda$2(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final component1()Lnl3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnl3<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lnl3;

    return-object p0
.end method

.method private final component2()Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    return-object p0
.end method

.method private final component3()Landroidx/camera/camera2/adapter/SessionConfigAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    return-object p0
.end method

.method private final component4()Landroidx/camera/core/impl/SessionProcessor;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    return-object p0
.end method

.method private final component5()Lcl4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcl4<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lcl4;

    return-object p0
.end method

.method public static synthetic copy$default(Landroidx/camera/camera2/config/UseCaseCameraConfig;Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lcl4;ILjava/lang/Object;)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lnl3;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lcl4;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->copy(Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lcl4;)Landroidx/camera/camera2/config/UseCaseCameraConfig;

    move-result-object p0

    return-object p0
.end method

.method private static final provideUseCaseGraphContext$lambda$1(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Landroidx/camera/camera2/pipe/CameraGraph;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lnl3;

    invoke-virtual {p0}, Landroidx/camera/camera2/config/UseCaseCameraConfig;->getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/CameraGraph;

    return-object p0
.end method

.method private static final provideUseCaseGraphContext$lambda$2(Landroidx/camera/camera2/config/UseCaseCameraConfig;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->getStreamConfigMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lcl4;)Landroidx/camera/camera2/config/UseCaseCameraConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl3<",
            "-",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            "+",
            "Landroidx/camera/camera2/pipe/CameraGraph;",
            ">;",
            "Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;",
            "Landroidx/camera/camera2/adapter/SessionConfigAdapter;",
            "Landroidx/camera/core/impl/SessionProcessor;",
            "Lcl4<",
            "Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;",
            ">;)",
            "Landroidx/camera/camera2/config/UseCaseCameraConfig;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-direct/range {p0 .. p5}, Landroidx/camera/camera2/config/UseCaseCameraConfig;-><init>(Lnl3;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Landroidx/camera/camera2/adapter/SessionConfigAdapter;Landroidx/camera/core/impl/SessionProcessor;Lcl4;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-object v3, p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    iget-object v3, p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    iget-object p1, p1, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCameraGraphConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    invoke-virtual {p0}, Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;->getConfig()Landroidx/camera/camera2/pipe/CameraGraph$Config;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final provideSessionConfigAdapter()Landroidx/camera/camera2/adapter/SessionConfigAdapter;
    .locals 0
    .annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    return-object p0
.end method

.method public final provideSessionProcessor()Landroidx/camera/core/impl/SessionProcessor;
    .locals 0
    .annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
    .end annotation

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    return-object p0
.end method

.method public final provideUseCaseGraphContext(Landroidx/camera/camera2/adapter/CameraStateAdapter;)Landroidx/camera/camera2/config/UseCaseGraphContext;
    .locals 10
    .annotation runtime Landroidx/camera/camera2/config/UseCaseCameraScope;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/camera/camera2/impl/Camera2Logger;->INSTANCE:Landroidx/camera/camera2/impl/Camera2Logger;

    const-string v0, "CXCP"

    invoke-static {v0}, Landroidx/camera/core/Logger;->isDebugEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/impl/Camera2Logger;->access$getTRUNCATED_TAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Prepared UseCaseGraphContext (Deferred)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lj99;

    invoke-direct {v3, p0}, Lj99;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    new-instance v6, Lk99;

    invoke-direct {v6, p0}, Lk99;-><init>(Landroidx/camera/camera2/config/UseCaseCameraConfig;)V

    iget-object v5, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    new-instance v2, Landroidx/camera/camera2/config/UseCaseGraphContext;

    const/16 v8, 0x10

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Landroidx/camera/camera2/config/UseCaseGraphContext;-><init>(Lws6;Landroidx/camera/camera2/adapter/CameraStateAdapter;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;Lws6;Ljava/util/Map;ILjh2;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UseCaseCameraConfig(cameraGraphFactory="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->cameraGraphFactory:Lnl3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", graphStateToCameraStateAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->graphStateToCameraStateAdapter:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionConfigAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionConfigAdapter:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionProcessor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->sessionProcessor:Landroidx/camera/core/impl/SessionProcessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lazyCreationResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/camera/camera2/config/UseCaseCameraConfig;->lazyCreationResult:Lcl4;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
