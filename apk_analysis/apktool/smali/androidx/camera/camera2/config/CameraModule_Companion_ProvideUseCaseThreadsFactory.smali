.class public final Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# instance fields
.field private final cameraConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final cameraThreadConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraThreadConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraThreadConfig;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;->cameraConfigProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;->cameraThreadConfigProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;)Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/config/CameraConfig;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/core/impl/CameraThreadConfig;",
            ">;)",
            "Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;-><init>(Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideUseCaseThreads(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/camera2/impl/UseCaseThreads;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/config/CameraModule;->Companion:Landroidx/camera/camera2/config/CameraModule$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/camera2/config/CameraModule$Companion;->provideUseCaseThreads(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/camera2/impl/UseCaseThreads;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/UseCaseThreads;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;->cameraConfigProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/config/CameraConfig;

    iget-object p0, p0, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;->cameraThreadConfigProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/CameraThreadConfig;

    invoke-static {v0, p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;->provideUseCaseThreads(Landroidx/camera/camera2/config/CameraConfig;Landroidx/camera/core/impl/CameraThreadConfig;)Landroidx/camera/camera2/impl/UseCaseThreads;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroidx/camera/camera2/config/CameraModule_Companion_ProvideUseCaseThreadsFactory;->get()Landroidx/camera/camera2/impl/UseCaseThreads;

    move-result-object p0

    return-object p0
.end method
