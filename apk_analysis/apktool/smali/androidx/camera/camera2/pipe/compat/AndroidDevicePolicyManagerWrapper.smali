.class public final Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/DevicePolicyManagerWrapper;


# instance fields
.field private final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public static final synthetic access$getDevicePolicyManager$p(Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method


# virtual methods
.method public getCamerasDisabled()Z
    .locals 1

    sget-object v0, Landroidx/camera/camera2/pipe/core/Debug;->INSTANCE:Landroidx/camera/camera2/pipe/core/Debug;

    const-string v0, "DevicePolicyManager#getCameraDisabled"

    :try_start_0
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;->access$getDevicePolicyManager$p(Landroidx/camera/camera2/pipe/compat/AndroidDevicePolicyManagerWrapper;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method
