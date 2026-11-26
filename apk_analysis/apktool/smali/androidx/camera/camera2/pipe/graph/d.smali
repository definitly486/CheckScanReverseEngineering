.class public final synthetic Landroidx/camera/camera2/pipe/graph/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

.field public final synthetic c:Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/pipe/graph/d;->b:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    iput-object p2, p0, Landroidx/camera/camera2/pipe/graph/d;->c:Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/camera2/pipe/graph/d;->b:Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;

    iget-object p0, p0, Landroidx/camera/camera2/pipe/graph/d;->c:Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;

    invoke-static {v0, p0}, Landroidx/camera/camera2/pipe/graph/CameraGraphImpl$latestFrameNumber$1;->i(Landroidx/camera/camera2/pipe/graph/CameraGraphImpl;Landroidx/camera/camera2/pipe/graph/LatestFrameNumberListener;)Lj59;

    move-result-object p0

    return-object p0
.end method
