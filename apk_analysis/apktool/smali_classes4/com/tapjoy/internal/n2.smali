.class public final Lcom/tapjoy/internal/n2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/tapjoy/internal/o2;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/o2;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/n2;->a:Lcom/tapjoy/internal/o2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/tapjoy/internal/n2;->a:Lcom/tapjoy/internal/o2;

    iget-object p0, p0, Lcom/tapjoy/internal/o2;->e:Lcom/tapjoy/internal/p2;

    iget-object p1, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-wide/16 p1, 0x3e8

    :try_start_0
    iput-wide p1, p0, Lcom/tapjoy/internal/p2;->g:J

    iget-object p1, p0, Lcom/tapjoy/internal/p2;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/tapjoy/internal/p2;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method
