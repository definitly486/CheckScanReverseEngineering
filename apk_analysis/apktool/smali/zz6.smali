.class public final synthetic Lzz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder;

.field public final synthetic c:Landroidx/camera/core/SurfaceRequest;

.field public final synthetic d:Landroidx/camera/core/impl/Timebase;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzz6;->b:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Lzz6;->c:Landroidx/camera/core/SurfaceRequest;

    iput-object p3, p0, Lzz6;->d:Landroidx/camera/core/impl/Timebase;

    iput-boolean p4, p0, Lzz6;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzz6;->d:Landroidx/camera/core/impl/Timebase;

    iget-boolean v1, p0, Lzz6;->e:Z

    iget-object v2, p0, Lzz6;->b:Landroidx/camera/video/Recorder;

    iget-object p0, p0, Lzz6;->c:Landroidx/camera/core/SurfaceRequest;

    invoke-static {v2, p0, v0, v1}, Landroidx/camera/video/Recorder;->c(Landroidx/camera/video/Recorder;Landroidx/camera/core/SurfaceRequest;Landroidx/camera/core/impl/Timebase;Z)V

    return-void
.end method
