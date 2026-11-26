.class public final Landroidx/camera/camera2/pipe/internal/GraphSessionLock_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/internal/GraphSessionLock_Factory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxs6;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Landroidx/camera/camera2/pipe/internal/GraphSessionLock_Factory;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock_Factory$InstanceHolder;->INSTANCE:Landroidx/camera/camera2/pipe/internal/GraphSessionLock_Factory;

    return-object v0
.end method

.method public static newInstance()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;
    .locals 0

    .line 5
    invoke-static {}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock_Factory;->newInstance()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/internal/GraphSessionLock_Factory;->get()Landroidx/camera/camera2/pipe/internal/GraphSessionLock;

    move-result-object p0

    return-object p0
.end method
