.class public final Lyads/bm;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lyads/cm;

.field public final c:Landroid/os/Handler;

.field public final synthetic d:Lyads/dm;


# direct methods
.method public constructor <init>(Lyads/dm;Landroid/os/Handler;Lyads/cm;)V
    .locals 0

    iput-object p1, p0, Lyads/bm;->d:Lyads/dm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lyads/bm;->c:Landroid/os/Handler;

    iput-object p3, p0, Lyads/bm;->b:Lyads/cm;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lyads/bm;->c:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lyads/bm;->d:Lyads/dm;

    iget-boolean v0, v0, Lyads/dm;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/bm;->b:Lyads/cm;

    check-cast p0, Lyads/bq2;

    iget-object p0, p0, Lyads/bq2;->a:Lyads/eq2;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lyads/eq2;->a(IIZ)V

    :cond_0
    return-void
.end method
