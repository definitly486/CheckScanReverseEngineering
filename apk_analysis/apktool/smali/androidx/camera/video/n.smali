.class public final synthetic Landroidx/camera/video/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder$SetupVideoTask;

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic d:Landroidx/camera/core/impl/Timebase;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/n;->b:Landroidx/camera/video/Recorder$SetupVideoTask;

    iput-object p2, p0, Landroidx/camera/video/n;->c:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Landroidx/camera/video/n;->d:Landroidx/camera/core/impl/Timebase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/n;->c:Landroidx/camera/core/SurfaceRequest;

    iget-object v1, p0, Landroidx/camera/video/n;->d:Landroidx/camera/core/impl/Timebase;

    iget-object p0, p0, Landroidx/camera/video/n;->b:Landroidx/camera/video/Recorder$SetupVideoTask;

    invoke-static {p0, v0, v1}, Landroidx/camera/video/Recorder$SetupVideoTask;->a(Landroidx/camera/video/Recorder$SetupVideoTask;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;)V

    return-void
.end method
