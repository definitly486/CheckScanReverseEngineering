.class public final Lyads/jj0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroid/media/AudioTrack;

.field public final synthetic c:Lyads/vj0;


# direct methods
.method public constructor <init>(Lyads/vj0;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lyads/jj0;->c:Lyads/vj0;

    iput-object p2, p0, Lyads/jj0;->b:Landroid/media/AudioTrack;

    const-string p1, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lyads/jj0;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lyads/jj0;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lyads/jj0;->c:Lyads/vj0;

    iget-object p0, p0, Lyads/vj0;->h:Lyads/m50;

    invoke-virtual {p0}, Lyads/m50;->d()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lyads/jj0;->c:Lyads/vj0;

    iget-object p0, p0, Lyads/vj0;->h:Lyads/m50;

    invoke-virtual {p0}, Lyads/m50;->d()Z

    throw v0
.end method
