.class public final synthetic Ly01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/adapter/CameraFactoryProvider;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/camera/core/impl/CameraThreadConfig;

.field public final synthetic e:Landroidx/camera/camera2/pipe/core/DurationNs;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/CameraFactoryProvider;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly01;->b:Landroidx/camera/camera2/adapter/CameraFactoryProvider;

    iput-object p2, p0, Ly01;->c:Landroid/content/Context;

    iput-object p3, p0, Ly01;->d:Landroidx/camera/core/impl/CameraThreadConfig;

    iput-object p4, p0, Ly01;->e:Landroidx/camera/camera2/pipe/core/DurationNs;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly01;->d:Landroidx/camera/core/impl/CameraThreadConfig;

    iget-object v1, p0, Ly01;->e:Landroidx/camera/camera2/pipe/core/DurationNs;

    iget-object v2, p0, Ly01;->b:Landroidx/camera/camera2/adapter/CameraFactoryProvider;

    iget-object p0, p0, Ly01;->c:Landroid/content/Context;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/camera2/adapter/CameraFactoryProvider;->a(Landroidx/camera/camera2/adapter/CameraFactoryProvider;Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/pipe/core/DurationNs;)Landroidx/camera/camera2/pipe/CameraPipe;

    move-result-object p0

    return-object p0
.end method
