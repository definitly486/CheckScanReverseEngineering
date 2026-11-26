.class public final Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;
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
.field private final cameraPipeContextProvider:Lxs6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxs6<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;->cameraPipeContextProvider:Lxs6;

    return-void
.end method

.method public static create(Lxs6;)Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxs6<",
            "Landroid/content/Context;",
            ">;)",
            "Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;"
        }
    .end annotation

    new-instance v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;-><init>(Lxs6;)V

    return-object v0
.end method

.method public static provideDevicePolicyManagerWrapper(Landroid/content/Context;)Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/config/CameraPipeModule;->Companion:Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;

    invoke-virtual {v0, p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule$Companion;->provideDevicePolicyManagerWrapper(Landroid/content/Context;)Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    move-result-object p0

    invoke-static {p0}, Lte6;->b(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public get()Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;->cameraPipeContextProvider:Lxs6;

    invoke-interface {p0}, Lws6;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;->provideDevicePolicyManagerWrapper(Landroid/content/Context;)Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/config/CameraPipeModule_Companion_ProvideDevicePolicyManagerWrapperFactory;->get()Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;

    move-result-object p0

    return-object p0
.end method
