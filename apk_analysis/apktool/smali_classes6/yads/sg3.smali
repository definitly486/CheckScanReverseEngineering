.class public final Lyads/sg3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Ljava/lang/ref/WeakReference;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Z

.field public final c:Lyads/rg3;


# direct methods
.method public constructor <init>(Lyads/vq0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lyads/rg3;

    invoke-direct {v0, p0}, Lyads/rg3;-><init>(Lyads/sg3;)V

    iput-object v0, p0, Lyads/sg3;->c:Lyads/rg3;

    iget-object p0, p1, Lyads/vq0;->E:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object p1, p1, Lyads/vq0;->v:Lyads/gp4;

    invoke-virtual {p1, v0}, Lyads/gp4;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
