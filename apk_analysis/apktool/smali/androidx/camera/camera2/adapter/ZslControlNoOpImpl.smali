.class public final Landroidx/camera/camera2/adapter/ZslControlNoOpImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/adapter/ZslControl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addZslConfig(Landroidx/camera/core/impl/SessionConfig$Builder;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public clearZslConfig()V
    .locals 0

    return-void
.end method

.method public dequeueImageFromBuffer()Landroidx/camera/core/ImageProxy;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isZslDisabledByFlashMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZslDisabledByUserCaseConfig()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZslSurface(Landroidx/camera/core/impl/DeferrableSurface;Landroidx/camera/core/impl/SessionConfig;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return p0
.end method

.method public setZslDisabledByFlashMode(Z)V
    .locals 0

    return-void
.end method

.method public setZslDisabledByUserCaseConfig(Z)V
    .locals 0

    return-void
.end method
