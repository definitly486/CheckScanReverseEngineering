.class public final synthetic Lka6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc6;


# instance fields
.field public final synthetic a:Loa6;

.field public final synthetic b:Lta6;


# direct methods
.method public synthetic constructor <init>(Loa6;Lta6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lka6;->a:Loa6;

    iput-object p2, p0, Lka6;->b:Lta6;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lka6;->a:Loa6;

    iget-object p0, p0, Lka6;->b:Lta6;

    invoke-virtual {v0}, Loa6;->p()Lad6;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lad6;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    :try_start_0
    invoke-virtual {v0}, Loa6;->p()Lad6;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, v1, Lad6;->n:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v1, Lad6;->B:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    :goto_0
    sget-object v1, Lkx2;->b:Lkx2;

    :cond_1
    iget-object v0, v0, Loa6;->z:Lbe6;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Lbe6;->a(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lnb6;->v:Lic6;

    const-string v3, "Failed to notify surveys loaded: "

    const/16 v4, 0x2e

    invoke-static {v3, v0, v4, v1}, Lsg;->f(Ljava/lang/String;Ljava/lang/Throwable;CLic6;)V

    :cond_2
    :goto_1
    invoke-static {p0, v2}, Loa6;->w(Lta6;Z)V

    return-void

    :cond_3
    const/4 v0, 0x0

    invoke-static {p0, v0}, Loa6;->w(Lta6;Z)V

    return-void
.end method
