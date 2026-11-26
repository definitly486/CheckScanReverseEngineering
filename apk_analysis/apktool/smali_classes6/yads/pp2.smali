.class public final Lyads/pp2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/np2;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/np2;

    invoke-direct {v0, p1}, Lyads/np2;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lyads/pp2;->a:Lyads/np2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/r75;Lyads/z85;Lyads/dw;)V
    .locals 2

    iget-object v0, p1, Lyads/r75;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p1, Lyads/r75;->l:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lyads/r75;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lyads/pp2;->a:Lyads/np2;

    new-instance v0, Lyads/op2;

    invoke-direct {v0, p1, p2, p3}, Lyads/op2;-><init>(Lyads/r75;Lyads/z85;Lyads/dw;)V

    iget-object p0, p0, Lyads/np2;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
