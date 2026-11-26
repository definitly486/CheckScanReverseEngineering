.class public final synthetic Landroidx/camera/video/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder;

.field public final synthetic c:Landroidx/camera/video/Recorder$RecordingRecord;

.field public final synthetic d:J

.field public final synthetic e:I

.field public final synthetic f:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/b;->b:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/b;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    iput-wide p3, p0, Landroidx/camera/video/b;->d:J

    iput p5, p0, Landroidx/camera/video/b;->e:I

    iput-object p6, p0, Landroidx/camera/video/b;->f:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v4, p0, Landroidx/camera/video/b;->e:I

    iget-object v5, p0, Landroidx/camera/video/b;->f:Ljava/lang/Throwable;

    iget-object v0, p0, Landroidx/camera/video/b;->b:Landroidx/camera/video/Recorder;

    iget-object v1, p0, Landroidx/camera/video/b;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    iget-wide v2, p0, Landroidx/camera/video/b;->d:J

    invoke-static/range {v0 .. v5}, Landroidx/camera/video/Recorder;->i(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;JILjava/lang/Throwable;)V

    return-void
.end method
