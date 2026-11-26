.class public final synthetic Lx01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroidx/camera/core/impl/CameraThreadConfig;

.field public final synthetic d:Landroidx/camera/camera2/adapter/CameraFactoryAdapter;

.field public final synthetic e:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx01;->b:Landroid/content/Context;

    iput-object p2, p0, Lx01;->c:Landroidx/camera/core/impl/CameraThreadConfig;

    iput-object p3, p0, Lx01;->d:Landroidx/camera/camera2/adapter/CameraFactoryAdapter;

    iput-object p4, p0, Lx01;->e:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lx01;->d:Landroidx/camera/camera2/adapter/CameraFactoryAdapter;

    iget-object v1, p0, Lx01;->e:Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;

    iget-object v2, p0, Lx01;->b:Landroid/content/Context;

    iget-object p0, p0, Lx01;->c:Landroidx/camera/core/impl/CameraThreadConfig;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/camera2/adapter/CameraFactoryAdapter;->a(Landroid/content/Context;Landroidx/camera/core/impl/CameraThreadConfig;Landroidx/camera/camera2/adapter/CameraFactoryAdapter;Landroidx/camera/camera2/impl/CameraInteropStateCallbackRepository;)Landroidx/camera/camera2/config/CameraAppComponent;

    move-result-object p0

    return-object p0
.end method
