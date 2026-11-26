.class public final Lyads/pq6;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lyads/qq6;->d:Lyads/qq6;

    iget-boolean p1, p0, Lyads/qq6;->c:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lyads/qq6;->a(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lyads/qq6;->d:Lyads/qq6;

    iget-boolean p1, p0, Lyads/qq6;->c:Z

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lyads/qq6;->a(ZZ)V

    :goto_0
    iput-boolean p2, p0, Lyads/qq6;->b:Z

    :cond_1
    return-void
.end method
