.class public final synthetic Lbp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

.field public final synthetic c:Landroidx/camera/core/CameraX;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbp4;->b:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    iput-object p2, p0, Lbp4;->c:Landroidx/camera/core/CameraX;

    iput-object p3, p0, Lbp4;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbp4;->d:Landroid/content/Context;

    check-cast p1, Ljava/lang/Void;

    iget-object v1, p0, Lbp4;->b:Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;

    iget-object p0, p0, Lbp4;->c:Landroidx/camera/core/CameraX;

    invoke-static {v1, p0, v0, p1}, Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;->d(Landroidx/camera/lifecycle/LifecycleCameraProviderImpl;Landroidx/camera/core/CameraX;Landroid/content/Context;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
