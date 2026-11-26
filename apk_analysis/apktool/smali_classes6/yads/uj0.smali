.class public final Lyads/uj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lyads/tj0;

.field public final synthetic c:Lyads/vj0;


# direct methods
.method public constructor <init>(Lyads/vj0;)V
    .locals 0

    iput-object p1, p0, Lyads/uj0;->c:Lyads/vj0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lyads/uj0;->a:Landroid/os/Handler;

    new-instance p1, Lyads/tj0;

    invoke-direct {p1, p0}, Lyads/tj0;-><init>(Lyads/uj0;)V

    iput-object p1, p0, Lyads/uj0;->b:Lyads/tj0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object v0, p0, Lyads/uj0;->a:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lhea;

    invoke-direct {v1, v0}, Lhea;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lyads/uj0;->b:Lyads/tj0;

    invoke-virtual {p1, v1, p0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public final b(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lyads/uj0;->b:Lyads/tj0;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p0, p0, Lyads/uj0;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
