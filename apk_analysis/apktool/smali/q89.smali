.class public final synthetic Lq89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lr89;

.field public final synthetic c:Lhz;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lr89;Lhz;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq89;->b:Lr89;

    iput-object p2, p0, Lq89;->c:Lhz;

    iput p3, p0, Lq89;->d:I

    iput-object p4, p0, Lq89;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lq89;->c:Lhz;

    iget v1, p0, Lq89;->d:I

    iget-object v2, p0, Lq89;->e:Ljava/lang/Runnable;

    iget-object p0, p0, Lq89;->b:Lr89;

    iget-object v3, p0, Lr89;->f:Leh8;

    :try_start_0
    iget-object v4, p0, Lr89;->c:Lf13;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lef1;

    invoke-direct {v5, v4}, Lef1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v5}, Leh8;->a(Leh8$a;)Ljava/lang/Object;

    iget-object v4, p0, Lr89;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Lr89;->a(Lhz;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v4, Ln89;

    invoke-direct {v4, p0, v0, v1}, Ln89;-><init>(Lr89;Lhz;I)V

    invoke-interface {v3, v4}, Leh8;->a(Leh8$a;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :catch_0
    :try_start_1
    iget-object p0, p0, Lr89;->d:Lpk9;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v0, v1}, Lpk9;->a(Ls29;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    return-void

    :goto_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    throw p0
.end method
