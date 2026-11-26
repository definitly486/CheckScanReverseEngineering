.class public final Lyads/aw3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bw3;


# direct methods
.method public constructor <init>(Lyads/bw3;Lyads/rw5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/aw3;->a:Lyads/bw3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 18
    iget-object p0, p0, Lyads/aw3;->a:Lyads/bw3;

    .line 19
    iget-object p0, p0, Lyads/bw3;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lyads/rw5;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p0, p0, Lyads/aw3;->a:Lyads/bw3;

    iget-object p0, p0, Lyads/bw3;->a:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
