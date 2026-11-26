.class public final Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;
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
.field private final graphConfigProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final streamGraphProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
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
.method private constructor <init>(Lxs6;Lxs6;Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->threadsProvider:Lxs6;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->graphConfigProvider:Lxs6;

    iput-object p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->streamGraphProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;Lxs6;Lxs6;)Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/core/Threads;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/CameraGraph$Config;",
            ">;",
            "Lxs6<",
            "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;",
            ">;)",
            "Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;-><init>(Lxs6;Lxs6;Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;

    invoke-direct {v0, p0, p1, p2}, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;-><init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;
    .locals 2

    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->threadsProvider:Lxs6;

    invoke-interface {v0}, Lws6;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/camera2/pipe/core/Threads;

    iget-object v1, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->graphConfigProvider:Lxs6;

    invoke-interface {v1}, Lws6;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->streamGraphProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    invoke-static {v0, v1, p0}, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->newInstance(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;)Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory_Factory;->get()Landroidx/camera/camera2/pipe/compat/AndroidPSessionFactory;

    move-result-object p0

    return-object p0
.end method
