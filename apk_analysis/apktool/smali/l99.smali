.class public final synthetic Ll99;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/camera/core/impl/SessionProcessor;

.field public final synthetic e:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

.field public final synthetic f:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll99;->b:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iput-boolean p2, p0, Ll99;->c:Z

    iput-object p3, p0, Ll99;->d:Landroidx/camera/core/impl/SessionProcessor;

    iput-object p4, p0, Ll99;->e:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    iput-object p5, p0, Ll99;->f:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ll99;->e:Landroidx/camera/camera2/impl/CameraGraphConfigProvider;

    iget-object v1, p0, Ll99;->f:Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;

    iget-object v2, p0, Ll99;->b:Landroidx/camera/camera2/adapter/SessionConfigAdapter;

    iget-boolean v3, p0, Ll99;->c:Z

    iget-object p0, p0, Ll99;->d:Landroidx/camera/core/impl/SessionProcessor;

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/camera/camera2/config/UseCaseCameraConfig$Companion;->a(Landroidx/camera/camera2/adapter/SessionConfigAdapter;ZLandroidx/camera/core/impl/SessionProcessor;Landroidx/camera/camera2/impl/CameraGraphConfigProvider;Landroidx/camera/camera2/adapter/GraphStateToCameraStateAdapter;)Landroidx/camera/camera2/impl/CameraGraphConfigProvider$CameraGraphCreationResult;

    move-result-object p0

    return-object p0
.end method
