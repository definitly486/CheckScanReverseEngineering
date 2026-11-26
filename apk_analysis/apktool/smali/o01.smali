.class public final synthetic Lo01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/view/CameraController;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/camera/core/SessionConfig;

.field public final synthetic e:Landroidx/camera/core/CameraSelector;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/CameraController;ILandroidx/camera/core/SessionConfig;Landroidx/camera/core/CameraSelector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo01;->b:Landroidx/camera/view/CameraController;

    iput p2, p0, Lo01;->c:I

    iput-object p3, p0, Lo01;->d:Landroidx/camera/core/SessionConfig;

    iput-object p4, p0, Lo01;->e:Landroidx/camera/core/CameraSelector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo01;->d:Landroidx/camera/core/SessionConfig;

    iget-object v1, p0, Lo01;->e:Landroidx/camera/core/CameraSelector;

    iget-object v2, p0, Lo01;->b:Landroidx/camera/view/CameraController;

    iget p0, p0, Lo01;->c:I

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/view/CameraController;->a(Landroidx/camera/view/CameraController;ILandroidx/camera/core/SessionConfig;Landroidx/camera/core/CameraSelector;)V

    return-void
.end method
