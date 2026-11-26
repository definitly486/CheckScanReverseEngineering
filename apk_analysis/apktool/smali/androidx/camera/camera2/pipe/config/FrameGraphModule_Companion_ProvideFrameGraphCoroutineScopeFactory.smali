.class public final Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;
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
.field private final cameraPipeJobProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Lmb4;",
            ">;"
        }
    .end annotation
.end field

.field private final threadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
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
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Lmb4;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;->threadsProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;->cameraPipeJobProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Lmb4;",
            ">;)",
            "Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;-><init>(Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideFrameGraphCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Ly22;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/FrameGraphModule;->Companion:Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;

    invoke-virtual {v0, p0, p1}, Landroidx/camera/camera2/pipe/config/FrameGraphModule$Companion;->provideFrameGraphCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Ly22;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;->get()Ly22;

    move-result-object p0

    return-object p0
.end method

.method public get()Ly22;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;->threadsProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;->cameraPipeJobProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb4;

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/config/FrameGraphModule_Companion_ProvideFrameGraphCoroutineScopeFactory;->provideFrameGraphCoroutineScope(Landroidx/camera/camera2/pipe/core/Threads;Lmb4;)Ly22;

    move-result-object p0

    return-object p0
.end method
