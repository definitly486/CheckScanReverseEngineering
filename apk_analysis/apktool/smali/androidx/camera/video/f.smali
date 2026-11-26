.class public final synthetic Landroidx/camera/video/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder;

.field public final synthetic c:Landroidx/camera/video/Recorder$RecordingRecord;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/f;->b:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/f;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-boolean p3, p0, Landroidx/camera/video/f;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/camera/video/f;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    iget-boolean v1, p0, Landroidx/camera/video/f;->d:Z

    iget-object p0, p0, Landroidx/camera/video/f;->b:Landroidx/camera/video/Recorder;

    invoke-static {p0, v0, v1}, Landroidx/camera/video/Recorder;->n(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;Z)V

    return-void
.end method
