.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory$InstanceHolder;
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

.method public static create()Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory$InstanceHolder;->INSTANCE:Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory;

    return-object v0
.end method

.method public static provideCameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule;->Companion:Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideCameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    move-result-object v0

    invoke-static {v0}, Lte6;->b(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/CameraSurfaceManager;
    .locals 0

    .line 5
    invoke-static {}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory;->provideCameraSurfaceManager()Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraSurfaceManagerFactory;->get()Landroidx/camera/camera2/pipe/CameraSurfaceManager;

    move-result-object p0

    return-object p0
.end method
