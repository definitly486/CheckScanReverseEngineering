.class public final Lm18$c$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm18$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm18$c;


# direct methods
.method public constructor <init>(Lm18$c;)V
    .locals 0

    iput-object p1, p0, Lm18$c$a;->a:Lm18$c;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    new-instance p1, Ln18;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Ln18;-><init>(Lm18$c$a;Z)V

    invoke-static {}, Leb9;->f()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    new-instance p1, Ln18;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ln18;-><init>(Lm18$c$a;Z)V

    invoke-static {}, Leb9;->f()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
