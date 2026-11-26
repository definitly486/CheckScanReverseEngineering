.class public final synthetic Landroidx/camera/video/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/video/Recorder;

.field public final synthetic c:Landroidx/camera/video/Recorder$RecordingRecord;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/Recorder;Landroidx/camera/video/Recorder$RecordingRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/video/d;->b:Landroidx/camera/video/Recorder;

    iput-object p2, p0, Landroidx/camera/video/d;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    return-void
.end method


# virtual methods
.method public final attachCompleter(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/camera/video/d;->b:Landroidx/camera/video/Recorder;

    iget-object p0, p0, Landroidx/camera/video/d;->c:Landroidx/camera/video/Recorder$RecordingRecord;

    invoke-static {v0, p1, p0}, Landroidx/camera/video/Recorder;->o(Landroidx/camera/video/Recorder;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;Landroidx/camera/video/Recorder$RecordingRecord;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
