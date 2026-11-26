.class public final synthetic Ln31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/impl/CapturePipelineImpl;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/impl/CapturePipelineImpl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln31;->b:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    iput-boolean p2, p0, Ln31;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ln31;->c:Z

    check-cast p1, Landroidx/camera/camera2/pipe/FrameMetadata;

    iget-object p0, p0, Ln31;->b:Landroidx/camera/camera2/impl/CapturePipelineImpl;

    invoke-static {p0, v0, p1}, Landroidx/camera/camera2/impl/CapturePipelineImpl;->d(Landroidx/camera/camera2/impl/CapturePipelineImpl;ZLandroidx/camera/camera2/pipe/FrameMetadata;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
