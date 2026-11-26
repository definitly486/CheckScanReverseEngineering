.class public final Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;
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

.field private final cameraPipeLifetimeProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;


# direct methods
.method private constructor <init>(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/config/ThreadConfigModule;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;",
            "Lxs6<",
            "Lmb4;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->module:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->cameraPipeLifetimeProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->cameraPipeJobProvider:Lxs6;

    return-void
.end method

.method public static create(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/camera2/pipe/config/ThreadConfigModule;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;",
            ">;",
            "Lxs6<",
            "Lmb4;",
            ">;)",
            "Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;-><init>(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static provideThreads(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)Landroidx/camera/camera2/pipe/core/Threads;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule;->provideThreads(Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/core/Threads;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->module:Landroidx/camera/camera2/pipe/config/ThreadConfigModule;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->cameraPipeLifetimeProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->cameraPipeJobProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb4;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->provideThreads(Landroidx/camera/camera2/pipe/config/ThreadConfigModule;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lmb4;)Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/ThreadConfigModule_ProvideThreadsFactory;->get()Landroidx/camera/camera2/pipe/core/Threads;

    move-result-object p0

    return-object p0
.end method
