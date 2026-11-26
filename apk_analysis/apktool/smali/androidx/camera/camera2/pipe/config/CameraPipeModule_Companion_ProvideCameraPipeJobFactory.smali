.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraPipeJobFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxs6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraPipeJobFactory$InstanceHolder;
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

.method public static create()Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraPipeJobFactory;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraPipeJobFactory$InstanceHolder;->INSTANCE:Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraPipeJobFactory;

    return-object v0
.end method

.method public static provideCameraPipeJob()Lmb4;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule;->Companion:Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideCameraPipeJob()Lmb4;

    move-result-object v0

    invoke-static {v0}, Lte6;->b(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraPipeJobFactory;->get()Lmb4;

    move-result-object p0

    return-object p0
.end method

.method public get()Lmb4;
    .locals 0

    .line 5
    invoke-static {}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideCameraPipeJobFactory;->provideCameraPipeJob()Lmb4;

    move-result-object p0

    return-object p0
.end method
