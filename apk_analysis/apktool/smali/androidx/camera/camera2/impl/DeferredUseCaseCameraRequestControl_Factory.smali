.class public final Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;
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
.field private final implProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final threadsProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
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
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;->implProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;->threadsProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;)Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ">;)",
            "Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;-><init>(Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;)Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lws6<",
            "Landroidx/camera/camera2/impl/UseCaseCameraRequestControlImpl;",
            ">;",
            "Landroidx/camera/camera2/impl/UseCaseThreads;",
            ")",
            "Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    invoke-direct {v0, p0, p1}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;-><init>(Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;->implProvider:Lxs6;

    iget-object p0, p0, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;->threadsProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/impl/UseCaseThreads;

    invoke-static {v0, p0}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;->newInstance(Lws6;Landroidx/camera/camera2/impl/UseCaseThreads;)Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0}, Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl_Factory;->get()Landroidx/camera/camera2/impl/DeferredUseCaseCameraRequestControl;

    move-result-object p0

    return-object p0
.end method
