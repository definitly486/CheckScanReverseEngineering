.class public abstract Lyads/w93;
.super Lyads/bp;
.source "SourceFile"

# interfaces
.implements Lyads/g4;


# instance fields
.field public final c:Lyads/h9;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;)V
    .locals 1

    new-instance v0, Lyads/h9;

    invoke-direct {v0}, Lyads/h9;-><init>()V

    invoke-direct {p0, p1, p2}, Lyads/bp;-><init>(Landroid/content/Context;Lyads/d9;)V

    iput-object v0, p0, Lyads/w93;->c:Lyads/h9;

    iget-object p1, v0, Lyads/h9;->a:Lyads/e55;

    sget-object p2, Lyads/h9;->b:[Lze4;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p1, Lyads/e55;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lyads/w93;->c:Lyads/h9;

    iget-object v0, v0, Lyads/h9;->a:Lyads/e55;

    sget-object v1, Lyads/h9;->b:[Lze4;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lyads/e55;->a:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
