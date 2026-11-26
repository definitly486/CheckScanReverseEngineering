.class public final Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;
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


# direct methods
.method private constructor <init>(Lxs6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Lmb4;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;->cameraPipeJobProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Lmb4;",
            ">;)",
            "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static newInstance(Lmb4;)Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;-><init>(Lmb4;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;->cameraPipeJobProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmb4;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;->newInstance(Lmb4;)Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime_Factory;->get()Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;

    move-result-object p0

    return-object p0
.end method
