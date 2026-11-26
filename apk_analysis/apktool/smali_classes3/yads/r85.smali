.class public final Lyads/r85;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Lyads/s85;


# direct methods
.method public constructor <init>(Lyads/s85;)V
    .locals 0

    iput-object p1, p0, Lyads/r85;->c:Lyads/s85;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 1

    iget-object p0, p0, Lyads/r85;->c:Lyads/s85;

    iget-object v0, p0, Lyads/s85;->f:Lyads/r85;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lyads/s85;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, Lyads/r85;->c:Lyads/s85;

    iget-object v0, p0, Lyads/s85;->f:Lyads/r85;

    if-eqz v0, :cond_1

    iget v0, p0, Lyads/s85;->e:I

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lyads/s85;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lyads/r85;->c:Lyads/s85;

    iget-object v0, v0, Lyads/s85;->d:Landroid/os/Handler;

    new-instance v1, Lcs4;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcs4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lyads/r85;->c:Lyads/s85;

    iget-object v0, v0, Lyads/s85;->d:Landroid/os/Handler;

    new-instance v1, Lal;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lal;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAvailable(Landroid/net/Network;)V
    .locals 0

    invoke-virtual {p0}, Lyads/r85;->c()V

    return-void
.end method

.method public final onBlockedStatusChanged(Landroid/net/Network;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lyads/r85;->d()V

    :cond_0
    return-void
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    iget-boolean p2, p0, Lyads/r85;->a:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lyads/r85;->b:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lyads/r85;->d()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lyads/r85;->a:Z

    iput-boolean p1, p0, Lyads/r85;->b:Z

    invoke-virtual {p0}, Lyads/r85;->c()V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    invoke-virtual {p0}, Lyads/r85;->c()V

    return-void
.end method
